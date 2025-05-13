import { BundleCullingConfig } from "../BundleCullingConfig";

export function initShader(config: BundleCullingConfig) {

    let uniformMap = {
        "u_color": Laya.ShaderDataType.Color,
    };

    let defaultValue = {
        "u_color": Laya.Color.WHITE,
    }

    let vsCode = `
    #include "Camera.glsl";

    #ifdef STORAGEBUFFER
        layout(set = 2, binding = 0) readonly buffer Instances {
            mat4 instances[];
        };

        struct CulledInstances {
            uint indirectIndex;
            uint instances[${config.max_instance_per_drawable}];  // 动态数组
        };
        layout(set = 2, binding = 1) readonly buffer Culled {
            CulledInstances culled;
        };
    #endif

    varying vec3 v_Normal;

    void main()
    {
        vec4 position = a_Position;
        vec3 normal = a_Normal.xyz;
        vec2 uv = a_Texcoord0;
        uint Instanceindex = gl_InstanceIndex;
        uint modelIndex = culled.instances[Instanceindex];
        mat4 worldmat = instances[modelIndex];

        vec3 normalWS = normalize((worldmat * vec4(a_Position.xyz, 0.0)).xyz);
        v_Normal = normalWS;
        vec3 positionWS = (worldmat*position).xyz;
        gl_Position=getPositionCS(positionWS);
        gl_Position=remapPositionZ(gl_Position);
    }
    `;

    let fsCode = `
    varying vec3 v_Normal;
    
    void main()
    {
        vec4 color = u_color;
        vec3 lightDir = vec3(0.25, 0.5, 1.0);
        vec3 lightColor = vec3(1, 1, 1);
        vec3 ambientColor = vec3(0.03, 0.03, 0.03);

        vec3 L = normalize(lightDir);
        float NDotL = max(dot(v_Normal, L), 0.0);
        vec3 surfaceColor = (u_color.rgb * ambientColor) + (u_color.rgb * NDotL);

        gl_FragColor = vec4(surfaceColor,1.0);
    }
    `;

    let shader = Laya.Shader3D.add("colorShader", true, false);
    shader.shaderType = Laya.ShaderFeatureType.D3;
    let subShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap, uniformMap, defaultValue);
    shader.addSubShader(subShader);
    let forwardPass = subShader.addShaderPass(vsCode, fsCode);
}

export function createComputeShader(config: BundleCullingConfig) {
    //创建ComputeShader
    let code = `struct CameraUniforms {
    frustum: array<vec4f, 6>
}
@group(0) @binding(0) var<uniform> camera:CameraUniforms;

@group(1) @binding(0) var<storage, read> instances: array<mat4x4f>;
struct CulledInstances {
    indirectIndex: u32,
    instances: array<u32>,
}

@group(1) @binding(1) var<storage, read_write> culled: CulledInstances;

struct IndirectArgs {
    drawCount: u32,
    instanceCount: atomic<u32>,
    reserved0: u32,
    reserved1: u32,
    reserved2: u32,
}
@group(1) @binding(2) var<storage, read_write> indirectArgs: array<IndirectArgs>;


fn isVisible(instanceIndex: u32) -> bool {
   
    let model = instances[instanceIndex];
    let pos = model * vec4(0, 0, 0, 1);
    let radius = 1.0; // Just fudging it. None of the meshes should be bigger than this.

    for (var i = 0; i < 6; i++) {
    if (dot(camera.frustum[i], pos) < -radius) {
        return false;
    }
    }
    return true;
}

@compute @workgroup_size(${config.culling_workgroup_size})
fn computeMain(@builtin(global_invocation_id) gloablId: vec3u) {
    let instanceIndex = gloablId.x;
    if (instanceIndex >= ${config.max_instance_per_drawable}) {
    return;
    }

    if (!isVisible(instanceIndex)) { return; }

    let culledIndex = atomicAdd(&indirectArgs[culled.indirectIndex].instanceCount, 1u);
    culled.instances[culledIndex] = instanceIndex;
}
`;

    let uniformCommandMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("cameraCull");
    uniformCommandMap.addShaderUniformArray(Laya.Shader3D.propertyNameToID("frustum"), "frustum", Laya.ShaderDataType.Vector4, 6);

    let uniformCommandMap2 = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("CullDataGroup");
    uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("instances"), "instances", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
    uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("culled"), "culled", Laya.ShaderDataType.DeviceBuffer);
    uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("indirectArgs"), "indirectArgs", Laya.ShaderDataType.DeviceBuffer);

    return Laya.ComputeShader.createComputeShader("cullRenderBundle", code, [uniformCommandMap, uniformCommandMap2]);
}

export function createCullingSpriteCommandMap() {
    const spriteParms = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("cullSprite");
    spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("instances"), "instances", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
    spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("culled"), "culled", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
}
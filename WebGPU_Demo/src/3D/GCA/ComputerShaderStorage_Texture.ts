const { regClass, property } = Laya;

const computeCode = `
@group(0) @binding(0) var output_texture: texture_storage_2d<rgba8unorm, write>;
@group(0) @binding(1) var input: texture_2d<f32>;

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_id: vec3<u32>) {
    let dimensions = textureDimensions(output_texture);
    
    if (global_id.x >= dimensions.x || global_id.y >= dimensions.y) {
        return;
    }
    
    let uv = vec2<f32>(
        f32(global_id.x) / f32(dimensions.x),
        f32(global_id.y) / f32(dimensions.y)
    );

    let sampledColor = textureLoad(input, vec2<i32>(global_id.xy), 0);

    let color = vec4<f32>(sampledColor.r, sampledColor.g, 1.0, 1.0);
    
    textureStore(output_texture, vec2<i32>(global_id.xy), color);
}
`;

@regClass()
export class ComputerShaderStorage_Texture extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    @property(Laya.Scene3D)
    scene3D: Laya.Scene3D;

    @property(Laya.Sprite3D)
    plane: Laya.Sprite3D;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {

        let render: Laya.MeshRenderer = this.plane.getComponent(Laya.MeshRenderer);
        let material = render.sharedMaterial;

        material.setTexture("u_AlbedoTexture", Laya.Texture2D.grayTexture);

        {
            let uniformMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("RWTextureTest");
            uniformMap.addShaderUniform(Laya.Shader3D.propertyNameToID("output_texture"), "output_texture", Laya.ShaderDataType.StorageTexture2D);
            uniformMap.addShaderUniform(Laya.Shader3D.propertyNameToID("input"), "input", Laya.ShaderDataType.Texture2D);

            let storage = true;
            let storageTex = new Laya.RenderTexture(512, 512, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.None, false, 1, false, false, storage);

            let readTex = new Laya.Texture2D(512, 512, Laya.TextureFormat.R8G8B8A8, false, false, false, false);
            {
                let pixels = new Uint8Array(512 * 512 * 4);
                // fill uv
                for (let i = 0; i < 512 * 512; i++) {
                    let u = (i % 512) / 512;
                    let v = Math.floor(i / 512) / 512;
                    pixels[i * 4] = Math.floor(u * 255);
                    pixels[i * 4 + 1] = Math.floor(v * 255);
                    pixels[i * 4 + 2] = 0; // blue channel
                    pixels[i * 4 + 3] = 255; // alpha channel
                }
                readTex.setPixelsData(pixels, false, false);
            }

            material.setTexture("u_AlbedoTexture", storageTex);


            let computeShader = Laya.ComputeShader.createComputeShader("RWTextureTest", computeCode, [uniformMap]);

            let shaderDefine = Laya.LayaGL.unitRenderModuleDataFactory.createDefineDatas();

            let shaderData = Laya.LayaGL.renderDeviceFactory.createShaderData();

            {
                shaderData.setTexture(Laya.Shader3D.propertyNameToID("output_texture"), storageTex);

                shaderData.setTexture(Laya.Shader3D.propertyNameToID("input"), readTex);
            }

            let command = new Laya.ComputeCommandBuffer();
            let workGroupSize = new Laya.Vector3(8, 8, 1);
            let textureWidth = storageTex.width;
            let textureHeight = storageTex.height;

            let dispatchParams = new Laya.Vector3(Math.ceil(textureWidth / workGroupSize.x), Math.ceil(textureHeight / workGroupSize.y), 1);

            command.addDispatchCommand(computeShader, "main", shaderDefine, [shaderData], dispatchParams);

            command.executeCMDs();

        }

    }
}
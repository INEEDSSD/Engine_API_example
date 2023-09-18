/**
 * version 3.0.0
 **/
Shader3D Start
{
    type: Shader3D,
    name: glTFPBR,
    enableInstancing: true,
    supportReflectionProbe: true,
    uniformMap:{
        u_AlphaTestValue: { type: Float, default: 0.5 },
        u_BaseColorFactor: { type: Vector4, default: [1, 1, 1, 1] },
        u_BaseColorTexture: { type: Texture2D, options: { define: "BASECOLORMAP" } },
        // u_BaseColorMapTransform: { type: Matrix3x3, default: { elements: [1, 0, 0, 0, 1, 0, 0, 0, 1] }, hidden: "!data.BASECOLORMAP_TRANSFORM" },
        // u_Specular: { type: Float, default: 0.5 },
        u_MetallicFactor: { type: Float, default: 1.0 },
        u_RoughnessFactor: { type: Float, default: 1.0 },
        u_MetallicRoughnessTexture: { type: Texture2D,  options: { define: "METALLICROUGHNESSMAP" } },
        // u_MetallicRoughnessMapTransform: { type: Matrix3x3, default: { elements: [1, 0, 0, 0, 1, 0, 0, 0, 1] }, hidden: "!data.METALLICROUGHNESSMAP_TRANSFORM" },
        u_NormalTexture: { type: Texture2D,  options: { define: "NORMALMAP" } },
        // u_NormalMapTransform: { type: Matrix3x3, default: { elements: [1, 0, 0, 0, 1, 0, 0, 0, 1] }, hidden: "!data.NORMALMAP_TRANSFORM" },
        u_NormalScale: { type: Float, default: 1.0, hidden: "!data.u_NormalTexture" },
        u_OcclusionTexture: { type: Texture2D,  options: { define: "OCCLUSIONMAP" } },
        // u_OcclusionMapTransform: { type: Matrix3x3, default: { elements: [1, 0, 0, 0, 1, 0, 0, 0, 1] }, hidden: "!data.OCCLUSIONMAP_TRANSFORM" },
        u_OcclusionStrength: { type: Float, default: 1.0 },

        // Emission
        u_EmissionFactor: { type: Vector3, default: [0, 0, 0], hidden: "!data.EMISSION" },
        u_EmissionTexture: { type: Texture2D,  options: { define: "EMISSIONMAP" }, hidden: "!data.EMISSION" },
        // u_EmissionMapTransform: { type: Matrix3x3, default: { elements: [1, 0, 0, 0, 1, 0, 0, 0, 1] }, hidden: "!data.EMISSIONMAP_TRANSFORM" },
        u_EmissionStrength: { type: Float, default: 1.0, hidden: "!data.EMISSION" },

        // ClearCoat
        u_ClearCoatFactor: { type: Float, default: 0.0, hidden: "!data.CLEARCOAT" },
        u_ClearCoatTexture: { type: Texture2D, options: { define: "CLEARCOATMAP" }, hidden: "!data.CLEARCOAT" },
        u_ClearCoatRoughness: { type: Float, default: 0.0, hidden: "!data.CLEARCOAT" },
        u_ClearCoatRoughnessTexture: { type: Texture2D, options: { define: "CLEARCOAT_ROUGHNESSMAP" }, hidden: "!data.CLEARCOAT" },
        u_ClearCoatNormalTexture: { type: Texture2D, options: { define: "CLEARCOAT_NORMAL" }, hidden: "!data.CLEARCOAT" },
        u_ClearCoatNormalScale: { type: Float, default: 1.0, hidden: "!data.CLEARCOAT" },

        // Anisotropy
        u_AnisotropyStrength: { type: Float, default: 0.0, hidden: "!data.ANISOTROPIC" },
        u_AnisotropyRotation: { type: Float, default: 0.0, hidden: "!data.ANISOTROPIC" },
        u_AnisotropyTexture: { type: Texture2D, options: { define: "ANISOTROPYMAP" }, hidden: "!data.ANISOTROPIC" },
    },
    defines: {
        ENABLEVERTEXCOLOR: { type: bool, default: false, position: "before u_EmissionFactor" },
        // BASECOLORMAP_TRANSFORM: {type: bool, default: false, position: "after u_BaseColorTexture" },
        // METALLICROUGHNESSMAP_TRANSFORM: { type: bool, default: false, position: "after u_MetallicRoughnessTexture" },
        // NORMALMAP_TRANSFORM: { type: bool, default: false, position: "after u_NormalTexture" },
        // OCCLUSIONMAP_TRANSFORM: { type: bool, default: false, position: "after u_OcclusionTexture" },

        // Emission
        EMISSION: { type: bool, default: false, position: "before u_EmissionFactor" },
        // EMISSIONMAP_TRANSFORM: { type: bool, default: false, position: "after u_EmissionTexture", hidden: "!data.EMISSION" },

        // ClearCoat
        CLEARCOAT: { type: bool, default: false, position: "before u_ClearCoatFactor" },
        ANISOTROPIC: { type: bool, default: false, position: "before u_AnisotropyStrength" },

    }
    shaderPass:[
        {
            pipeline: Forward,
            VS: forwardVS,
            FS: forwardFS
        },
        {
            pipeline: ShadowCaster,
            VS: dephtVS,
            FS: depthFS
        },
        {
            pipeline: DepthNormal
            VS: dephtNormalVS,
            FS: dephtNormalFS
        },
    ]
}
Shader3D End

GLSL Start
#defineGLSL forwardVS

    #define SHADER_NAME glTFPBRVS

    #include "Math.glsl";

    #include "Scene.glsl";
    #include "SceneFogInput.glsl";

    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";

    #include "VertexCommon.glsl";

    #include "PBRVertex.glsl";

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        PixelParams pixel;
        initPixelParams(pixel, vertex);

        sharePixelParams(pixel);

        gl_Position = getPositionCS(pixel.positionWS);

        gl_Position = remapPositionZ(gl_Position);

    #ifdef FOG
        FogHandle(gl_Position.z);
    #endif
    }
#endGLSL

#defineGLSL forwardFS

    #define SHADER_NAME glTFPBRFS

    #include "Color.glsl";

    #include "Scene.glsl";
    #include "SceneFog.glsl";

    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";

    #include "PBRMetallicFrag.glsl";

    void initSurfaceInputs(inout SurfaceInputs inputs, const in PixelParams pixel)
    {
        vec2 uv = vec2(0.0);
    #ifdef UV
        uv = pixel.uv0;
    #endif //

        // render state
        inputs.alphaTest = u_AlphaTestValue;

        // surface
        inputs.diffuseColor = u_BaseColorFactor.xyz;
        inputs.alpha = u_BaseColorFactor.w;

    #ifdef COLOR
        #ifdef ENABLEVERTEXCOLOR
        inputs.diffuseColor *= pixel.vertexColor.xyz;
        inputs.alpha *= pixel.vertexColor.a;
        #endif // ENABLEVERTEXCOLOR
    #endif // COLOR

    #ifdef BASECOLORMAP
        vec4 baseColorSampler = texture2D(u_BaseColorTexture, uv);
    #ifdef Gamma_u_BaseColorTexture
        baseColorSampler = gammaToLinear(baseColorSampler);
    #endif // u_BaseColorTexture_Gamma
        inputs.diffuseColor *= baseColorSampler.rgb;
        inputs.alpha *= baseColorSampler.a;
    #endif // BASECOLORMAP

        inputs.metallic = u_MetallicFactor;
        float roughness = u_RoughnessFactor;
    #ifdef METALLICROUGHNESSMAP
        vec4 metallicRoughnessSampler = texture2D(u_MetallicRoughnessTexture, uv);
        inputs.metallic *= metallicRoughnessSampler.b;
        roughness *= metallicRoughnessSampler.g;
    #endif // METALLICROUGHNESSMAP
        inputs.smoothness = 1.0 - roughness;

        float occlusion = 1.0;
    #ifdef OCCLUSIONMAP
        vec4 occlusionSampler = texture2D(u_OcclusionTexture, uv);
        #ifdef Gamma_u_OcclusionTexture
        occlusionSampler = gammaToLinear(occlusionSampler);
        #endif // Gamma_u_OcclusionTexture
        occlusion = occlusionSampler.r;
    #endif // OCCLUSIONMAP
        inputs.occlusion = (1.0 - u_OcclusionStrength) + occlusion * u_OcclusionStrength;

    #ifdef EMISSION
        inputs.emissionColor = u_EmissionFactor * u_EmissionStrength;
    #ifdef EMISSIONMAP
        vec4 emissionSampler = texture2D(u_EmissionTexture, uv);
        #ifdef Gamma_u_EmissionTexture
        emissionSampler = gammaToLinear(emissionSampler);
        #endif // Gamma_u_EmissionTexture
        inputs.emissionColor *= emissionSampler.rgb;
    #endif // EMISSIONMAP
    #endif // EMISSION

        inputs.normalTS = vec3(0.0, 0.0, 1.0);
    #ifdef NORMALMAP
        vec3 normalSampler = texture2D(u_NormalTexture, uv).xyz;
        normalSampler = normalize(normalSampler * 2.0 - 1.0);
        normalSampler.y *= -1.0;
        inputs.normalTS = normalScale(normalSampler, u_NormalScale);
    #endif // NORMALMAP

    #ifdef CLEARCOAT
        inputs.clearCoat = u_ClearCoatFactor;
        inputs.clearCoatRoughness = u_ClearCoatRoughness;

        #ifdef CLEARCOATMAP
        vec4 clearCoatSampler = texture2D(u_ClearCoatTexture, uv);
        inputs.clearCoat *= clearCoatSampler.r;
        #endif // CLEARCOATMAP

        #ifdef CLEARCOAT_ROUGHNESSMAP
        vec4 clearcoatSampleRoughness = texture2D(u_ClearCoatRoughnessTexture, uv);
        inputs.clearCoatRoughness *= clearcoatSampleRoughness.g;
        #endif // CLEARCOAT_ROUGHNESSMAP

        #ifdef CLEARCOAT_NORMAL
        vec3 clearCoatNormalSampler = texture2D(u_ClearCoatNormalTexture, uv).rgb;
        clearCoatNormalSampler = normalize(clearCoatNormalSampler * 2.0 - 1.0);
        clearCoatNormalSampler.y *= -1.0;
        // todo scale
        inputs.clearCoatNormalTS = normalScale(clearCoatNormalSampler, u_ClearCoatNormalScale);
        #endif // CLEARCOAT_NORMAL
    #endif // CLEARCOAT

    #ifdef ANISOTROPIC
        inputs.anisotropy = u_AnisotropyStrength;
        vec2 direction = vec2(1.0, 0.0);

        #ifdef ANISOTROPYMAP
        vec3 anisotropySampler = texture2D(u_AnisotropyTexture, uv).rgb;

        inputs.anisotropy *= anisotropySampler.b;
        direction = anisotropySampler.xy * 2.0 - 1.0;
        #endif // ANISOTROPYMAP

        vec2 anisotropyRotation = vec2(cos(u_AnisotropyRotation), sin(u_AnisotropyRotation));
        mat2 rotationMatrix = mat2(anisotropyRotation.x, anisotropyRotation.y, -anisotropyRotation.y, anisotropyRotation.x);
        inputs.anisotropyDirection = rotationMatrix * direction;

    #endif // ANISOTROPIC
    }

    void main()
    {
        PixelParams pixel;
        getPixelParams(pixel);

        SurfaceInputs inputs;
        initSurfaceInputs(inputs, pixel);

        vec4 surfaceColor = PBR_Metallic_Flow(inputs, pixel);

    #ifdef FOG
        surfaceColor.rgb = sceneLitFog(surfaceColor.rgb);
    #endif // FOG

        gl_FragColor = surfaceColor;

        gl_FragColor = outputTransform(gl_FragColor);
    }
#endGLSL

#defineGLSL dephtVS

    #define SHADER_NAME glTFPBRDepthVS

    #include "DepthVertex.glsl";

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        mat4 worldMat = getWorldMatrix();
        vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));
        vec3 positionWS = pos.xyz / pos.w;

        mat4 normalMat = transpose(inverse(worldMat));
        vec3 normalWS = normalize((normalMat * vec4(vertex.normalOS, 0.0)).xyz);

        vec4 positionCS = DepthPositionCS(positionWS, normalWS);
        gl_Position = remapPositionZ(positionCS);
    }

#endGLSL

#defineGLSL depthFS

    #define SHADER_NAME glTFPBRDepthFS

    #include "DepthFrag.glsl";

    void main()
    {
        gl_FragColor = getDepthColor();
    }

#endGLSL

#defineGLSL dephtNormalVS

    #define SHADER_NAME glTFPBRDepthNormalVS

    #include "Math.glsl";

    #include "Camera.glsl";

    #include "Sprite3DVertex.glsl";

    #include "VertexCommon.glsl";

    #include "PBRVertex.glsl";

    varying vec4 v_PositionCS;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        PixelParams pixel;
        initPixelParams(pixel, vertex);

        sharePixelParams(pixel);

        vec4 positionCS = getPositionCS(pixel.positionWS);
        v_PositionCS = positionCS;
        gl_Position = positionCS;
        gl_Position = remapPositionZ(gl_Position);
    }

#endGLSL

#defineGLSL dephtNormalFS

    #define SHADER_NAME glTFPBRDepthNormalFS

    #include "Color.glsl";

    #include "Scene.glsl";
    #include "SceneFog.glsl";

    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";

    #include "ShadingFrag.glsl";

    #include "DepthNormalFrag.glsl";

    varying vec4 v_PositionCS;

    void main()
    {
        PixelParams pixel;
        getPixelParams(pixel);

        vec3 normalWS = pixel.normalWS;

    #ifdef NORMALMAP
        #ifdef UV

        vec2 uv = pixel.uv0;

        vec3 normalSampler = texture2D(u_NormalTexture, uv).xyz;
        normalSampler = normalize(normalSampler * 2.0 - 1.0);
        normalSampler.y *= -1.0;
        vec3 normalTS = normalScale(normalSampler, u_NormalScale);
        normalWS = normalize(pixel.TBN * normalTS);

        #endif UV
    #endif // NORMALMAP

        vec4 positionCS = v_PositionCS;

        vec4 dephtNormal = encodeDepthNormal(positionCS, normalWS);

        gl_FragColor = dephtNormal;
    }

#endGLSL

GLSL End



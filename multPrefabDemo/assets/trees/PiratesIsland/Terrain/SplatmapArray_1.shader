Shader3D Start
{
    type:Shader3D
    name:SplatmapArray
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        // u_SplatMap_0: { type: Texture2D, default:"black" },
        // u_SplatMap_1: { type: Texture2D, default:"black" },
        // u_SplatMap_2: { type: Texture2D, default:"black" },
        // u_SplatMap_3: { type: Texture2D, default:"black" }
        
        u_Layer_0_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_0_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_0_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_0_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_0_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_0_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_0_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_1_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_1_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_1_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_1_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_1_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_1_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_1_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        
        u_Layer_2_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_2_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_2_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_2_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_2_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_2_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_2_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_3_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_3_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_3_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_3_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_3_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_3_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_3_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_4_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_4_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_4_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_4_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_4_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_4_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_4_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_5_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_5_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_5_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_5_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_5_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_5_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_5_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_6_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_6_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_6_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_6_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_6_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_6_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_6_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_7_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_7_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_7_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_7_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_7_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_7_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_7_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_8_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_8_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_8_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_8_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_8_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_8_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_8_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_9_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_9_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_9_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_9_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_9_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_9_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_9_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_10_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_10_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_10_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_10_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_10_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_10_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_10_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_11_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_11_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_11_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_11_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_11_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_11_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_11_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_12_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_12_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_12_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_12_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_12_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_12_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_12_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_13_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_13_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_13_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_13_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_13_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_13_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_13_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_14_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_14_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_14_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },
        u_Layer_14_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_14_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_14_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_14_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        
        u_Layer_15_ColorTint: {caption:"ColorTint", type: Color, default: [1, 1, 1, 1] },
        // u_Layer_15_Diffuse: {caption:"Diffuse", type: Texture2D, default:"white" },
        // u_Layer_15_NormalMap: {caption:"Normal", type: Texture2D, default:"normal" },   
        u_Layer_15_NormalScale: {caption:"Strength", type: Float, default: 1.0 },
        u_Layer_15_SmoothnessFromDiffuseAlpha: {caption:"SmoothnessFromDiffuseAlpha", type: Float, default: 0.0 },
        u_Layer_15_MetallicOcclusionSmoothness: {caption:"MetallicOcclusionSmoothness", type: Vector4, default: [0, 1, 0, 0] },
        u_Layer_15_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        //u_SplatArr:{type:Texture2DArray},
        //u_DiffuseArr:{type:Texture2DArray},
        //u_NormalArr:{type:Texture2DArray},


    },
    defines: {
        LAYER_COUNT_3: { type: bool, default: false, inspector:null },
        LAYER_COUNT_4: { type: bool, default: false, inspector:null },
        LAYER_COUNT_5: { type: bool, default: false, inspector:null },
        LAYER_COUNT_6: { type: bool, default: false, inspector:null },
        LAYER_COUNT_7: { type: bool, default: false, inspector:null },
        LAYER_COUNT_8: { type: bool, default: false, inspector:null },
        LAYER_COUNT_9: { type: bool, default: false, inspector:null },
        LAYER_COUNT_10: { type: bool, default: false, inspector:null },
        LAYER_COUNT_11: { type: bool, default: false, inspector:null },
        LAYER_COUNT_12: { type: bool, default: false, inspector:null },
        LAYER_COUNT_13: { type: bool, default: false, inspector:null },
        LAYER_COUNT_14: { type: bool, default: false, inspector:null },
        LAYER_COUNT_15: { type: bool, default: false, inspector:null },
        LAYER_COUNT_16: { type: bool, default: false, inspector:null },

        LAYER_0_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_1_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_2_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_3_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_4_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_5_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_6_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_7_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_8_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_9_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_10_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_11_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_12_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_13_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_14_NORMAL: {caption:"Use Normal", type: bool, default: false },
        LAYER_15_NORMAL: {caption:"Use Normal", type: bool, default: false },
    },
    styles:{
        Layer0:{inspector: "Group",options: {members: [LAYER_0_NORMAL,"u_Layer_0_ColorTint~u_Layer_0_TilingOffset"]}},
        Layer1:{inspector: "Group",options: {members: [LAYER_1_NORMAL,"u_Layer_1_ColorTint~u_Layer_1_TilingOffset"]}},
        Layer2:{inspector: "Group",options: {members: [LAYER_2_NORMAL,"u_Layer_2_ColorTint~u_Layer_2_TilingOffset"]},hidden:"!(data.LAYER_COUNT_3 || data.LAYER_COUNT_4 || data.LAYER_COUNT_5 || data.LAYER_COUNT_6 || data.LAYER_COUNT_7 || data.LAYER_COUNT_8 || data.LAYER_COUNT_9 || data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer3:{inspector: "Group",options: {members: [LAYER_3_NORMAL,"u_Layer_3_ColorTint~u_Layer_3_TilingOffset"]},hidden:"!(data.LAYER_COUNT_4 || data.LAYER_COUNT_5 || data.LAYER_COUNT_6 || data.LAYER_COUNT_7 || data.LAYER_COUNT_8 || data.LAYER_COUNT_9 || data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer4:{inspector: "Group",options: {members: [LAYER_4_NORMAL,"u_Layer_4_ColorTint~u_Layer_4_TilingOffset"]},hidden:"!(data.LAYER_COUNT_5 || data.LAYER_COUNT_6 || data.LAYER_COUNT_7 || data.LAYER_COUNT_8 || data.LAYER_COUNT_9 || data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer5:{inspector: "Group",options: {members: [LAYER_5_NORMAL,"u_Layer_5_ColorTint~u_Layer_5_TilingOffset"]},hidden:"!(data.LAYER_COUNT_6 || data.LAYER_COUNT_7 || data.LAYER_COUNT_8 || data.LAYER_COUNT_9 || data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer6:{inspector: "Group",options: {members: [LAYER_6_NORMAL,"u_Layer_6_ColorTint~u_Layer_6_TilingOffset"]},hidden:"!(data.LAYER_COUNT_7 || data.LAYER_COUNT_8 || data.LAYER_COUNT_9 || data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer7:{inspector: "Group",options: {members: [LAYER_7_NORMAL,"u_Layer_7_ColorTint~u_Layer_7_TilingOffset"]},hidden:"!(data.LAYER_COUNT_8 || data.LAYER_COUNT_9 || data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer8:{inspector: "Group",options: {members: [LAYER_8_NORMAL,"u_Layer_8_ColorTint~u_Layer_8_TilingOffset"]},hidden:"!(data.LAYER_COUNT_9 || data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer9:{inspector: "Group",options: {members: [LAYER_9_NORMAL,"u_Layer_9_ColorTint~u_Layer_9_TilingOffset"]},hidden:"!(data.LAYER_COUNT_10 || data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer10:{inspector: "Group",options: {members: [LAYER_10_NORMAL,"u_Layer_10_ColorTint~u_Layer_10_TilingOffset"]},hidden:"!(data.LAYER_COUNT_11 || data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer11:{inspector: "Group",options: {members: [LAYER_11_NORMAL,"u_Layer_11_ColorTint~u_Layer_11_TilingOffset"]},hidden:"!(data.LAYER_COUNT_12 || data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer12:{inspector: "Group",options: {members: [LAYER_12_NORMAL,"u_Layer_12_ColorTint~u_Layer_12_TilingOffset"]},hidden:"!(data.LAYER_COUNT_13 || data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer13:{inspector: "Group",options: {members: [LAYER_13_NORMAL,"u_Layer_13_ColorTint~u_Layer_13_TilingOffset"]},hidden:"!(data.LAYER_COUNT_14 || data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer14:{inspector: "Group",options: {members: [LAYER_14_NORMAL,"u_Layer_14_ColorTint~u_Layer_14_TilingOffset"]},hidden:"!(data.LAYER_COUNT_15 || data.LAYER_COUNT_16)"},
        Layer15:{inspector: "Group",options: {members: [LAYER_15_NORMAL,"u_Layer_15_ColorTint~u_Layer_15_TilingOffset"]},hidden:"!data.LAYER_COUNT_16"},
        
    }
    shaderPass:[
        {
            pipeline:Forward,
            VS:LitVS,
            FS:LitFS
        },
        {
            pipeline:ShadowCaster,
            VS:shadowVS,
            FS:shadowPS
        },
        {
            pipeline:DepthNormal,
            VS:depthNormalVS,
            FS:depthNormalPS
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL LitVS
    #define SHADER_NAME SplatmapArray

    #include "Math.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";
    #include "../Standard/glsl/StandardVertex.glsl";

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        PixelParams pixel;
        initPixelParams(pixel, vertex);

        initSH(pixel.normalWS);

        gl_Position = getPositionCS(pixel.positionWS);
        gl_Position = remapPositionZ(gl_Position);

        #ifdef FOG
            TRANSFER_FOG(gl_Position.z);
        #endif // FOG 
    }
#endGLSL

#defineGLSL LitFS
    #define SHADER_NAME SplatmapArray

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingCommon.glsl";
    #include "../Standard/glsl/StandardFrag.glsl";
    #include "./Defines.glsl";

    uniform sampler2DArray u_SplatArr;
    uniform sampler2DArray u_DiffuseArr;
    uniform sampler2DArray u_NormalArr;
    
    vec3 TerrainToMeshNormalStrength(vec3 In, float Strength)
    {
        return vec3(In.rg * Strength, mix(1.0, In.b, saturate(Strength)));
    }

    vec4 SAMPLE_TEXTURE2DARRAY(vec4 color)
    {
        #ifndef COLORSPACE_GAMMA
            color = gammaToLinear(color);
        #endif
        return color;
    }

    vec4 METALLIC_OCCLUSION_SMOOTHNESS(vec4 mos,float alpha,float t,float splat)
    {
        #ifdef COLORSPACE_GAMMA
            return vec4(mos.r, mos.g, 0.0, mix(mos.a, alpha, t)) * splat;
        #else
            return vec4(GammaToLinearSpaceExact(mos.r), mos.g, 0.0, mix(mos.a, alpha, t)) * splat;
        #endif
        
    }

    vec3 UNPACK_NORMAL_MAP(vec2 uv,int index,float scale,float splat)
    {
        return TerrainToMeshNormalStrength(UnpackNormalmapRGorAG2(SAMPLE_TEXTURE2DARRAY(texture2D(u_NormalArr,vec3(uv,float(index))))),scale) * splat;
    }

    void main()
    {
        SurfaceOutputStandard o = createSurfaceOutputStandard();

        vec4 splatmap0 = texture2D(u_SplatArr,vec3(v_Texcoord0,0));
        #if defined(NEED_SPLAT_MAP_1)
            vec4 splatmap1 = texture2D(u_SplatArr, vec3(v_Texcoord0,1));
        #endif

        #if defined(NEED_SPLAT_MAP_2)
            vec4 splatmap2 = texture2D(u_SplatArr, vec3(v_Texcoord0,2));
        #endif

        #if defined(NEED_SPLAT_MAP_3)
            vec4 splatmap3 = texture2D(u_SplatArr, vec3(v_Texcoord0,3));
        #endif

        vec4 paintColorSum = vec4(0.0);
        vec3 test = vec3(0.0);

        vec2 uv0 = transformUV(v_Texcoord0,u_Layer_0_TilingOffset);
        vec2 uv1 = transformUV(v_Texcoord0,u_Layer_1_TilingOffset);

        vec4 paintColor0 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv0,0)));
        vec4 paintColor1 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv1,1)));
        paintColorSum += paintColor0 * u_Layer_0_ColorTint * splatmap0.r;  
        test = vec3(paintColor0 * u_Layer_0_ColorTint * splatmap0.r);
        paintColorSum += paintColor1 * u_Layer_1_ColorTint * splatmap0.g;
        
        #if defined(NEED_PAINT_MAP_2)
            vec2 uv2 = transformUV(v_Texcoord0,u_Layer_2_TilingOffset);
            vec4 paintColor2 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv2,2)));
            paintColorSum += paintColor2 * u_Layer_2_ColorTint * splatmap0.b;
        #endif

        #if defined(NEED_PAINT_MAP_3)
            vec2 uv3 = transformUV(v_Texcoord0,u_Layer_3_TilingOffset);
            vec4 paintColor3 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv3,3)));
            paintColorSum += paintColor3 * u_Layer_3_ColorTint * splatmap0.a;
        #endif

        #if defined(NEED_SPLAT_MAP_1)
            #if defined(NEED_PAINT_MAP_4)
                vec2 uv4 = transformUV(v_Texcoord0,u_Layer_4_TilingOffset);
                vec4 paintColor4 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv4,4)));
                paintColorSum += paintColor4 * u_Layer_4_ColorTint * splatmap1.r;
            #endif

            #if defined(NEED_PAINT_MAP_5)
                vec2 uv5 = transformUV(v_Texcoord0,u_Layer_5_TilingOffset);
                vec4 paintColor5 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv5,5)));
                paintColorSum += paintColor5 * u_Layer_5_ColorTint * splatmap1.g;
            #endif

            #if defined(NEED_PAINT_MAP_6)
                vec2 uv6 = transformUV(v_Texcoord0,u_Layer_6_TilingOffset);
                vec4 paintColor6 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv6,6)));
                paintColorSum += paintColor6 * u_Layer_6_ColorTint * splatmap1.b;
            #endif

            #if defined(NEED_PAINT_MAP_7)
                vec2 uv7 = transformUV(v_Texcoord0,u_Layer_7_TilingOffset);
                vec4 paintColor7 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv7,7)));
                paintColorSum += paintColor7 * u_Layer_7_ColorTint * splatmap1.a;
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_2)
            #if defined(NEED_PAINT_MAP_8)
                vec2 uv8 = transformUV(v_Texcoord0,u_Layer_8_TilingOffset);
                vec4 paintColor8 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv8,8)));
                paintColorSum += paintColor8 * u_Layer_8_ColorTint * splatmap2.r;
            #endif

            #if defined(NEED_PAINT_MAP_9)
                vec2 uv9 = transformUV(v_Texcoord0,u_Layer_9_TilingOffset);
                vec4 paintColor9 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv9,9)));
                paintColorSum += paintColor9 * u_Layer_9_ColorTint * splatmap2.g;
            #endif

            #if defined(NEED_PAINT_MAP_10)
                vec2 uv10 = transformUV(v_Texcoord0,u_Layer_10_TilingOffset);
                vec4 paintColor10 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv10,10)));
                paintColorSum += paintColor10 * u_Layer_10_ColorTint * splatmap2.b;
            #endif

            #if defined(NEED_PAINT_MAP_11)
                vec2 uv11 = transformUV(v_Texcoord0,u_Layer_11_TilingOffset);
                vec4 paintColor11 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv11,11)));
                paintColorSum += paintColor11 * u_Layer_11_ColorTint * splatmap2.a;
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_3)
            #if defined(NEED_PAINT_MAP_12)
                vec2 uv12 = transformUV(v_Texcoord0,u_Layer_12_TilingOffset);
                vec4 paintColor12 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv12,12)));
                paintColorSum += paintColor12 * u_Layer_12_ColorTint * splatmap3.r;
            #endif

            #if defined(NEED_PAINT_MAP_13)
                vec2 uv13 = transformUV(v_Texcoord0,u_Layer_13_TilingOffset);
                vec4 paintColor13 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv13,13)));
                paintColorSum += paintColor13 * u_Layer_13_ColorTint * splatmap3.g;
            #endif

            #if defined(NEED_PAINT_MAP_14)
                vec2 uv14 = transformUV(v_Texcoord0,u_Layer_14_TilingOffset);
                vec4 paintColor14 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv14,14)));
                paintColorSum += paintColor14 * u_Layer_14_ColorTint * splatmap3.b;
            #endif

            #if defined(NEED_PAINT_MAP_15)
                vec2 uv15 = transformUV(v_Texcoord0,u_Layer_15_TilingOffset);
                vec4 paintColor15 = SAMPLE_TEXTURE2DARRAY(texture2D(u_DiffuseArr,vec3(uv15,15)));
                paintColorSum += paintColor15 * u_Layer_15_ColorTint * splatmap3.a;
            #endif
        #endif

        vec3 emptyNormal = vec3(0.0, 0.0, 1.0);
        vec3 normalValue = vec3(0.0);
        
        #if defined(LAYER_0_NORMAL)
            normalValue += UNPACK_NORMAL_MAP(uv0,0,u_Layer_0_NormalScale,splatmap0.r);
        #else 
            normalValue += splatmap0.r * emptyNormal;
        #endif

        #if defined(LAYER_1_NORMAL)
            normalValue += UNPACK_NORMAL_MAP(uv1,1,u_Layer_1_NormalScale,splatmap0.g);
        #else 
            normalValue += splatmap0.g * emptyNormal;
        #endif

        #if defined(NEED_PAINT_MAP_2) 
            #if defined(LAYER_2_NORMAL)
                normalValue += UNPACK_NORMAL_MAP(uv2,2,u_Layer_2_NormalScale,splatmap0.b);
            #else 
                normalValue += splatmap0.b * emptyNormal;
            #endif
        #endif

        #if defined(NEED_PAINT_MAP_3) 
            #if defined(LAYER_3_NORMAL)
                normalValue += UNPACK_NORMAL_MAP(uv3,3,u_Layer_3_NormalScale,splatmap0.a);
            #else 
                normalValue += splatmap0.a * emptyNormal;
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_1)
            #if defined(NEED_PAINT_MAP_4)
                #if defined(LAYER_4_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv4,4,u_Layer_4_NormalScale,splatmap1.r);
                #else 
                    normalValue += splatmap1.r * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_5)
                #if defined(LAYER_5_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv5,5,u_Layer_5_NormalScale,splatmap1.g);
                #else 
                    normalValue += splatmap1.g * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_6)
                #if defined(LAYER_6_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv6,6,u_Layer_6_NormalScale,splatmap1.b);
                #else 
                    normalValue += splatmap1.b * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_7)
                #if defined(LAYER_7_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv7,7,u_Layer_7_NormalScale,splatmap1.a);
                #else 
                    normalValue += splatmap1.a * emptyNormal;
                #endif
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_2)
            #if defined(NEED_PAINT_MAP_8)
                #if defined(LAYER_8_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv8,8,u_Layer_8_NormalScale,splatmap2.r);
                #else 
                    normalValue += splatmap2.r * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_9)
                #if defined(LAYER_9_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv9,9,u_Layer_9_NormalScale,splatmap2.g);
                #else 
                    normalValue += splatmap2.g * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_10)
                #if defined(LAYER_10_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv10,10,u_Layer_10_NormalScale,splatmap2.b);
                #else 
                    normalValue += splatmap2.b * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_11)
                #if defined(LAYER_11_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv11,11,u_Layer_11_NormalScale,splatmap2.a);
                #else 
                    normalValue += splatmap2.a * emptyNormal;
                #endif
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_3)
            #if defined(NEED_PAINT_MAP_12)
                #if defined(LAYER_12_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv12,12,u_Layer_12_NormalScale,splatmap3.r);
                #else 
                    normalValue += splatmap3.r * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_13)
                #if defined(LAYER_13_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv13,13,u_Layer_13_NormalScale,splatmap3.g);
                #else 
                    normalValue += splatmap3.g * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_14)
                #if defined(LAYER_14_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv14,14,u_Layer_14_NormalScale,splatmap3.b);
                #else 
                    normalValue += splatmap3.b * emptyNormal;
                #endif
            #endif

            #if defined(NEED_PAINT_MAP_15)
                #if defined(LAYER_15_NORMAL)
                    normalValue += UNPACK_NORMAL_MAP(uv15,15,u_Layer_15_NormalScale,splatmap3.a);
                #else 
                    normalValue += splatmap3.a * emptyNormal;
                #endif
            #endif
        #endif

        vec4 metallicSmoothnessOcclusion = vec4(0.0);

        metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_0_MetallicOcclusionSmoothness,paintColor0.a,u_Layer_0_SmoothnessFromDiffuseAlpha,splatmap0.r);
        metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_1_MetallicOcclusionSmoothness,paintColor1.a,u_Layer_1_SmoothnessFromDiffuseAlpha,splatmap0.g);
        
        #if defined(NEED_PAINT_MAP_2)
            metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_2_MetallicOcclusionSmoothness,paintColor2.a,u_Layer_2_SmoothnessFromDiffuseAlpha,splatmap0.b);
        #endif
        #if defined(NEED_PAINT_MAP_3)
            metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_3_MetallicOcclusionSmoothness,paintColor3.a,u_Layer_3_SmoothnessFromDiffuseAlpha,splatmap0.a);
        #endif

        #if defined(NEED_SPLAT_MAP_1)
            #if defined(NEED_PAINT_MAP_4)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_4_MetallicOcclusionSmoothness,paintColor4.a,u_Layer_4_SmoothnessFromDiffuseAlpha,splatmap1.r);
            #endif
            #if defined(NEED_PAINT_MAP_5)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_5_MetallicOcclusionSmoothness,paintColor5.a,u_Layer_5_SmoothnessFromDiffuseAlpha,splatmap1.g);
            #endif
            #if defined(NEED_PAINT_MAP_6)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_6_MetallicOcclusionSmoothness,paintColor6.a,u_Layer_6_SmoothnessFromDiffuseAlpha,splatmap1.b);
            #endif
            #if defined(NEED_PAINT_MAP_7)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_7_MetallicOcclusionSmoothness,paintColor7.a,u_Layer_7_SmoothnessFromDiffuseAlpha,splatmap1.a);
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_2)
            #if defined(NEED_PAINT_MAP_8)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_8_MetallicOcclusionSmoothness,paintColor8.a,u_Layer_8_SmoothnessFromDiffuseAlpha,splatmap2.r);
            #endif
            #if defined(NEED_PAINT_MAP_9)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_9_MetallicOcclusionSmoothness,paintColor9.a,u_Layer_9_SmoothnessFromDiffuseAlpha,splatmap2.g);
            #endif
            #if defined(NEED_PAINT_MAP_10)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_10_MetallicOcclusionSmoothness,paintColor10.a,u_Layer_10_SmoothnessFromDiffuseAlpha,splatmap2.b);
            #endif
            #if defined(NEED_PAINT_MAP_11)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_11_MetallicOcclusionSmoothness,paintColor11.a,u_Layer_11_SmoothnessFromDiffuseAlpha,splatmap2.a);
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_3)
            #if defined(NEED_PAINT_MAP_12)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_12_MetallicOcclusionSmoothness,paintColor12.a,u_Layer_12_SmoothnessFromDiffuseAlpha,splatmap3.r);
            #endif
            #if defined(NEED_PAINT_MAP_13)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_13_MetallicOcclusionSmoothness,paintColor13.a,u_Layer_13_SmoothnessFromDiffuseAlpha,splatmap3.g);
            #endif
            #if defined(NEED_PAINT_MAP_14)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_14_MetallicOcclusionSmoothness,paintColor14.a,u_Layer_14_SmoothnessFromDiffuseAlpha,splatmap3.b);
            #endif
            #if defined(NEED_PAINT_MAP_15)
                metallicSmoothnessOcclusion += METALLIC_OCCLUSION_SMOOTHNESS(u_Layer_15_MetallicOcclusionSmoothness,paintColor15.a,u_Layer_15_SmoothnessFromDiffuseAlpha,splatmap3.a);
            #endif
        #endif

        metallicSmoothnessOcclusion = saturate(metallicSmoothnessOcclusion);
        

        o.Albedo = paintColorSum.rgb;
        o.Alpha = paintColorSum.a;
        o.Normal = getTBN() * normalValue;
        o.Metallic = metallicSmoothnessOcclusion.r;
        o.Smoothness = metallicSmoothnessOcclusion.a;
        o.Occlusion = metallicSmoothnessOcclusion.g;

        // o.Normal = vec3(0.0,0.0,1.0);
        // o.Albedo = vec3(test);
        // o.Normal = getTBN() * o.Normal;
        // o.Metallic = 0.0;
        // o.Smoothness = 0.0;
        // o.Occlusion = 1.0;

        vec4 c = FragStandard(o,getViewDirection(v_PositionWS),v_PositionWS);
        #ifdef FOG
            APPLY_FOG(c.rgb);
        #endif
        gl_FragColor = OutputColor(c);
        
    }
#endGLSL

#defineGLSL shadowVS

    #define SHADER_NAME SplatmapVS_ShadowCaster

    varying vec2 v_Texcoord0;
    varying vec3 v_PositionWS;
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

#defineGLSL shadowPS

    #define SHADER_NAME SplatmapFS_ShadowCaster

    #include "DepthFrag.glsl";

    varying vec2 v_Texcoord0;

    void main()
    {
        gl_FragColor = getDepthColor();
    }
#endGLSL

#defineGLSL depthNormalVS

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

#defineGLSL depthNormalPS

    #define SHADER_NAME Splatmap_DepthNormal

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingFrag.glsl";
    #include "DepthNormalFrag.glsl";

    varying vec4 v_PositionCS;

    uniform sampler2DArray u_SplatArr;
    uniform sampler2DArray u_DiffuseArr;
    uniform sampler2DArray u_NormalArr;

    void main()
    {
        PixelParams pixel;
        getPixelParams(pixel);

        vec3 normalWS = pixel.normalWS;
        vec4 positionCS = v_PositionCS;
        vec4 dephtNormal = encodeDepthNormal(positionCS, normalWS);

        gl_FragColor = dephtNormal;
    }
#endGLSL

GLSL End

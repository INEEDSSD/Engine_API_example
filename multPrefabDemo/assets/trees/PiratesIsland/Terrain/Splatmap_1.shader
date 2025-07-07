Shader3D Start
{
    type:Shader3D
    name:Splatmap
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_SplatMap_0: { type: Texture2D, default:"black" },
        u_SplatMap_1: { type: Texture2D, default:"black" },
        u_SplatMap_2: { type: Texture2D, default:"black" },
        u_SplatMap_3: { type: Texture2D, default:"black" },

        

        u_Layer_0_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_1_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_2_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_3_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_4_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_5_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_6_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_7_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_8_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_9_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_10_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_11_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_12_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_13_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_14_Diffuse: { type: Texture2D, default:"white" },
        u_Layer_15_Diffuse: { type: Texture2D, default:"white" },

        u_Layer_0_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_1_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_2_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_3_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_4_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_5_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_6_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_7_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_8_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_9_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_10_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_11_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_12_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_13_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_14_NormalMap: { type: Texture2D, default:"normal" },
        u_Layer_15_NormalMap: { type: Texture2D, default:"normal" },

        u_Layer_0_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_1_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_2_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_3_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_4_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_5_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_6_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_7_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_8_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_9_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_10_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_11_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_12_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_13_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_14_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },
        u_Layer_15_TilingOffset: {caption:"TilingOffset", type: Vector4, default: [1, 1, 0, 0] },

        u_Layer_0_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_1_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_2_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_3_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_4_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_5_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_6_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_7_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_8_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_9_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_10_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_11_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_12_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_13_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_14_ColorTint: { type: Color, default: [1, 1, 1, 1] },
        u_Layer_15_ColorTint: { type: Color, default: [1, 1, 1, 1] },

        

        // u_AlphaTestValue: { type: Float, default: 0.5, range: [0.0, 1.0] },

        // u_TilingOffset: { type: Vector4, default: [1, 1, 0, 0] },

        // u_AlbedoColor: { type: Color, default: [1, 1, 1, 1] },
        // u_AlbedoTexture: { type: Texture2D, options: { define: "ALBEDOTEXTURE" } },

        // u_NormalTexture: { type: Texture2D, options: { define: "NORMALTEXTURE" } },
        // u_NormalScale: { type: Float, default: 1.0, range: [0.0, 2.0] },

        // u_Metallic: { type: Float, default: 0.0, range: [0.0, 1.0] },
        // u_Smoothness: { type: Float, default: 0.0, range: [0.0, 1.0] },
        // u_MetallicGlossTexture: { type: Texture2D, options: { define: "METALLICGLOSSTEXTURE" } },

        // u_OcclusionTexture: { type: Texture2D, options: { define: "OCCLUSIONTEXTURE" } },
        // u_OcclusionStrength: { type: Float, default: 1.0 },

        // u_EmissionColor: { type: Color, default: [0, 0, 0, 0] },
        // u_EmissionIntensity: { type: Float, default: 1.0 },
        // u_EmissionTexture: { type: Texture2D, options: { define: "EMISSIONTEXTURE" } },
    },
    defines: {
        LAYER_COUNT_3: { type: bool, default: false },
        LAYER_COUNT_4: { type: bool, default: false },
        LAYER_COUNT_5: { type: bool, default: false },
        LAYER_COUNT_6: { type: bool, default: false },
        LAYER_COUNT_7: { type: bool, default: false },
        LAYER_COUNT_8: { type: bool, default: false },
        LAYER_COUNT_9: { type: bool, default: false },
        LAYER_COUNT_10: { type: bool, default: false },
        LAYER_COUNT_11: { type: bool, default: false },
        LAYER_COUNT_12: { type: bool, default: false },
        LAYER_COUNT_13: { type: bool, default: false },
        LAYER_COUNT_14: { type: bool, default: false },
        LAYER_COUNT_15: { type: bool, default: false },
        LAYER_COUNT_16: { type: bool, default: false },
    }
    shaderPass:[
        {
            pipeline:Forward,
            VS:LitVS,
            FS:LitFS
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL LitVS
    #define SHADER_NAME Splatmap

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

        gl_Position = getPositionCS(pixel.positionWS);
        gl_Position = remapPositionZ(gl_Position);

        #ifdef FOG
            TRANSFER_FOG(gl_Position.z);
        #endif // FOG 
    }
#endGLSL

#defineGLSL LitFS
    #define SHADER_NAME Splatmap

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingCommon.glsl";
    #include "../Standard/glsl/StandardFrag.glsl";

    #if defined(LAYER_COUNT_3) 

        #define NEED_PAINT_MAP_2

    #elif defined(LAYER_COUNT_4)

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3

    #elif defined(LAYER_COUNT_5)

        #define NEED_SPLAT_MAP_1

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4

    #elif defined(LAYER_COUNT_6)

        #define NEED_SPLAT_MAP_1

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5

    #elif defined(LAYER_COUNT_7)

        #define NEED_SPLAT_MAP_1

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6

    #elif defined(LAYER_COUNT_8)

        #define NEED_SPLAT_MAP_1

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7

    #elif defined(LAYER_COUNT_9)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8

    #elif defined(LAYER_COUNT_10)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8
        #define NEED_PAINT_MAP_9

    #elif defined(LAYER_COUNT_11)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8
        #define NEED_PAINT_MAP_9
        #define NEED_PAINT_MAP_10

    #elif defined(LAYER_COUNT_12)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8
        #define NEED_PAINT_MAP_9
        #define NEED_PAINT_MAP_10
        #define NEED_PAINT_MAP_11

    #elif defined(LAYER_COUNT_13)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2
        #define NEED_SPLAT_MAP_3

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8
        #define NEED_PAINT_MAP_9
        #define NEED_PAINT_MAP_10
        #define NEED_PAINT_MAP_11
        #define NEED_PAINT_MAP_12

    #elif defined(LAYER_COUNT_14)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2
        #define NEED_SPLAT_MAP_3

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8
        #define NEED_PAINT_MAP_9
        #define NEED_PAINT_MAP_10
        #define NEED_PAINT_MAP_11
        #define NEED_PAINT_MAP_12
        #define NEED_PAINT_MAP_13

    #elif defined(LAYER_COUNT_15)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2
        #define NEED_SPLAT_MAP_3

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8
        #define NEED_PAINT_MAP_9
        #define NEED_PAINT_MAP_10
        #define NEED_PAINT_MAP_11
        #define NEED_PAINT_MAP_12
        #define NEED_PAINT_MAP_13
        #define NEED_PAINT_MAP_14

    #elif defined(LAYER_COUNT_16)

        #define NEED_SPLAT_MAP_1
        #define NEED_SPLAT_MAP_2
        #define NEED_SPLAT_MAP_3

        #define NEED_PAINT_MAP_2
        #define NEED_PAINT_MAP_3
        #define NEED_PAINT_MAP_4
        #define NEED_PAINT_MAP_5
        #define NEED_PAINT_MAP_6
        #define NEED_PAINT_MAP_7
        #define NEED_PAINT_MAP_8
        #define NEED_PAINT_MAP_9
        #define NEED_PAINT_MAP_10
        #define NEED_PAINT_MAP_11
        #define NEED_PAINT_MAP_12
        #define NEED_PAINT_MAP_13
        #define NEED_PAINT_MAP_14
        #define NEED_PAINT_MAP_15

    #endif

    void main()
    {
        SurfaceOutputStandard o = createSurfaceOutputStandard();

        vec4 splatmap0 = texture2D(u_SplatMap_0,v_Texcoord0);
        #if defined(NEED_SPLAT_MAP_1)
            vec4 splatmap1 = texture2D(u_SplatMap_1, v_Texcoord0);
        #endif

        #if defined(NEED_SPLAT_MAP_2)
            vec4 splatmap2 = texture2D(u_SplatMap_2, v_Texcoord0);
        #endif

        #if defined(NEED_SPLAT_MAP_3)
            vec4 splatmap3 = texture2D(u_SplatMap_3, v_Texcoord0);
        #endif

        vec4 paintColorSum = vec4(0.0);

        vec2 uv0 = transformUV(v_Texcoord0,u_Layer_0_TilingOffset);
        vec2 uv1 = transformUV(v_Texcoord0,u_Layer_1_TilingOffset);
        vec2 uv2 = transformUV(v_Texcoord0,u_Layer_2_TilingOffset);
        vec2 uv3 = transformUV(v_Texcoord0,u_Layer_3_TilingOffset);

        paintColorSum += tex2DGamma(u_Layer_0_Diffuse,uv0) * u_Layer_0_ColorTint * splatmap0.r;
        paintColorSum += tex2DGamma(u_Layer_1_Diffuse,uv1) * u_Layer_1_ColorTint * splatmap0.g;
        
        #if defined(NEED_PAINT_MAP_2)
            paintColorSum += tex2DGamma(u_Layer_2_Diffuse,uv2) * u_Layer_2_ColorTint * splatmap0.b;
        #endif

        #if defined(NEED_PAINT_MAP_3)
            paintColorSum += tex2DGamma(u_Layer_3_Diffuse,uv3) * u_Layer_3_ColorTint * splatmap0.a;
        #endif

        #if defined(NEED_SPLAT_MAP_1)
            #if defined(NEED_PAINT_MAP_4)
                vec2 uv4 = transformUV(v_Texcoord0,u_Layer_4_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_4_Diffuse,uv4) * u_Layer_4_ColorTint * splatmap1.r;
            #endif

            #if defined(NEED_PAINT_MAP_5)
                vec2 uv5 = transformUV(v_Texcoord0,u_Layer_5_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_5_Diffuse,uv5) * u_Layer_5_ColorTint * splatmap1.g;
            #endif

            #if defined(NEED_PAINT_MAP_6)
                vec2 uv6 = transformUV(v_Texcoord0,u_Layer_6_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_6_Diffuse,uv6) * u_Layer_6_ColorTint * splatmap1.b;
            #endif

            #if defined(NEED_PAINT_MAP_7)
                vec2 uv7 = transformUV(v_Texcoord0,u_Layer_7_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_7_Diffuse,uv7) * u_Layer_7_ColorTint * splatmap1.a;
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_2)
            #if defined(NEED_PAINT_MAP_8)
                vec2 uv8 = transformUV(v_Texcoord0,u_Layer_8_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_8_Diffuse,uv8) * u_Layer_8_ColorTint * splatmap2.r;
            #endif

            #if defined(NEED_PAINT_MAP_9)
                vec2 uv9 = transformUV(v_Texcoord0,u_Layer_9_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_9_Diffuse,uv9) * u_Layer_9_ColorTint * splatmap2.g;
            #endif

            #if defined(NEED_PAINT_MAP_10)
                vec2 uv10 = transformUV(v_Texcoord0,u_Layer_10_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_10_Diffuse,uv10) * u_Layer_10_ColorTint * splatmap2.b;
            #endif

            #if defined(NEED_PAINT_MAP_11)
                vec2 uv11 = transformUV(v_Texcoord0,u_Layer_11_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_11_Diffuse,uv11) * u_Layer_11_ColorTint * splatmap2.a;
            #endif
        #endif

        #if defined(NEED_SPLAT_MAP_3)
            #if defined(NEED_PAINT_MAP_12)
                vec2 uv12 = transformUV(v_Texcoord0,u_Layer_12_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_12_Diffuse,uv12) * u_Layer_12_ColorTint * splatmap3.r;
            #endif

            #if defined(NEED_PAINT_MAP_13)
                vec2 uv13 = transformUV(v_Texcoord0,u_Layer_13_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_13_Diffuse,uv13) * u_Layer_13_ColorTint * splatmap3.g;
            #endif

            #if defined(NEED_PAINT_MAP_14)
                vec2 uv14 = transformUV(v_Texcoord0,u_Layer_14_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_14_Diffuse,uv14) * u_Layer_14_ColorTint * splatmap3.b;
            #endif

            #if defined(NEED_PAINT_MAP_15)
                vec2 uv15 = transformUV(v_Texcoord0,u_Layer_15_TilingOffset);
                paintColorSum += tex2DGamma(u_Layer_15_Diffuse,uv15) * u_Layer_15_ColorTint * splatmap3.a;
            #endif
        #endif


        o.Albedo = vec3(paintColorSum);
        o.Alpha = 1.0;
        o.Normal = getTBN() * o.Normal;
        o.Metallic = 0.0;
        o.Smoothness = 0.0;
        o.Occlusion = 1.0;

        vec4 c = FragStandard(o,getViewDirection(v_PositionWS),v_PositionWS);
        // c.rgb = vec3(v_Texcoord0.x,1.0 - v_Texcoord0.y,0.0);
        #ifdef FOG
            APPLY_FOG(c.rgb);
        #endif
        gl_FragColor = OutputColor(c);
        
    }
#endGLSL

GLSL End

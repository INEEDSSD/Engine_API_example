Shader3D Start
{
    type:Shader3D
    name:Standard
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_Mode: { type: Float, default: 0 },
        u_AlphaTestValue: {caption:"Alpha Cutoff", type: Float, default: 0.5, range: [0.0, 1.0], hidden:"!data.ALPHATEST_ON"},
        u_AlbedoTexture: { type: Texture2D, options: { define: "ALBEDOTEXTURE" } },
        u_AlbedoColor: { type: Color, default: [1, 1, 1, 1] },
        u_MetallicGlossTexture: { type: Texture2D, options: { define: "METALLICGLOSSTEXTURE" }},
        u_Metallic: { type: Float, default: 0.0, range: [0.0, 1.0],hidden: "data.METALLICGLOSSTEXTURE"},
        u_Smoothness: { type: Float, default: 0.0, range: [0.0, 1.0] },

        u_NormalTexture: { type: Texture2D, options: { define: "NORMALTEXTURE" }},
        u_NormalScale: { type: Float, default: 1.0,hidden:"!data.NORMALTEXTURE" },

        u_OcclusionTexture: { type: Texture2D, options: { define: "OCCLUSIONTEXTURE" }},
        u_OcclusionStrength: { type: Float, default: 1.0,range: [0.0, 1.0] ,hidden:"!data.OCCLUSIONTEXTURE"},

        u_EmissionColor: { type: Color, default: [0, 0, 0, 0] ,hidden:"!data.EMISSION"},
        u_EmissionIntensity: { type: Float, default: 1.0 ,hidden:"!data.EMISSION"},
        u_EmissionTexture: { type: Texture2D, options: { define: "EMISSIONTEXTURE" } ,hidden:"!data.EMISSION"},

        u_TilingOffset: { type: Vector4, default: [1, 1, 0, 0] },
        
    },
    defines: {
        EMISSION: {caption:"Emission", type: bool, default: false, position:"before u_EmissionColor"},
        // ENABLEVERTEXCOLOR: { type: bool, default: false },
        METALLICGLOSSTEXTURE: { type: bool, default: false,hidden : true },
        NORMALTEXTURE: { type: bool, default: false,hidden : true },
        OCCLUSIONTEXTURE: { type: bool, default: false,hidden : true },

        SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A: {caption:"Use Albedo Alpha", type: bool, default: false, position:"after u_Smoothness"},
        
        ALPHABLEND_ON: { type: bool, default: false,hidden : true },
        ALPHAPREMULTIPLY_ON: { type: bool, default: false,hidden : true },
        ALPHATEST_ON: { type: bool, default: false,hidden : true },
        

        SPECULARHIGHLIGHTS_OFF: {caption:"Specular Hightlights(Off)", type: reverseBool, default: false },
        GLOSSYREFLECTIONS_OFF: {caption:"Reflections(Off)", type: reverseBool, default: false },
    },
    styles:{
        u_Mode:{caption:"Rendering Mode",enumSource:["Opaque", "Cutout","Fade","Transparent"]},
    },
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
    #define SHADER_NAME Standard

    #include "Math.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";
    #include ".././glsl/StandardVertex.glsl";

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
    #define SHADER_NAME Standard

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingFrag.glsl";
    #include ".././glsl/StandardFrag.glsl";

    struct PixelInfo {
        vec3 positionWS;

        vec3 vertexNormalWS;
        vec3 normalWS;
        vec3 tangentWS;
        vec3 biNormalWS;

        vec3 viewDir;
        float NoV;
    };

    SurfaceOutputStandard initSurfaceOutputStandard(inout PixelParams pixel)
    {
        SurfaceOutputStandard o = createSurfaceOutputStandard();

        #ifdef UV
            vec2 uv = transformUV(pixel.uv0, u_TilingOffset);
        #else // UV
            vec2 uv = vec2(0.0);
        #endif // UV

        o.Albedo = convertColor(u_AlbedoColor).rgb;
        o.Alpha = u_AlbedoColor.a;

        #ifdef COLOR
            #ifdef ENABLEVERTEXCOLOR
                o.Albedo *= pixel.vertexColor.xyz;
                o.Alpha *= pixel.vertexColor.a;
            #endif
        #endif

        #ifdef ALBEDOTEXTURE
            #ifdef u_AlbedoTexture_Gamma
                vec4 albedoSampler = tex2DGamma(u_AlbedoTexture, uv);
            #else
                vec4 albedoSampler = tex2DLinear(u_AlbedoTexture, uv);
            #endif
            o.Albedo *= albedoSampler.rgb;
            o.Alpha *= albedoSampler.a;
        #endif

        o.Metallic = u_Metallic;
        o.Smoothness = u_Smoothness;
        #ifdef METALLICGLOSSTEXTURE
            #ifdef u_MetallicGlossTexture_Gamma
                vec4 metallicSampler = tex2DGamma(u_MetallicGlossTexture, uv);
            #else
                vec4 metallicSampler = tex2DLinear(u_MetallicGlossTexture, uv);
            #endif
            o.Metallic = metallicSampler.x;
            o.Smoothness = (metallicSampler.a * u_Smoothness);
        #endif
        
        #ifdef NORMALTEXTURE
            #ifdef u_NormalTexture_Gamma
                vec4 normalSampler = tex2DGamma(u_NormalTexture, uv); 
            #else
                vec4 normalSampler = tex2DLinear(u_NormalTexture,uv); 
            #endif
            o.Normal = UnpackScaleNormal(normalSampler,u_NormalScale);
        #endif

        #ifdef OCCLUSIONTEXTURE
            #ifdef u_OcclusionTexture_Gamma
                vec4 occlusionSampler = tex2DGamma(u_OcclusionTexture, uv); 
            #else
                vec4 occlusionSampler = tex2DLinear(u_OcclusionTexture, uv); 
            #endif
            float occ = occlusionSampler.g;
            o.Occlusion = LerpOneTo(occ,u_OcclusionStrength);
        #endif

        #ifdef EMISSION
            o.Emission = convertHDRColor(u_EmissionColor,u_EmissionIntensity).rgb;
            #ifdef EMISSIONTEXTURE
                #ifdef u_EmissionTexture_Gamma
                    vec4 emissionSampler = tex2DGamma(u_EmissionTexture, uv);
                #else
                    vec4 emissionSampler = tex2DLinear(u_EmissionTexture, uv);
                #endif
                o.Emission *= emissionSampler.rgb;
            #endif
        #endif
        return o;
    }

    void main()
    {
        PixelParams pixel;
        getPixelParams(pixel);

        SurfaceOutputStandard o = initSurfaceOutputStandard(pixel);

        #ifdef ALPHATEST
            if(o.Alpha < u_AlphaTestValue)discard;
        #endif

        vec3 viewDir = normalize(u_CameraPos - pixel.positionWS);
        mat3 TBN = getTBN();
        vec3 worldNormal = TBN * o.Normal;
        o.Normal = (worldNormal);

        vec4 c = FragStandard(o,viewDir,pixel.positionWS);
        #ifdef FOG
            APPLY_FOG(c.rgb);
        #endif
        gl_FragColor = OutputColor(c);
    }
#endGLSL

#defineGLSL shadowVS

    #define SHADER_NAME Standard

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

        v_Texcoord0 = a_Texcoord0;

        mat4 normalMat = transpose(inverse(worldMat));
        vec3 normalWS = normalize((normalMat * vec4(vertex.normalOS, 0.0)).xyz);

        vec4 positionCS = DepthPositionCS(positionWS, normalWS);
        gl_Position = remapPositionZ(positionCS);
    }
#endGLSL

#defineGLSL shadowPS

    #define SHADER_NAME Standard_ShadowCaster

    #include "DepthFrag.glsl";

    varying vec2 v_Texcoord0;

    void main()
    {
        gl_FragColor = getDepthColor();
        // gl_FragColor = vec4(1.0,0.0,0.0,1.0);
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

    #define SHADER_NAME Standard_DepthNormal

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingFrag.glsl";
    #include "DepthNormalFrag.glsl";
    #include ".././glsl/StandardFrag.glsl";

    varying vec4 v_PositionCS;

    void main()
    {
        PixelParams pixel;
        getPixelParams(pixel);

        vec3 normal = vec3(0.0,0.0,1.0);
        mat3 TBN = mat3(v_TangentWS * vec3(-1.0,1.0,1.0), v_BiNormalWS * vec3(1.0,-1.0,-1.0), v_NormalWS * vec3(-1.0,1.0,1.0));
        vec2 uv = transformUV(pixel.uv0, u_TilingOffset); 

        // #ifdef NORMALTEXTURE
        //     #ifdef u_NormalTexture_Gamma
        //         vec4 normalSampler = tex2DGamma(u_NormalTexture, uv); 
        //     #else
        //         vec4 normalSampler = tex2DLinear(u_NormalTexture,uv); 
        //     #endif
        //     normal = UnpackScaleNormal(normalSampler,u_NormalScale);
        // #endif

        vec3 normalWS = pixel.normalWS;
        vec4 positionCS = v_PositionCS;
        vec4 dephtNormal = encodeDepthNormal(positionCS, normalWS);

        gl_FragColor = dephtNormal;
    }
#endGLSL

GLSL End

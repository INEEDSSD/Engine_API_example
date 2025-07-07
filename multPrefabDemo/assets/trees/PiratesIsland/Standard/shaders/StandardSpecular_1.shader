Shader3D Start
{
    type:Shader3D
    name:StandardSpecular
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_AlbedoTexture: { type: Texture2D, options: { define: "ALBEDOTEXTURE" } },
        u_AlbedoColor: { type: Color, default: [1, 1, 1, 1] },
        u_SpecGlossTexture: { type: Texture2D, options: { define: "SPECGLOSSTEXTURE" }},
        u_SpecColor: { type: Color, default: [0.2, 0.2, 0.2, 1],hidden: "data.SPECGLOSSTEXTURE" },

        u_Glossiness: {caption:"Smoothness", type: Float, default: 0.5, range: [0.0, 1.0] ,hidden:"data.SPECGLOSSTEXTURE"},
        u_GlossMapScale: {caption:"Smoothness", type: Float, default: 1.0, range: [0.0, 1.0] ,hidden:"!data.SPECGLOSSTEXTURE"},

        u_NormalTexture: { type: Texture2D, options: { define: "NORMALTEXTURE" }},
        u_NormalScale: { type: Float, default: 1.0,hidden:"!data.NORMALTEXTURE" },

        u_OcclusionTexture: { type: Texture2D, options: { define: "OCCLUSIONTEXTURE" }},
        u_OcclusionStrength: { type: Float, default: 1.0,range: [0.0, 1.0] ,hidden:"!data.OCCLUSIONTEXTURE"},

        u_EmissionColor: { type: Color, default: [0, 0, 0, 0] ,hidden:"!data.EMISSION"},
        u_EmissionIntensity: { type: Float, default: 1.0 ,hidden:"!data.EMISSION"},
        u_EmissionTexture: { type: Texture2D, options: { define: "EMISSIONTEXTURE" } ,hidden:"!data.EMISSION"},

        u_TilingOffset: { type: Vector4, default: [1, 1, 0, 0] },
        u_AlphaTestValue: { type: Float, default: 0.5, range: [0.0, 1.0] },
    },
    defines: {
        EMISSION: { type: bool, default: false,position:"before u_EmissionColor" },
        // ENABLEVERTEXCOLOR: { type: bool, default: false },
        SPECGLOSSTEXTURE: { type: bool, default: false,hidden : true },
        METALLICGLOSSTEXTURE: { type: bool, default: false,hidden : true },
        NORMALTEXTURE: { type: bool, default: false,hidden : true },
        OCCLUSIONTEXTURE: { type: bool, default: false,hidden : true },
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
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL LitVS
    #define SHADER_NAME StandardSpecular

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

        gl_Position = getPositionCS(pixel.positionWS);
        gl_Position = remapPositionZ(gl_Position);

        #ifdef FOG
            TRANSFER_FOG(gl_Position.z);
        #endif // FOG 
    }
#endGLSL

#defineGLSL LitFS
    #define SHADER_NAME StandardSpecular

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

    SurfaceOutputStandardSpecular initSurfaceOutputStandardSpecular(inout PixelParams pixel)
    {
        SurfaceOutputStandardSpecular o = createSurfaceOutputStandardSpecular();

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

        vec4 albedoSampler = vec4(1.0);
        #ifdef ALBEDOTEXTURE
            #ifdef u_AlbedoTexture_Gamma
                albedoSampler = tex2DGamma(u_AlbedoTexture, uv);
            #else
                albedoSampler = tex2DLinear(u_AlbedoTexture, uv);
            #endif
            o.Albedo *= albedoSampler.rgb;
            #ifdef ALPHATEST
                o.Alpha *= albedoSampler.a;
            #endif
        #endif

        
        
        #ifdef SPECGLOSSTEXTURE
            #ifdef u_SpecGlossTexture_Gamma
                vec4 specSampler = tex2DGamma(u_SpecGlossTexture, uv);
            #else
                vec4 specSampler = tex2DLinear(u_SpecGlossTexture, uv);
            #endif
            o.Specular = specSampler.rgb;
            #ifdef SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A
                o.Smoothness = albedoSampler.a;
            #else
                o.Smoothness = specSampler.a;
            #endif
            o.Smoothness *= u_GlossMapScale;
        #else
            o.Specular = convertColor(u_SpecColor).rgb;
            #ifdef SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A
                o.Smoothness = albedoSampler.a;
            #else
                o.Smoothness = u_Glossiness;
            #endif
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

        SurfaceOutputStandardSpecular o = initSurfaceOutputStandardSpecular(pixel);

        #ifdef ALPHATEST
            if(o.Alpha < u_AlphaTestValue)discard;
        #endif

        vec3 viewDir = normalize(u_CameraPos - pixel.positionWS);
        // vec3 worldNormal = vec3(dot(vec3(pixel.tangentWS.x, pixel.biNormalWS.x, pixel.normalWS.x),o.Normal),dot(vec3(pixel.tangentWS.y, pixel.biNormalWS.y, pixel.normalWS.y),o.Normal),dot(vec3(pixel.tangentWS.z, pixel.biNormalWS.z, pixel.normalWS.z),o.Normal));
        mat3 TBN = getTBN();
        // vec3 worldNormal = pixel.TBN * o.Normal;
        vec3 worldNormal = TBN * o.Normal;
        o.Normal = (worldNormal);

        vec4 c = FragStandardSpecular(o,viewDir,pixel.positionWS);
        #ifdef FOG
            APPLY_FOG(c.rgb);
        #endif
        gl_FragColor = OutputColor(c);
    }
#endGLSL

#defineGLSL shadowVS

    #define SHADER_NAME StandardSpecular

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

    #define SHADER_NAME StandardSpecular

    #include "DepthFrag.glsl";

    void main()
    {
        gl_FragColor = getDepthColor();
        // gl_FragColor = vec4(1.0,0.0,0.0,1.0);
    }
#endGLSL

GLSL End

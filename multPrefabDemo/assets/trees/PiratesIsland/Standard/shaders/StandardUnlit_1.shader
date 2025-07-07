Shader3D Start
{
    type:Shader3D
    name:StandardUnlit
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_Mode: { type: Float, default: 0 },
        u_ColorMode: { type: Float, default: 0 },

        // u_SrcBlend: { type: Float, default: 0 },
        // u_DstBlend: { type: Float, default: 0 },
        // u_ZWrite: { type: Float, default: 0 },
        

        u_SoftParticlesEnabled:{caption:"Soft Particles", type: Bool, default: false},
        u_SoftParticlesNearFadeDistance: {caption:"Near fade", type: Float, default: 0.0, hidden:"!data.u_SoftParticlesEnabled"},
        u_SoftParticlesFarFadeDistance: {caption:"Far fade", type: Float, default: 1.0, hidden:"!data.u_SoftParticlesEnabled"},

        u_CameraFadingEnabled :{caption:"Camera Fading", type: Bool, default: false},
        u_CameraNearFadeDistance: {caption:"Near fade", type: Float, default: 1.0, hidden:"!data.u_CameraFadingEnabled"},
        u_CameraFarFadeDistance: {caption:"Far fade", type: Float, default: 2.0, hidden:"!data.u_CameraFadingEnabled"},

        u_DistortionStrength: {caption:"Strength", type: Float, default: 1.0, hidden:"!data.EFFECT_BUMP"},
        u_DistortionBlend: {caption:"Blend", type: Float, default: 0.5, range: [0.0, 1.0], hidden:"!data.EFFECT_BUMP"},

        u_MainTex: {caption:"Albedo", type: Texture2D, default:"white" },
        u_Color: { type: Color, default: [1, 1, 1, 1] },
        u_ColorIntensity: { type: Float, default: 0 },

        u_EmissionMap: {caption:"Emission", type: Texture2D, default:"white", hidden:"!data.EMISSION"},
        u_EmissionColor: { type: Color, default: [0, 0, 0, 0], hidden:"!data.EMISSION"},
        u_EmissionIntensity: { type: Float, default: 1.0, hidden:"!data.EMISSION"},

        u_SoftParticleFadeParams: { type: Vector4, default: [0, 0, 0, 0] },
        u_CameraFadeParams: { type: Vector4, default: [0, 0, 0, 0] },
        
    },
    defines: {
        SOFTPARTICLES_ON: {type: bool, default: false},
        FADING_ON: {caption:"Camera Fading", type: bool, default: false, private:true},
        EFFECT_BUMP: {caption:"Distortion", type: bool, default: false, position:"before u_DistortionStrength"},
        EMISSION: {caption:"Emission", type: bool, default: false, position:"before u_EmissionMap"},

        
        ALPHABLEND_ON: {type: bool, default: false,private:true},
        ALPHAPREMULTIPLY_ON: {type: bool, default: false,private:true},
        ALPHAOVERLAY_ON: {type: bool, default: false,private:true},
        ALPHAMODULATE_ON: {type: bool, default: false,private:true},
        ALPHATEST_ON: {type: bool, default: false,private:true},

        COLOROVERLAY_ON: {type: bool, default: false,private:true},
        

    },
    styles:{
        u_Mode:{enumSource:["Opaque", "Cutout","Fade","Transparent","Additive","Subtractive","Modulate"]},
        u_ColorMode:{enumSource:["Multiply", "Additive","Subtractive","Overlay","Color","Difference"]}
    },
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
    #define SHADER_NAME StandardUnlit

    #include "Math.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";
    #include "../glsl/StandardVertex.glsl";

    #if defined(SOFTPARTICLES_ON) || defined(FADING_ON)
        varying float v_EyeDepth;
        varying vec4 v_ScreenPos;
        #define vertFading() \
            vec4 clipPos = u_ViewProjection * pos;\
            v_ScreenPos = clipPos * 0.5;\
            v_ScreenPos.x += v_ScreenPos.w;\
            v_ScreenPos.y = v_ScreenPos.w + v_ScreenPos.y;\
            v_ScreenPos.zw = clipPos.zw;\
            v_EyeDepth = -(u_View * pos).z;
    #else
        #define vertFading()
    #endif

    varying vec4 v_Color;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        v_Color = vec4(1.0);
        #ifdef COLOR
            v_Color = vertex.vertexColor;
            #ifdef COLORSPACE_GAMMA
                v_Color =  linearToGamma(v_Color);
            #endif
        #endif

        mat4 worldMat = getWorldMatrix();
        vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));
        vertFading();

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
    #define SHADER_NAME StandardUnlit

    #include "Color.glsl";

    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingCommon.glsl";
    #include "../glsl/CommonFS.glsl";

    varying vec4 v_Color;

    #if defined(SOFTPARTICLES_ON) || defined(FADING_ON)
        #include "DepthNormalUtil.glsl";
        varying float v_EyeDepth;
        varying vec4 v_ScreenPos;
    #endif
    

    #define SOFT_PARTICLE_NEAR_FADE u_SoftParticleFadeParams.x
    #define SOFT_PARTICLE_INV_FADE_DISTANCE 1.0 / u_SoftParticlesFarFadeDistance

    #define CAMERA_NEAR_FADE u_CameraFadeParams.x
    #define CAMERA_INV_FADE_DISTANCE 1.0

    #if defined(ALPHAPREMULTIPLY_ON)
        #define ALBEDO_MUL albedo
    #else
        #define ALBEDO_MUL albedo.a
    #endif

    #if defined(COLOROVERLAY_ON)
        #define fragColorMode() \
            albedo.rgb = mix(1.0 - 2.0 * (1.0 - albedo.rgb) * (1.0 - v_Color.rgb), 2.0 * albedo.rgb * v_Color.rgb, step(albedo.rgb, vec3(0.5))); \
            albedo.a *= v_Color.a;
        #elif defined(COLORCOLOR_ON)
        #define fragColorMode(i) \
            half3 aHSL = RGBtoHSV(albedo.rgb); \
            half3 bHSL = RGBtoHSV(i.color.rgb); \
            half3 rHSL = fixed3(bHSL.x, bHSL.y, aHSL.z); \
            albedo = fixed4(HSVtoRGB(rHSL), albedo.a * i.color.a);
        #elif defined(COLORADDSUBDIFF_ON)
        #define fragColorMode(i) \
            albedo.rgb = albedo.rgb + i.color.rgb * _ColorAddSubDiff.x; \
            albedo.rgb = lerp(albedo.rgb, abs(albedo.rgb), _ColorAddSubDiff.y); \
            albedo.a *= i.color.a;
    #else
        #define fragColorMode() \
            vec4 vertexColor = vec4(1.0); \
            #ifdef COLOR \
                vertexColor = v_VertexColor; \
            #endif \
            albedo *= vertexColor;
    #endif

    #if defined(SOFTPARTICLES_ON) && defined(FADING_ON)
        #define fragSoftParticles() \
            float softParticlesFade = 1.0; \
            if (SOFT_PARTICLE_NEAR_FADE > 0.0 || SOFT_PARTICLE_INV_FADE_DISTANCE > 0.0) \
            { \
                float sceneZ = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(u_CameraDepthTexture,v_ScreenPos.xy / v_ScreenPos.w),u_ZBufferParams); \
                softParticlesFade = saturate(SOFT_PARTICLE_INV_FADE_DISTANCE * ((sceneZ - SOFT_PARTICLE_NEAR_FADE) - v_EyeDepth)); \
                ALBEDO_MUL *= softParticlesFade; \
            }
    #else
        #define fragSoftParticles() \
            float softParticlesFade = 1.0;
    #endif

    #if defined(FADING_ON)
        #define fragCameraFading() \
            float cameraFade = saturate((v_ScreenPos.z - CAMERA_NEAR_FADE) * CAMERA_INV_FADE_DISTANCE); \
            ALBEDO_MUL *= cameraFade;
    #else
        #define fragCameraFading() \
            float cameraFade = 1.0;
    #endif

    vec4 readTexture(sampler2D tex,vec2 texcoord,bool isGamma)
    {
        vec4 color = isGamma ? tex2DGamma(tex,texcoord) : tex2DLinear(tex,texcoord);
        #ifdef FLIPBOOK_BLENDING
            fixed4 color2 = tex2D(tex,IN.texcoord2AndBlend.xy);
            color = mix(color,color2,IN.texcoord2AndBlend.z);
        #endif
        return color;
    }

    void main()
    {
        vec2 uv_texcoord = vec2(1.0);
        #ifdef UV
            uv_texcoord = v_Texcoord0;
        #endif
        #ifdef u_MainTex_Gamma
            vec4 albedo = readTexture(u_MainTex,uv_texcoord,true);
        #else
            vec4 albedo = readTexture(u_MainTex,uv_texcoord,false);
        #endif
        albedo *= convertHDRColor(u_Color,u_ColorIntensity);

        fragColorMode();
        fragSoftParticles();
        fragCameraFading();

        vec3 emission = vec3(0.0);
        #ifdef EMISSION
            #ifdef u_EmissionMap_Gamma
                emission = readTexture(u_EmissionMap,uv_texcoord,true).rgb;
            #else
                emission = readTexture(u_EmissionMap,uv_texcoord,false).rgb;
            #endif
        #endif

        vec4 result = albedo;

        #if defined(ALPHAMODULATE_ON)
            result.rgb = mix(vec3(1.0),albedo.rgb,albedo.a);
        #endif
        
        result.rgb += emission * convertHDRColor(u_EmissionColor,u_EmissionIntensity).rgb * cameraFade * softParticlesFade;

        #if !defined(ALPHABLEND_ON) && !defined(ALPHAPREMULTIPLY_ON) && !defined(ALPHAOVERLAY_ON)
            result.a = 1.0;
        #endif

        #if defined(ALPHATEST_ON)
            //if(albedo.a < u_Cutoff + 0.0001)discard;
        #endif

        // #ifdef UV1
            //result.rgb = vec3(emission * 0.1);
        // #endif

        #ifdef FOG
            APPLY_FOG(result.rgb);
        #endif
        gl_FragColor = OutputColor(result);
    }
#endGLSL

GLSL End

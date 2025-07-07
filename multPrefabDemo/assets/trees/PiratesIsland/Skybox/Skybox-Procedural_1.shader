Shader3D Start
{
    type:Shader3D
    name:"Skybox/Procedural"
    enableInstancing:true,
    supportReflectionProbe:true,
    attributeMap:{
        a_Position:Vector4
    },
    uniformMap:{
        u_SunSize: { type: Float, default: 0.04, range: [0.0, 1.0] },
        u_SunSizeConvergence: {caption:"Sun Size Convergence", type: Float, default: 5, range: [1, 10] },
        u_AtmosphereThickness: {caption:"Atmosphere Thickness", type: Float, default: 1, range: [0, 5] },
        u_SkyTint: {caption:"Sky Tint", type: Color, default: [0.5, 0.5, 0.5, 1] },
        u_GroundColor: {caption:"Ground", type: Color, default: [0.369, 0.349, 0.341, 1] },
        u_Exposure: {caption:"Exposure", type: Float, default: 1.3, range: [0, 8] },
    },
    defines: {
        SUNDISK_NONE: {caption:"None", type: bool, default: false ,inspector:null},
        SUNDISK_SIMPLE: {caption:"Simple", type: bool, default: false ,inspector:null},
        SUNDISK_HIGH_QUALITY: {caption:"High Quality", type: bool, default: true ,inspector:null},
    },
    styles:{
        Sun:{caption:"Sun",inspector: RadioGroup,options:{members:[SUNDISK_NONE,SUNDISK_SIMPLE,SUNDISK_HIGH_QUALITY]},position:"before u_SunSize"},
    }
    shaderPass:[
        {
            pipeline:Forward,
            VS:SkyboxVS,
            FS:SkyboxFS,
            statefirst:true,
            renderState:{
                cull:Off,
                depthWrite:Off,
                depthTest:LessEqual,
                stencilWrite:false
            }
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL SkyboxVS
    #define SHADER_NAME SkyboxProcedural

    #include "SkyCommon.glsl";
    #include "Camera.glsl";
    #include "Color.glsl";

    #if defined(COLORSPACE_GAMMA)
        #define GAMMA 2
        #define COLOR_2_GAMMA(color) color
        vec4 COLOR_2_LINEAR(vec4 color)
        {
            return vec4(vec3(color * color),color.a);
        }
        #define LINEAR_2_OUTPUT(color) sqrt(color)
    #else
        #define GAMMA 2.2
        // HACK: to get gfx-tests in Gamma mode to agree until UNITY_ACTIVE_COLORSPACE_IS_GAMMA is working properly
        #define COLOR_2_GAMMA(color) (pow(color,vec4(1.0 / GAMMA)))
        #define COLOR_2_LINEAR(color) color
        #define LINEAR_2_LINEAR(color) color
    #endif

    const vec3 kDefaultScatteringWavelength = vec3(0.65, 0.57, 0.475);//默认散射波长
    const vec3 kVariableRangeForScatteringWavelength = vec3(0.15, 0.15, 0.15);//散射播放的可变范围

    #define OUTER_RADIUS 1.025
    const float kOuterRadius = OUTER_RADIUS;
    const float kOuterRadius2 = OUTER_RADIUS*OUTER_RADIUS;
    const float kInnerRadius = 1.0;
    const float kInnerRadius2 = 1.0;
    const float kCameraHeight = 0.0001;

    #define kRAYLEIGH (mix(0.0, 0.0025, pow(u_AtmosphereThickness,2.5)))//Rayleigh constant Rayleigh为夜空光和极光亮度单位
    #define kMIE 0.0010             // Mie constant 米氏散射
    #define kSUN_BRIGHTNESS 20.0    // Sun brightness
    #define kMAX_SCATTER 50.0 // Maximum scattering value, to prevent math overflows on Adrenos

    const float kHDSundiskIntensityFactor = 15.0;
    const float kSimpleSundiskIntensityFactor = 27.0;

    const float kSunScale = 400.0 * kSUN_BRIGHTNESS;
    const float kKmESun = kMIE * kSUN_BRIGHTNESS;
    const float kKm4PI = kMIE * 4.0 * 3.14159265;
    const float kScale = 1.0 / (OUTER_RADIUS - 1.0);
    const float kScaleDepth = 0.25;
    const float kScaleOverScaleDepth = (1.0 / (OUTER_RADIUS - 1.0)) / 0.25;
    const float kSamples = 2.0; // THIS IS UNROLLED MANUALLY, DON'T TOUCH

    #define SKY_GROUND_THRESHOLD 0.02

    // uniform vec3 u_SunLight_direction;
    // uniform vec4 u_SunLight_color;

    varying vec3 v_GroundColor;
    varying vec3 v_SkyColor;

    #ifdef SUNDISK_HIGH_QUALITY
        varying vec3 v_Vertex;
    #elif defined(SUNDISK_SIMPLE)
        varying vec3 v_RayDir;
    #else
        varying float v_SkyGroundFactor;
    #endif

    #if defined(SUNDISK_HIGH_QUALITY)||defined(SUNDISK_SIMPLE)
        varying vec3 v_SunColor;
    #endif

    varying vec3 v_Test;

    vec4 convertColor(vec4 color)
    {
        #ifdef COLORSPACE_GAMMA
            return linearToGamma(color);
        #else
            return color;
        #endif
    }

    float getRayleighPhase(float eyeCos2)
    {
        return 0.75 + 0.75*eyeCos2;
    }
    float getRayleighPhase(vec3 light, vec3 ray)
    {
        float eyeCos = dot(light, ray);
        return getRayleighPhase(eyeCos * eyeCos);
    }

    float scale(float inCos)
    {
        float x = 1.0 - inCos;
        return 0.25 * exp(-0.00287 + x*(0.459 + x*(3.83 + x*(-6.80 + x*5.25))));
    }

    vec4 skyRemapGLPositionZ(vec4 position)
    {
        position.z = position.w;
        return position;
    }

    void main()
    {
        vec3 kSkyTintInGammaSpace = vec3(COLOR_2_GAMMA(convertColor(u_SkyTint))); // convert tint from Linear back to Gamma
        vec3 kScatteringWavelength = mix(
            kDefaultScatteringWavelength-kVariableRangeForScatteringWavelength,
            kDefaultScatteringWavelength+kVariableRangeForScatteringWavelength,
            vec3(1.0) - kSkyTintInGammaSpace);
        vec3 kInvWavelength = 1.0 / pow(kScatteringWavelength,vec3(4.0));

        float kKrESun = kRAYLEIGH * kSUN_BRIGHTNESS;
        float kKr4PI = kRAYLEIGH * 4.0 * 3.14159265;

        vec3 cameraPos = vec3(0.0,kInnerRadius + kCameraHeight,0.0);    // The camera's current position

        // Get the ray from the camera to the vertex and its length (which is the far point of the ray passing through the atmosphere)
        vec3 eyeRay = normalize(a_Position.xyz * vec3(-1.0,1.0,1.0));

        float far = 0.0;
        vec3 cIn, cOut;

        vec3 lightDir = u_SunLight_direction * vec3(1.0,-1.0,-1.0);
        vec3 lightColor = convertColor(u_SunLight_color).xyz;
        if(eyeRay.y >= 0.0)
        {
            // Sky
            // Calculate the length of the "atmosphere"
            far = sqrt(kOuterRadius2 + kInnerRadius2 * eyeRay.y * eyeRay.y - kInnerRadius2) - kInnerRadius * eyeRay.y;

            // vec3 pos = cameraPos + far * eyeRay;

            // Calculate the ray's starting position, then calculate its scattering offset
            float height = kInnerRadius + kCameraHeight;
            float depth = exp(kScaleOverScaleDepth * (-kCameraHeight));
            float startAngle = dot(eyeRay, cameraPos) / height;
            float startOffset = depth*scale(startAngle);


            // Initialize the scattering loop variables
            float sampleLength = far / kSamples;
            float scaledLength = sampleLength * kScale;
            vec3 sampleRay = eyeRay * sampleLength;
            vec3 samplePoint = cameraPos + sampleRay * 0.5;

            // Now loop through the sample rays
            vec3 frontColor = vec3(0.0);
            // Weird workaround: WP8 and desktop FL_9_3 do not like the for loop here
            // (but an almost identical loop is perfectly fine in the ground calculations below)
            // Just unrolling this manually seems to make everything fine again.
//              for(int i=0; i<int(kSamples); i++)
            {
                float height = length(samplePoint);
                float depth = exp(kScaleOverScaleDepth * (kInnerRadius - height));
                float lightAngle = dot(lightDir, samplePoint) / height;
                float cameraAngle = dot(eyeRay, samplePoint) / height;
                float scatter = (startOffset + depth*(scale(lightAngle) - scale(cameraAngle)));
                vec3 attenuate = exp(-clamp(scatter, 0.0, kMAX_SCATTER) * (kInvWavelength * kKr4PI + kKm4PI));

                frontColor += attenuate * (depth * scaledLength);
                samplePoint += sampleRay;
            }
            {
                float height = length(samplePoint);
                float depth = exp(kScaleOverScaleDepth * (kInnerRadius - height));
                float lightAngle = dot(lightDir, samplePoint) / height;
                float cameraAngle = dot(eyeRay, samplePoint) / height;
                float scatter = (startOffset + depth*(scale(lightAngle) - scale(cameraAngle)));
                vec3 attenuate = exp(-clamp(scatter, 0.0, kMAX_SCATTER) * (kInvWavelength * kKr4PI + kKm4PI));

                frontColor += attenuate * (depth * scaledLength);
                samplePoint += sampleRay;
            }

            // Finally, scale the Mie and Rayleigh colors and set up the varying variables for the pixel shader
            cIn = frontColor * (kInvWavelength * kKrESun);
            cOut = frontColor * kKmESun;
        }
        else
        {
            // Ground
            far = (-kCameraHeight) / (min(-0.001, eyeRay.y));

            vec3 pos = cameraPos + far * eyeRay;

            // Calculate the ray's starting position, then calculate its scattering offset
            float depth = exp((-kCameraHeight) * (1.0/kScaleDepth));
            float cameraAngle = dot(-eyeRay, pos);
            float lightAngle = dot(lightDir, pos);
            float cameraScale = scale(cameraAngle);
            float lightScale = scale(lightAngle);
            float cameraOffset = depth*cameraScale;
            float temp = (lightScale + cameraScale);

            // Initialize the scattering loop variables
            float sampleLength = far / kSamples;
            float scaledLength = sampleLength * kScale;
            vec3 sampleRay = eyeRay * sampleLength;
            vec3 samplePoint = cameraPos + sampleRay * 0.5;

            // Now loop through the sample rays
            vec3 frontColor = vec3(0.0);
            vec3 attenuate;
            // Loop removed because we kept hitting SM2.0 temp variable limits. Doesn't affect the image too much.
            {
                float height = length(samplePoint);
                float depth = exp(kScaleOverScaleDepth * (kInnerRadius - height));
                float scatter = depth*temp - cameraOffset;
                attenuate = exp(-clamp(scatter, 0.0, kMAX_SCATTER) * (kInvWavelength * kKr4PI + kKm4PI));
                frontColor += attenuate * (depth * scaledLength);
                samplePoint += sampleRay;
            }

            cIn = frontColor * (kInvWavelength * kKrESun + kKmESun);
            cOut = clamp(attenuate, 0.0, 1.0);
            
        }

        #ifdef SUNDISK_HIGH_QUALITY
            v_Vertex = -eyeRay;
        #elif defined(SUNDISK_SIMPLE) 
            v_RayDir = -eyeRay;
        #else
            v_SkyGroundFactor = -eyeRay.y / SKY_GROUND_THRESHOLD;
        #endif

        // if we want to calculate color in vprog:
        // 1. in case of linear: multiply by _Exposure in here (even in case of lerp it will be common multiplier, so we can skip mul in fshader)
        // 2. in case of gamma and SKYBOX_COLOR_IN_TARGET_COLOR_SPACE: do sqrt right away instead of doing that in fshader

        vec4 _GroundColor = convertColor(u_GroundColor);
        v_GroundColor = u_Exposure * (cIn + COLOR_2_LINEAR(_GroundColor).xyz * cOut);
        v_SkyColor    = u_Exposure * (cIn * getRayleighPhase(lightDir, -eyeRay));

        #ifndef SUNDISK_NONE
            // The sun should have a stable intensity in its course in the sky. Moreover it should match the highlight of a purely specular material.
            // This matching was done using the standard shader BRDF1 on the 5/31/2017
            // Finally we want the sun to be always bright even in LDR thus the normalization of the lightColor for low intensity.
            float lightColorIntensity = clamp(length(lightColor),0.25,1.0);
            #ifdef SUNDISK_SIMPLE
                v_SunColor    = kSimpleSundiskIntensityFactor * saturate(cOut * kSunScale) * lightColor / lightColorIntensity;
            #else // SKYBOX_SUNDISK_HQ
                v_SunColor    = kHDSundiskIntensityFactor * saturate(cOut) * lightColor / lightColorIntensity;
            #endif
        #endif

        // v_Test = (v_SunColor);

        // #if defined(COLORSPACE_GAMMA) && SKYBOX_COLOR_IN_TARGET_COLOR_SPACE
        //     OUT.groundColor = sqrt(OUT.groundColor);
        //     OUT.skyColor    = sqrt(OUT.skyColor);
        //     #if SKYBOX_SUNDISK != SKYBOX_SUNDISK_NONE
        //         OUT.sunColor= sqrt(OUT.sunColor);
        //     #endif
        // #endif

        
        gl_Position = u_SkyProjectionViewMat * a_Position;
        gl_Position=skyRemapGLPositionZ(gl_Position);
    }
#endGLSL

#defineGLSL SkyboxFS
    #define SHADER_NAME SkyboxProcedural

    #include "Color.glsl";

    #define kSUN_BRIGHTNESS 20.0    // Sun brightness
    #define SKY_GROUND_THRESHOLD 0.02
    

    const float kSunScale = 400.0 * kSUN_BRIGHTNESS;

    #define MIE_G (-0.990)
    #define MIE_G2 0.9801

    uniform vec3 u_SunLight_direction;
    uniform vec4 u_SunLight_color;

    varying vec3 v_GroundColor;
    varying vec3 v_SkyColor;

    #ifdef SUNDISK_HIGH_QUALITY
    varying vec3 v_Vertex;
    #elif defined(SUNDISK_SIMPLE)
    varying vec3 v_RayDir;
    #else
    varying float v_SkyGroundFactor;
    #endif

    #if defined(SUNDISK_HIGH_QUALITY) || defined(SUNDISK_SIMPLE)
    varying vec3 v_SunColor;
    #endif

    varying vec3 v_Test;

    vec4 convertColor(vec4 color)
    {
        #ifdef COLORSPACE_GAMMA
            return linearToGamma(color);
        #else
            return color;
        #endif
    }

    vec4 OutputColor(vec4 c)
    {
        c.r = max(c.r,0.0);
        c.g = max(c.g,0.0);
        c.b = max(c.b,0.0);
        #ifdef COLORSPACE_GAMMA
            #ifdef EDITOR_ON
                c = gammaToLinear(c);
            #endif
        #endif
        return c;
    }

    // Calculates the Mie phase function
    float getMiePhase(float eyeCos, float eyeCos2)
    {
        float temp = 1.0 + MIE_G2 - 2.0 * MIE_G * eyeCos;
        temp = pow(temp, pow(u_SunSize,0.65) * 10.0);
        temp = max(temp,1.0e-4); // prevent division by zero, esp. in half precision
        temp = 1.5 * ((1.0 - MIE_G2) / (2.0 + MIE_G2)) * (1.0 + eyeCos2) / temp;
        return temp;
    }

    float calcSunAttenuation(vec3 lightPos, vec3 ray)
    {
        #ifdef SUNDISK_SIMPLE
            vec3 delta = lightPos - ray;
            float dist = length(delta);
            float spot = 1.0 - smoothstep(0.0, u_SunSize, dist);
            return spot * spot;
        #else // SKYBOX_SUNDISK_HQ
            float focusedEyeCos = pow(saturate(dot(lightPos, ray)),u_SunSizeConvergence);
            return getMiePhase(-focusedEyeCos, focusedEyeCos * focusedEyeCos);
        #endif
    }

    void main()
    {
        vec3 col = vec3(0.0);

        #ifdef SUNDISK_HIGH_QUALITY
            vec3 ray = normalize(v_Vertex);
            float y = ray.y / SKY_GROUND_THRESHOLD;
        #elif defined(SUNDISK_SIMPLE)
            vec3 ray = v_RayDir;
            float y = ray.y / SKY_GROUND_THRESHOLD;
        #else
            float y = v_SkyGroundFactor;
        #endif

        // if we did precalculate color in vprog: just do lerp between them
        col = mix(v_SkyColor, v_GroundColor, clamp(y, 0.0, 1.0));

        #ifndef SUNDISK_NONE
            if(y < 0.0)
            {
                col += v_SunColor * calcSunAttenuation(u_SunLight_direction * vec3(1.0,-1.0,-1.0), -ray);
            }
        #endif

        #ifdef COLORSPACE_GAMMA
            col = sqrt(col);
        #endif

        // col = gammaToLinear(v_Test);
        // col = vec3(mix(v_SkyColor, v_GroundColor, clamp(y, 0.0, 1.0)));
        gl_FragColor = OutputColor(vec4(col,1.0));
        // gl_FragColor = outputTransform(gl_FragColor);
    }
#endGLSL

GLSL End

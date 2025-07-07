Shader3D Start
{
    type:Shader3D,
    name:"Skybox/Panoramic",
    enableInstancing:false,
    supportReflectionProbe:false,
    attributeMap:{
        a_Position:Vector4,
    },
    uniformMap:{
        u_Tint: { type: Color, default: [0.5, 0.5, 0.5, 0.5]},
        u_Exposure: { type: Float, default: 1,range:[0,8] },
        u_Rotation: { type: Float, default: 0,range:[0,360] },
        u_MainTex: { type: Texture2D,options: { define: "MAINTEXTURE" }},
    },
    defines: {
    }
    shaderPass:[
        {
            pipeline:Forward,
            VS:skyboxVS,
            FS:skyboxPS,
            statefirst:true,
            renderState:{
                cull:Off,
                depthWrite:false,
                depthTest:LessEqual,
            }
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL skyboxVS

    #define SHADER_NAME Skybox-Panoramic
    #include "Math.glsl";
    #include "Camera.glsl";
    #include "SkyCommon.glsl";

    varying vec3 v_Texcoord0;
    varying vec2 v_Image180ScaleAndCutoff;
    varying vec4 v_Layout3DScaleAndOffset;

    void main()
    {
        vec4 position = rotateAroundYInDegrees(a_Position, u_Rotation);
        gl_Position = u_SkyProjectionViewMat * position;
        gl_Position = remapSkyPositionZ(gl_Position);

        v_Image180ScaleAndCutoff = vec2(1.0);
        v_Layout3DScaleAndOffset = vec4(0.0,0.0,1.0,1.0);

        v_Texcoord0 = a_Position.xyz * vec3(-1.0,-1.0,1.0);
    }
#endGLSL

#defineGLSL skyboxPS

    #define SHADER_NAME Skybox-Panoramic

    #include "Color.glsl";

    #ifdef COLORSPACE_GAMMA
        #define ColorSpaceDouble vec4(2.0, 2.0, 2.0, 2.0)
    #else
        #define ColorSpaceDouble vec4(4.59479380, 4.59479380, 4.59479380, 2.0)
    #endif

    varying vec3 v_Test;
    varying vec3 v_Texcoord0;
    varying vec2 v_Image180ScaleAndCutoff;
    varying vec4 v_Layout3DScaleAndOffset;

    vec4 OutputColor(in vec4 c)
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

    vec2 ToRadialCoords(vec3 coords)
    {
        vec3 normalizedCoords = normalize(coords);
        float latitude = acos(normalizedCoords.y);
        float longitude = atan(normalizedCoords.z, normalizedCoords.x);
        vec2 sphereCoords = vec2(longitude, latitude) * vec2(0.5 / PI, 1.0 / PI);
        return vec2(0.5, 1.0) - sphereCoords;
    }

    void main()
    {

        vec2 tc = ToRadialCoords(v_Texcoord0);
        if (tc.x > v_Image180ScaleAndCutoff.y){
            gl_FragColor = vec4(0.0,0.0,0.0,1.0);
            return;
        }
        tc.x = mod(tc.x * v_Image180ScaleAndCutoff.x, 1.0);
        tc = (tc + v_Layout3DScaleAndOffset.xy) * v_Layout3DScaleAndOffset.zw;

        vec4 c = vec4(1.0);
        #ifdef COLORSPACE_GAMMA
            vec3 tex = vec3(0.5);
            c.rgb = (linearToGamma(u_Tint) * vec4(2.0) * u_Exposure).rgb;
        #else
            c.rgb = (u_Tint * vec4(4.59479380, 4.59479380, 4.59479380, 2.0) * pow(u_Exposure,2.2)).rgb;
            vec3 tex = vec3(pow(0.5,2.2));
        #endif

        #ifdef MAINTEXTURE
            tex = decodeRGBD(texture2D(u_MainTex,tc));
            #ifdef COLORSPACE_GAMMA
                // #ifdef EDITOR_ON
                    tex = linearToGamma(tex);
                // #endif
            #endif
            
        #endif

        c.rgb *= tex;
        gl_FragColor = OutputColor(c);
    }
#endGLSL
GLSL End



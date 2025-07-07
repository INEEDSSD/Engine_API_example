Shader3D Start
{
    type:Shader3D,
    name:"Skybox/Cubemap",
    enableInstancing:false,
    supportReflectionProbe:false,
    attributeMap:{
        a_Position:Vector4,
    },
    uniformMap:{
        u_Tint: { type: Color, default: [0.5, 0.5, 0.5, 0.5]},
        u_Exposure: { type: Float, default: 1,range:[0,8] },
        u_Rotation: { type: Float, default: 0,range:[0,360] },
        u_Tex: { type: TextureCube,options: { define: "TEXTURE" }},
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
                depthWrite:true,
                depthTest:LessEqual,
            }
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL skyboxVS

    #define SHADER_NAME Skybox-Cubemap
    #include "Camera.glsl";
    #include "SkyCommon.glsl";

    varying vec3 v_Texcoord0;
    
    vec4 rotateAroundYInDegrees2(vec4 vertex, float deg)
    {
        float angle = -deg * c_deg2ang;
        float sina = sin(angle);
        float cosa = cos(angle);
        mat2 m = mat2(cosa, -sina, sina, cosa);
        return vec4(vertex.xz * m, vertex.yw).xzyw;
    }

    void main()
    {
        vec4 position = rotateAroundYInDegrees(a_Position, u_Rotation);
        gl_Position = u_SkyProjectionViewMat * position;
        gl_Position = remapSkyPositionZ(gl_Position);

        v_Texcoord0 = a_Position.xyz * vec3(-1.0,1.0,1.0);
    }
#endGLSL

#defineGLSL skyboxPS

    #define SHADER_NAME Skybox-Cubemap

    #include "Color.glsl";

    #ifdef COLORSPACE_GAMMA
        #define ColorSpaceDouble vec4(2.0, 2.0, 2.0, 2.0)
    #else
        #define ColorSpaceDouble vec4(4.59479380, 4.59479380, 4.59479380, 2.0)
    #endif

    varying vec3 v_Test;
    varying vec3 v_Texcoord0;

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

    void main()
    {
        vec4 c = vec4(1.0);
        #ifdef COLORSPACE_GAMMA
            vec3 tex = vec3(0.5);
            c.rgb = (linearToGamma(u_Tint) * vec4(2.0) * u_Exposure).rgb;
        #else
            c.rgb = (u_Tint * vec4(4.59479380, 4.59479380, 4.59479380, 2.0) * pow(u_Exposure,2.2)).rgb;
            vec3 tex = vec3(pow(0.5,2.2));
        #endif

        #ifdef TEXTURE
            tex = decodeRGBD(textureCube(u_Tex,v_Texcoord0));
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



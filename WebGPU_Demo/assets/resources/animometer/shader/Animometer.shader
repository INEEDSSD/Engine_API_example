Shader3D Start
{
    type:Shader3D,
    name:Animometer,
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_Scale: { type: Float, default: 1 },
        u_OffsetX: { type: Float, default: 0 },
        u_OffsetY: { type: Float, default: 0 },
        u_Scalar: { type: Float, default: 1.0 },
        u_ScalarOffset: { type: Float, default: 0.0 },

    },
    defines: {
    }
    shaderPass:[
        {
            pipeline:Forward,
            VS:unlitVS,
            FS:unlitPS
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL unlitVS

    #define SHADER_NAME Animometer

    #include "Math.glsl";

    #include "Scene.glsl";

    #include "VertexCommon.glsl";


    varying vec4 v_Color;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        vec4 color = vec4(1.0, 1.0, 1.0, 1.0);

        vec3 position = vertex.positionOS;

    #ifdef COLOR
        color = vertex.vertexColor;
    #endif // COLOR

        float fade = mod((u_ScalarOffset + u_Time * u_Scalar / 10.0), 1.0);
        if (fade < 0.5) {
            fade = fade * 2.0;
        }
        else {
            fade = (1.0 - fade) * 2.0;
        }

        float xpos = position.x * u_Scale;
        float ypos = position.y * u_Scale;
        float angle = 3.14159 * 2.0 * fade;
        float xrot = xpos * cos(angle) - ypos * sin(angle);
        float yrot = xpos * sin(angle) + ypos * cos(angle);
        xpos = xrot + u_OffsetX;
        ypos = yrot + u_OffsetY;

        v_Color = vec4(fade, 1.0 - fade, 0.0, 1.0) + color;

        gl_Position = vec4(xpos, ypos, 0.0, 1.0);
    }
#endGLSL

#defineGLSL unlitPS

    #define SHADER_NAME Animometer

    #include "Color.glsl";

    #include "Scene.glsl";
    #include "SceneFog.glsl";

    varying vec4 v_Color;

    void main()
    {
        gl_FragColor = v_Color;

        gl_FragColor = outputTransform(gl_FragColor);
    }
#endGLSL
GLSL End



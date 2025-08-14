Shader3D Start
{
    type:Shader3D,
    name:Animometer,
    enableInstancing:true,
    supportReflectionProbe:false,
    attributeMap: {
        'a_Position': ["Vector4", 0],
        'a_Normal': ["Vector3", 3],
        'a_Color': ["Vector4", 1],

        // instance
        'a_Custom0': ["Vector4", 12],
        'a_Custom1': ["Vector4", 13],
    },
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

    #include "Color.glsl";

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

        float scale = u_Scale;
        float offsetX = u_OffsetX;
        float offsetY = u_OffsetY;
        float scalar = u_Scalar;
        float scalarOffset = u_ScalarOffset;

    #ifdef GPU_INSTANCE
        scale = a_Custom0.x;
        offsetX = a_Custom0.y;
        offsetY = a_Custom0.z;
        scalar = a_Custom0.w;
        
        scalarOffset = a_Custom1.w;
    #endif // GPU_INSTANCE

        float fade = mod((scalarOffset + u_Time * scalar / 10.0), 1.0);
        if (fade < 0.5) {
            fade = fade * 2.0;
        }
        else {
            fade = (1.0 - fade) * 2.0;
        }

        float xpos = position.x * scale;
        float ypos = position.y * scale;
        float angle = 3.14159 * 2.0 * fade;
        float xrot = xpos * cos(angle) - ypos * sin(angle);
        float yrot = xpos * sin(angle) + ypos * cos(angle);
        xpos = xrot + offsetX;
        ypos = yrot + offsetY;

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



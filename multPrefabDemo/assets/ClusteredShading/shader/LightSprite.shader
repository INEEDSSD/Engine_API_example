Shader3D Start
{
    type:Shader3D,
    name:LightSprite,
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        // "u_TestArray[2]": {type: Vector4}
    },
    defines: {
        ENABLEVERTEXCOLOR: { type: bool, default: false }
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

    #define SHADER_NAME LightSprite

    #include "Math.glsl";

    #include "Scene.glsl";
    #include "SceneFogInput.glsl";

    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";

    #include "VertexCommon.glsl";

    varying vec3 v_ViewDirection;
    varying vec3 v_Normal;
    varying vec3 v_CustomColor;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        mat4 worldMat = getWorldMatrix();
        vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));
        vec3 positionWS = pos.xyz / pos.w;

        v_ViewDirection = getViewDirection(positionWS);
        v_Normal = vertex.normalOS;
        v_CustomColor = vec3(NodeCustomData0, NodeCustomData1, NodeCustomData2);

        gl_Position = getPositionCS(positionWS);

        gl_Position = remapPositionZ(gl_Position);

    }
#endGLSL

#defineGLSL unlitPS

    #define SHADER_NAME LightSprite

    #include "Color.glsl";

    #include "Scene.glsl";
    #include "SceneFog.glsl";

    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";

    varying vec3 v_ViewDirection;
    varying vec3 v_Normal;
    varying vec3 v_CustomColor;


    void main()
    {
        vec3 color = vec3(1.0);
        float alpha = 1.0;

        //  color *= u_TestArray[1].xyz;

        #ifdef GPU_INSTANCE

        color = v_CustomColor;

        #endif // GPU_INSTANCE

        float fade = dot(v_Normal, v_ViewDirection);
        fade *= fade;

        color = mix(color, vec3(1.0), fade);

        gl_FragColor = vec4(color, alpha);

        gl_FragColor = outputTransform(gl_FragColor);
    }
#endGLSL
GLSL End



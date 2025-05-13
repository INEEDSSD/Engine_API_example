Shader3D Start
{
    type:Shader3D,
    name:MetaBall,
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_AlphaTestValue: { type: Float, default: 0.5 },
        u_TilingOffset: { type: Vector4, default: [1, 1, 0, 0] },

        u_AlbedoColor: { type: Color, default: [1, 1, 1, 1] },
        u_AlbedoTexture: { type: Texture2D, options: { define: "ALBEDOTEXTURE" } },
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

    #define SHADER_NAME MetaBall

    #include "Math.glsl";

    #include "Scene.glsl";
    #include "SceneFogInput.glsl";

    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";

    #include "VertexCommon.glsl";

    varying vec3 v_NormalWS;

    varying vec2 v_UVX;
    varying vec2 v_UVY;
    varying vec2 v_UVZ;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        mat4 worldMat = getWorldMatrix();
        vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));
        vec3 positionWS = pos.xyz / pos.w;

        vec3 normalWS = normalize(vec3(worldMat * vec4(vertex.normalOS, 0.0)));
        v_NormalWS = normalWS;

        float time = u_Time * 2000.0;
        vec3 flow = vec3(sin(time * 0.0001), cos(time * 0.0004), sin(time * 0.00007));
        v_UVX = positionWS.yz + flow.yz;
        v_UVY = positionWS.xz + flow.xz;
        v_UVZ = positionWS.xy + flow.xy;

        gl_Position = getPositionCS(positionWS);

        gl_Position = remapPositionZ(gl_Position);

    #ifdef FOG
        FogHandle(gl_Position.z);
    #endif
    }
#endGLSL

#defineGLSL unlitPS

    #define SHADER_NAME MetaBall

    #include "Color.glsl";

    #include "Scene.glsl";
    #include "SceneFog.glsl";

    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";

    varying vec3 v_NormalWS;

    varying vec2 v_UVX;
    varying vec2 v_UVY;
    varying vec2 v_UVZ;

    void main()
    {
        vec2 uv = vec2(0.0, 0.0);

        vec3 color = u_AlbedoColor.rgb;
        float alpha = u_AlbedoColor.a;

        vec3 blending = normalize(max(abs(v_NormalWS), vec3(0.00001)));

    #ifdef ALBEDOTEXTURE
        vec3 xTex = texture2D(u_AlbedoTexture, v_UVX).rgb;
        vec3 yTex = texture2D(u_AlbedoTexture, v_UVY).rgb;
        vec3 zTex = texture2D(u_AlbedoTexture, v_UVZ).rgb;

        color = xTex * blending.x + yTex * blending.y + zTex * blending.z;

        #ifdef Gamma_u_AlbedoTexture
        color = gammaToLinear(color);
        #endif // Gamma_u_AlbedoTexture

    #endif // ALBEDOTEXTURE

        gl_FragColor = vec4(color, alpha);

        gl_FragColor = outputTransform(gl_FragColor);
    }
#endGLSL
GLSL End



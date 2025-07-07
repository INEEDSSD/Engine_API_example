Shader3D Start
{
    type:Shader3D
    name:BumpedDiffuse_Cutout
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_Color: { type: Color, default: [1, 1, 1, 1] },
        u_MainTex: { type: Texture2D, default:"white" },
        u_MainTex_ST: { type: Vector4, default: [1, 1, 0, 0] },
        u_BumpMap: { type: Texture2D, options: { define: "BUMPMAP" } },
        u_BumpMap_ST: { type: Vector4, default: [1, 1, 0, 0] },
        u_Cutoff: { type: Float, default: 0.5, range: [0.0, 1.0] },
    },
    defines: {
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
    #define SHADER_NAME BumpedDiffuse

    #include "Math.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";
    #include "../Standard/glsl/StandardVertex.glsl";

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
    #define SHADER_NAME BumpedDiffuse

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingCommon.glsl";
    #include "../Standard/glsl/StandardFrag.glsl";
    #include "../Standard/glsl/LambertLighting.glsl";

    void main()
    {
        vec2 uv_MainTex = transformUV(v_Texcoord0,u_MainTex_ST);
        vec4 _Color = convertColor(u_Color);
        #ifdef u_MainTex_Gamma
            vec4 c = tex2DGamma(texture2D(u_MainTex, uv_MainTex)) * _Color;
        #else
            vec4 c = tex2DLinear(texture2D(u_MainTex, uv_MainTex)) * _Color;
        #endif
        
        vec3 Albedo = c.rgb;
        float Alpha = c.a;

        if(Alpha < u_Cutoff)discard;

        vec4 norm = COLOR_NORMAL;
        #ifdef BUMPMAP
            vec2 uv_BumpMap = transformUV(v_Texcoord0,u_BumpMap_ST);
            #ifdef u_BumpMap_Gamma
                norm = tex2DGamma(texture2D(u_BumpMap,uv_BumpMap));
            #else
                norm = tex2DLinear(texture2D(u_BumpMap,uv_BumpMap));
            #endif
        #endif

        vec3 Normal = normalize(getTBN() * UnpackNormalmapRGorAG2(norm));
        
        vec4 finalColor = LambertLight(Albedo,Normal,Alpha);
        #ifdef FOG
            APPLY_FOG(finalColor.rgb);
        #endif
        gl_FragColor = OutputColor(finalColor);
    }
#endGLSL

#defineGLSL shadowVS

    #define SHADER_NAME ShadowCaster

    varying vec2 v_Texcoord0;
    varying vec3 v_PositionWS;
    #include "DepthVertex.glsl";

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        v_Texcoord0 = vertex.texCoord0;

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

    #define SHADER_NAME ShadowCaster_xx

    #include "DepthFrag.glsl";
    #include "Sprite3DFrag.glsl";
    #include "../Standard/glsl/Common.glsl";

    varying vec2 v_Texcoord0;

    void main()
    {
        vec2 uv_MainTex = transformUV(v_Texcoord0,u_MainTex_ST);
        vec4 _Color = convertColor(u_Color);
        #ifdef u_MainTex_Gamma
            vec4 c = tex2DGamma(texture2D(u_MainTex, uv_MainTex)) * _Color;
        #else
            vec4 c = tex2DLinear(texture2D(u_MainTex, uv_MainTex)) * _Color;
        #endif
        
        float Alpha = c.a;

        if(Alpha < u_Cutoff)discard;
        gl_FragColor = getDepthColor();
    }
#endGLSL

GLSL End

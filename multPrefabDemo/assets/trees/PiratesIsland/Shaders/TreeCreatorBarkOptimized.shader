Shader3D Start
{
    type:Shader3D
    name:TreeCreatorBarkOptimized
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_Color: { type: Color, default: [1, 1, 1, 1] },
        u_MainTex: { type: Texture2D, default:"white" },
        u_BumpSpecMap: { type: Texture2D, options: { define: "BUMPSPECMAP" } },
        u_TranslucencyMap: { type: Texture2D, default:"white" },
        u_Cutoff: { type: Float, default: 0.3, range: [0.0, 1.0] },
        u_SpecColor: { type: Color, default: [0.5, 0.5, 0.5, 1] },
        u_TreeInstanceColor: { type: Color, default: [1, 1, 1, 1], hidden:true},

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
            pipeline:DepthNormal,
            VS:depthNormalVS,
            FS:depthNormalPS
        }
    ]
}
Shader3D End

GLSL Start
#defineGLSL LitVS
    #define SHADER_NAME TreeCreatorBarkOptimized

    #include "Math.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";
    #include "../Standard/glsl/StandardVertex.glsl";

    varying vec4 v_Color;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        PixelParams pixel;
        initPixelParams(pixel, vertex);

        v_Color = vec4(1.0);
        #ifdef COLOR
            v_Color = vertex.vertexColor;
        #endif
        v_Color.rgb = u_TreeInstanceColor.rgb * convertColor(u_Color).rgb;

        gl_Position = getPositionCS(pixel.positionWS);
        gl_Position = remapPositionZ(gl_Position);

        #ifdef FOG
            TRANSFER_FOG(gl_Position.z);
        #endif // FOG
    }
#endGLSL

#defineGLSL LitFS
    #define SHADER_NAME TreeCreatorBarkOptimized

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingCommon.glsl";
    #include "../Standard/glsl/StandardFrag.glsl";

    varying vec4 v_Color;

    vec3 UnpackNormalDXT5nm (vec4 packednormal)
    {
        vec3 normal;
        normal.xy = packednormal.wy * 2.0 - 1.0;
        normal.z = sqrt(1.0 - saturate(dot(normal.xy, normal.xy)));
        return normal;
    }

    vec4 lighting(SurfaceOutput s)
    {
        vec3 Normal = normalize(s.Normal);
        vec3 viewDir = getViewDirection(v_PositionWS) * vec3(-1.0,1.0,1.0);
        Light light = MainLight();
        vec3 lightDir = light.dir * vec3(1.0,-1.0,-1.0);
        vec3 h = normalize(lightDir + viewDir);
        float diff = max(0.0, dot(Normal, lightDir));
        float nh = max (0.0, dot (Normal, h));
        float spec = pow (nh, s.Specular * 128.0) * s.Gloss;

        vec4 c;
        c.rgb = s.Albedo * light.color * diff + light.color * convertColor(u_SpecColor).rgb * spec;
        c.a = s.Alpha;
        return c;
    }

    void main()
    {
        SurfaceOutput o;
        vec4 c = tex2DGamma(texture2D(u_MainTex, v_Texcoord0));
        vec4 color = convertColor(u_Color);
        o.Albedo = c.rgb * v_Color.rgb * v_Color.a;
        
        vec4 trngls = tex2DGamma(texture2D(u_TranslucencyMap, v_Texcoord0));
        o.Gloss = trngls.a * color.r;
        o.Alpha = c.a;
    // #if defined(BILLBOARD_FACE_CAMERA_POS)
    //     float coverage = 1.0;
    //     if (_TreeInstanceColor.a < 1.0)
    //         coverage = ComputeAlphaCoverage(IN.screenPos, _TreeInstanceColor.a);
    //     o.Alpha *= coverage;
    // #endif
        #ifdef BUMPSPECMAP
            #ifdef u_BumpSpecMap_Gamma
                vec4 norspc = tex2DGamma(texture2D(u_BumpSpecMap, v_Texcoord0));
            #else
                vec4 norspc = tex2DLinear(texture2D(u_BumpSpecMap, v_Texcoord0));
            #endif
        #else
            vec4 norspc = COLOR_NORMAL;
        #endif
        
        o.Specular = norspc.r;
        o.Normal = getTBN() * UnpackNormalDXT5nm(norspc);
        vec4 finalColor = lighting(o);

        GI gi = GI_Base(1.0, o.Normal);

        finalColor.rgb += o.Albedo * gi.indirect.diffuse;

        #ifdef FOG
            APPLY_FOG(finalColor.rgb);
        #endif
        gl_FragColor = OutputColor(finalColor);
    }
#endGLSL

#defineGLSL depthNormalVS

    #include "Math.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";
    #include "PBRVertex.glsl";

    varying vec4 v_PositionCS;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        PixelParams pixel;
        initPixelParams(pixel, vertex);

        sharePixelParams(pixel);

        vec4 positionCS = getPositionCS(pixel.positionWS);
        v_PositionCS = positionCS;
        gl_Position = positionCS;
        gl_Position = remapPositionZ(gl_Position);
    }
#endGLSL

#defineGLSL depthNormalPS

    #define SHADER_NAME Tree_DepthNormal

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingFrag.glsl";
    #include "DepthNormalFrag.glsl";
    #include "../Standard/glsl/Common.glsl";

    varying vec4 v_PositionCS;

    void main()
    {
        PixelParams pixel;
        getPixelParams(pixel);

        vec3 normalWS = pixel.normalWS;
        vec4 positionCS = v_PositionCS;
        vec4 dephtNormal = encodeDepthNormal(positionCS, normalWS);

        gl_FragColor = dephtNormal;
    }
#endGLSL

GLSL End

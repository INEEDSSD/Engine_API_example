Shader3D Start
{
    type:Shader3D
    name:TreeCreatorLeavesOptimized
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_Color: { type: Color, default: [1, 1, 1, 1] },
        u_TranslucencyColor: { type: Color, default: [0.73,0.85,0.41,1] },
        u_Cutoff: { type: Float, default: 0.3, range: [0.0, 1.0] },
        u_TranslucencyViewDependency: { type: Float, default: 0.7, range: [0.0, 1.0] },
        u_ShadowStrength: { type: Float, default: 0.8, range: [0.0, 1.0] },
        u_ShadowOffsetScale: { type: Float, default: 1.0 },

        u_MainTex: { type: Texture2D, default:"white" },
        u_ShadowTex: { type: Texture2D, default:"white" },
        u_BumpSpecMap: { type: Texture2D, options: { define: "BUMPSPECMAP" } },
        u_TranslucencyMap: { type: Texture2D, default:"white" },

        u_TreeInstanceColor: { type: Color, default: [1, 1, 1, 1], hidden:true},
        
    },
    defines: {
        // EMISSION: { type: bool, default: false },
        // ENABLEVERTEXCOLOR: { type: bool, default: false }
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
    #define SHADER_NAME TreeCreatorLeavesOptimized

    #include "Math.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";
    #include "../Standard/glsl/StandardVertex.glsl";
    #include "./glsl/Noise.glsl";

    varying vec4 v_Color;

    uniform vec3 WindDirection;
    uniform float WindSpeedFloat;
    uniform float WindTurbulenceFloat;
    uniform float WindStrenghtFloat;
    uniform float GrassWiggleFloat;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);

        

        vec4 vertexColor = vec4(1.0);
    #ifdef COLOR
        vertexColor = vertex.vertexColor;
    #endif // COLOR

        // float TimeY = 0.0;
        float TimeY = u_Time;
        float u_WindStrenght = 1.0;

        mat4 worldMat = getWorldMatrix();
        mat4 normalMat = transpose(inverse(worldMat));
        vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));

        float mulTime877 = TimeY * 0.25;
        vec2 temp_cast_0 = vec2(mulTime877);
        float simplePerlin2D879 = snoise(temp_cast_0);
        vec3 worldToObjDir883 = (normalMat * vec4((WindDirection).xzy,0.0)).xyz;
        vec3 ase_worldPos = pos.xyz * vec3(-1.0,1.0,1.0);
        vec2 panner706 = (1.0 * TimeY * (worldToObjDir883 * WindSpeedFloat).xy + (ase_worldPos).xz);
        float simplePerlin2D712 = snoise(((panner706 * 0.25 ) * WindTurbulenceFloat));
        float worldNoise905 = simplePerlin2D712;
        vec4 transform886 = (normalMat * vec4((WindDirection * (simplePerlin2D879 * (u_WindStrenght * ((vertexColor.a * worldNoise905) + (worldNoise905 * vertexColor.g)) * WindStrenghtFloat))),0.0));
        #ifdef WIND_ON
            vec4 staticSwitch897 = transform886;
        #else
            vec4 staticSwitch897 = vec4(0.0);
        #endif
        vertex.positionOS.xyz += staticSwitch897.xyz * vec3(-1.0,1.0,1.0);

        v_Color = vertexColor;
        v_Color.rgb = u_TreeInstanceColor.rgb * convertColor(u_Color).rgb;

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
    #define SHADER_NAME TreeCreatorLeavesOptimized

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingCommon.glsl";
    #include "../Standard/glsl/StandardFrag.glsl";
    #include "./TreeFS.glsl";

    varying vec4 v_Color;

    vec3 UnpackNormalDXT5nm (vec4 packednormal)
    {
        vec3 normal;
        normal.xy = packednormal.wy * 2.0 - 1.0;
        normal.z = sqrt(1.0 - saturate(dot(normal.xy, normal.xy)));
        return normal;
    }

    void main()
    {
        LeafSurfaceOutput o;
        vec4 c = tex2DGamma(texture2D(u_MainTex, v_Texcoord0));
        if(c.a < u_Cutoff)discard;
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

        Light light = MainLight();
        vec4 finalColor = LightingTreeLeaf(o,light,getViewDirection(v_PositionWS) * vec3(-1.0,1.0,1.0),1.0);

        GI gi = GI_Base(1.0, o.Normal);

        finalColor.rgb += o.Albedo * gi.indirect.diffuse;

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
    #include "./glsl/Noise.glsl";

    uniform vec3 WindDirection;
    uniform float WindSpeedFloat;
    uniform float WindTurbulenceFloat;
    uniform float WindStrenghtFloat;
    uniform float GrassWiggleFloat;

    void main()
    {
        Vertex vertex;
        getVertexParams(vertex);
        v_Texcoord0 = vertex.texCoord0;

        vec4 vertexColor = vec4(1.0);
        #ifdef COLOR
            vertexColor = vertex.vertexColor;
        #endif // COLOR

        float TimeY = u_Time;
        float u_WindStrenght = 1.0;

        mat4 worldMat = getWorldMatrix();
        mat4 normalMat = transpose(inverse(worldMat));
        vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));

        float mulTime877 = TimeY * 0.25;
        vec2 temp_cast_0 = vec2(mulTime877);
        float simplePerlin2D879 = snoise(temp_cast_0);
        vec3 worldToObjDir883 = (normalMat * vec4((WindDirection).xzy,0.0)).xyz;
        vec3 ase_worldPos = pos.xyz * vec3(-1.0,1.0,1.0);
        vec2 panner706 = (1.0 * TimeY * (worldToObjDir883 * WindSpeedFloat).xy + (ase_worldPos).xz);
        float simplePerlin2D712 = snoise(((panner706 * 0.25 ) * WindTurbulenceFloat));
        float worldNoise905 = simplePerlin2D712;
        vec4 transform886 = (normalMat * vec4((WindDirection * (simplePerlin2D879 * (u_WindStrenght * ((vertexColor.a * worldNoise905) + (worldNoise905 * vertexColor.g)) * WindStrenghtFloat))),0.0));
        #ifdef WIND_ON
            vec4 staticSwitch897 = transform886;
        #else
            vec4 staticSwitch897 = vec4(0.0);
        #endif
        vertex.positionOS.xyz += staticSwitch897.xyz * vec3(-1.0,1.0,1.0);

        
        pos = (worldMat * vec4(vertex.positionOS, 1.0));
        vec3 positionWS = pos.xyz / pos.w;

        vec3 normalWS = normalize((normalMat * vec4(vertex.normalOS, 0.0)).xyz);

        vec4 positionCS = DepthPositionCS(positionWS, normalWS);
        gl_Position = remapPositionZ(positionCS);
    }
#endGLSL

#defineGLSL shadowPS

    #define SHADER_NAME ShadowCaster

    #include "DepthFrag.glsl";
    #include "Sprite3DFrag.glsl";
    #include "../Standard/glsl/Common.glsl";

    varying vec2 v_Texcoord0;

    void main()
    {
        vec4 c = tex2DGamma(texture2D(u_MainTex, v_Texcoord0));
        if(c.a < u_Cutoff)discard;
        gl_FragColor = getDepthColor();
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
    uniform vec3 WindDirection;
    uniform float WindSpeedFloat;
    uniform float WindTurbulenceFloat;
    uniform float WindStrenghtFloat;
    uniform float GrassWiggleFloat;

    void main()
    {
        PixelParams pixel;
        getPixelParams(pixel);

        vec4 c = tex2DGamma(texture2D(u_MainTex, v_Texcoord0));
        if(c.a < u_Cutoff)discard;

        vec3 normalWS = pixel.normalWS;
        vec4 positionCS = v_PositionCS;
        vec4 dephtNormal = encodeDepthNormal(positionCS, normalWS);

        gl_FragColor = dephtNormal;
    }
#endGLSL

GLSL End

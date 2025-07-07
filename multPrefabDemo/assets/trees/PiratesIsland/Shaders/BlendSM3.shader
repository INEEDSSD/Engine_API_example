Shader3D Start
{
    type:Shader3D
    name:BlendSM3
    enableInstancing:true,
    supportReflectionProbe:true,
    uniformMap:{
        u_Color: { type: Color, default: [1, 1, 1, 1] },
        u_Opacity: { type: Float, default: 1.0, range: [0.0, 1.0] },
        u_MainTex: { type: Texture2D, default:"white" },
        u_MainTex_ST: { type: Vector4, default: [1, 1, 0, 0] },
        u_BumpMap: { type: Texture2D, options: { define: "BUMPMAP" } },
        u_BumpMap_ST: { type: Vector4, default: [1, 1, 0, 0] },
        u_MainTex2: { type: Texture2D, default:"white" },
        u_MainTex2_ST: { type: Vector4, default: [1, 1, 0, 0] },
        u_BumpMap2: { type: Texture2D, options: { define: "BUMPMAP2" } },
        u_BumpMap2_ST: { type: Vector4, default: [1, 1, 0, 0] },

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
    #define SHADER_NAME Blend SM3

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
        
        initSH(pixel.normalWS);

        gl_Position = getPositionCS(pixel.positionWS);
        gl_Position = remapPositionZ(gl_Position);

        #ifdef FOG
            TRANSFER_FOG(gl_Position.z);
        #endif // FOG 
    }
#endGLSL

#defineGLSL LitFS
    #define SHADER_NAME Blend SM3

    #include "Color.glsl";
    #include "Scene.glsl";
    #include "Camera.glsl";
    #include "Sprite3DFrag.glsl";
    #include "ShadingCommon.glsl";
    #include "../Standard/glsl/StandardFrag.glsl";
    #include "../Standard/glsl/LambertLighting.glsl";

    SurfaceOutput frag(vec2 uv)
    {
        SurfaceOutput o;

        vec2 uv_MainTex = transformUV(uv,u_MainTex_ST);
        vec2 uv_MainTex2 = transformUV(uv,u_MainTex2_ST);
        #ifdef u_MainTex_Gamma
            vec4 tex = tex2DGamma(texture2D(u_MainTex, uv_MainTex));
        #else
            vec4 tex = tex2DLinear(texture2D(u_MainTex, uv_MainTex));
        #endif

        #ifdef u_MainTex2_Gamma
            vec4 tex2 = tex2DGamma(texture2D(u_MainTex2, uv_MainTex2));
        #else
            vec4 tex2 = tex2DLinear(texture2D(u_MainTex2, uv_MainTex2));
        #endif
        
        vec4 dest;
        float _Opacity = u_Opacity * tex.a;
        vec4 _Color = convertColor(u_Color);
        
        dest.r = tex2.r <= 0.5 ? 2.0 * tex.r * tex2.r : 1.0 - 2.0 * (1.0 - tex.r) * (1.0 - tex2.r);
        dest.g = tex2.g <= 0.5 ? 2.0 * tex.g * tex2.g : 1.0 - 2.0 * (1.0 - tex.g) * (1.0 - tex2.g);
        dest.b = tex2.b <= 0.5 ? 2.0 * tex.b * tex2.b : 1.0 - 2.0 * (1.0 - tex.b) * (1.0 - tex2.b);
        dest.rgb = mix(tex2.rgb, dest.rgb, _Opacity);
        dest.rgb *= _Color.rgb;

        o.Albedo = dest.rgb;
        o.Alpha = tex2.a * _Color.a; 
        

        vec4 norm = COLOR_NORMAL;
        #ifdef BUMPMAP
            vec2 uv_BumpMap = transformUV(uv,u_BumpMap_ST);
            // uv_BumpMap.x = 1.0;
            // uv_BumpMap.y = 0.0;
            #ifdef u_BumpMap_Gamma
                norm = tex2DGamma(texture2D(u_BumpMap,uv_BumpMap));
            #else
                norm = tex2DLinear(texture2D(u_BumpMap,uv_BumpMap));
            #endif
        #endif

        vec4 norm2 = COLOR_NORMAL;
        #ifdef BUMPMAP
            vec2 uv_BumpMap2 = transformUV(uv,u_BumpMap2_ST);
            // uv_BumpMap2.x = 1.0;
            // uv_BumpMap2.y = 0.0;
            #ifdef u_BumpMap2_Gamma
                norm2 = tex2DGamma(texture2D(u_BumpMap2,uv_BumpMap2));
            #else
                norm2 = tex2DLinear(texture2D(u_BumpMap2,uv_BumpMap2));
            #endif
        #endif
        
        dest.r = norm2.r <= 0.5 ? 2.0 * norm.r * norm2.r : 1.0 - 2.0 * (1.0 - norm.r) * (1.0 - norm2.r);
        dest.g = norm2.g <= 0.5 ? 2.0 * norm.g * norm2.g : 1.0 - 2.0 * (1.0 - norm.g) * (1.0 - norm2.g);
        dest.b = norm2.b <= 0.5 ? 2.0 * norm.b * norm2.b : 1.0 - 2.0 * (1.0 - norm.b) * (1.0 - norm2.b);
        dest.a = norm2.a <= 0.5 ? 2.0 * norm.a * norm2.a : 1.0 - 2.0 * (1.0 - norm.a) * (1.0 - norm2.a);
        dest = mix(norm2, dest, _Opacity);
        o.Normal = normalize(getTBN() * UnpackNormalmapRGorAG2(dest));

        return o;
    }

    void main()
    {
        // vec2 uv_MainTex = transformUV(v_Texcoord0,u_MainTex_ST);
        // vec2 uv_MainTex2 = transformUV(v_Texcoord0,u_MainTex2_ST);
        // #ifdef u_MainTex_Gamma
        //     vec4 tex = tex2DGamma(texture2D(u_MainTex, uv_MainTex));
        // #else
        //     vec4 tex = tex2DLinear(texture2D(u_MainTex, uv_MainTex));
        // #endif

        // #ifdef u_MainTex2_Gamma
        //     vec4 tex2 = tex2DGamma(texture2D(u_MainTex2, uv_MainTex2));
        // #else
        //     vec4 tex2 = tex2DLinear(texture2D(u_MainTex2, uv_MainTex2));
        // #endif
        
        // vec4 dest;
        // float _Opacity = u_Opacity * tex.a;
        // vec4 _Color = convertColor(u_Color);
        
        // dest.r = tex2.r <= 0.5 ? 2.0 * tex.r * tex2.r : 1.0 - 2.0 * (1.0 - tex.r) * (1.0 - tex2.r);
        // dest.g = tex2.g <= 0.5 ? 2.0 * tex.g * tex2.g : 1.0 - 2.0 * (1.0 - tex.g) * (1.0 - tex2.g);
        // dest.b = tex2.b <= 0.5 ? 2.0 * tex.b * tex2.b : 1.0 - 2.0 * (1.0 - tex.b) * (1.0 - tex2.b);
        // dest.rgb = mix(tex2.rgb, dest.rgb, _Opacity);
        // dest.rgb *= _Color.rgb;

        // vec3 Albedo = dest.rgb;
        // float Alpha = tex2.a * _Color.a; 
        

        // vec4 norm = COLOR_NORMAL;
        // #ifdef BUMPMAP
        //     vec2 uv_BumpMap = transformUV(v_Texcoord0,u_BumpMap_ST);
        //     // uv_BumpMap.x = 1.0;
        //     // uv_BumpMap.y = 0.0;
        //     #ifdef u_BumpMap_Gamma
        //         norm = tex2DGamma(texture2D(u_BumpMap,uv_BumpMap));
        //     #else
        //         norm = tex2DLinear(texture2D(u_BumpMap,uv_BumpMap));
        //     #endif
        // #endif

        // vec4 norm2 = COLOR_NORMAL;
        // #ifdef BUMPMAP
        //     vec2 uv_BumpMap2 = transformUV(v_Texcoord0,u_BumpMap2_ST);
        //     uv_BumpMap2.x = 1.0;
        //     uv_BumpMap2.y = 0.0;
        //     #ifdef u_BumpMap2_Gamma
        //         norm2 = tex2DGamma(texture2D(u_BumpMap2,uv_BumpMap2));
        //     #else
        //         norm2 = tex2DLinear(texture2D(u_BumpMap2,uv_BumpMap2));
        //     #endif
        // #endif
        
        // dest.r = norm2.r <= 0.5 ? 2.0 * norm.r * norm2.r : 1.0 - 2.0 * (1.0 - norm.r) * (1.0 - norm2.r);
        // dest.g = norm2.g <= 0.5 ? 2.0 * norm.g * norm2.g : 1.0 - 2.0 * (1.0 - norm.g) * (1.0 - norm2.g);
        // dest.b = norm2.b <= 0.5 ? 2.0 * norm.b * norm2.b : 1.0 - 2.0 * (1.0 - norm.b) * (1.0 - norm2.b);
        // dest.a = norm2.a <= 0.5 ? 2.0 * norm.a * norm2.a : 1.0 - 2.0 * (1.0 - norm.a) * (1.0 - norm2.a);
        // dest = mix(norm2, dest, _Opacity);
        // vec3 Normal = normalize(getTBN() * UnpackNormalmapRGorAG2(dest));
        SurfaceOutput o = frag(v_Texcoord0);
        vec4 c = LambertDirectionLighting(o) + LambertPointLighting(o);
        // c = LambertPointLighting(o1);
        #ifdef FOG
            APPLY_FOG(c.rgb);
        #endif
        gl_FragColor = OutputColor(c);
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

    #define SHADER_NAME ShadowCaster

    #include "DepthFrag.glsl";

    varying vec2 v_Texcoord0;

    void main()
    {
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

    #define SHADER_NAME BlendSM3_DepthNormal

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

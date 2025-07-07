#if !defined(CommonVS_lib)
    #define CommonVS_lib

#include "./Common.glsl";

varying vec3 v_SH;
uniform vec4 u_SHAr;
uniform vec4 u_SHAg;
uniform vec4 u_SHAb;
uniform vec4 u_SHBr;
uniform vec4 u_SHBg;
uniform vec4 u_SHBb;
uniform vec4 u_SHC;

vec3 SHEvalLinearL0L1(in vec4 normal)
{
    vec3 x;
    x.r = dot(u_SHAr,normal);
    x.g = dot(u_SHAg,normal);
    x.b = dot(u_SHAb,normal);
    return x;
}

vec3 SHEvalLinearL2(in vec4 normal)
{
    vec3 x1, x2;
    vec4 vB = normal.xyzz * normal.yzzx;
    x1.r = dot(u_SHBr, vB);
    x1.g = dot(u_SHBg, vB);
    x1.b = dot(u_SHBb, vB);

    float vC = normal.x * normal.x - normal.y * normal.y;
    x2 = u_SHC.rgb * vC;

    vec3 x = x1 + x2;
    return x;
}

vec3 ShadeSH9(vec4 normal)
{
    vec3 res = SHEvalLinearL0L1(normal);
    res += SHEvalLinearL2(normal);

    #ifdef COLORSPACE_GAMMA
        res = LinearToGammaSpace(res);
    #endif

    return res;
}

void initSH(vec3 normalWS)
{
    v_SH = vec3(0.0);
    #ifndef LIGHTMAP
        #if defined(LOW_SHADER_TARGET) 
            v_SH += max(vec3(0.0),ShadeSH9(vec4(normalWS * vec3(-1.0,1.0,1.0),1.0)));
        #else
            v_SH = SHEvalLinearL2(vec4(normalWS * vec3(-1.0,1.0,1.0),1.0));
        #endif
    #endif
}

vec4 tex2DLod(sampler2D sp,vec2 uv,float lod)
{
    #ifdef GRAPHICS_API_GLES3
        vec4 color = textureLod(sp,uv,lod);
    #else
        vec4 color = texture2DLod(sp,uv,lod);
    #endif
    return color;
}

vec4 tex2DLodGamma(sampler2D sp,vec2 uv,float lod)
{
    vec4 color = tex2DLod(sp,uv,lod);
    samplerToGamma(color);
    return color;
}


vec4 tex2DLodLinear(sampler2D sp,vec2 uv,float lod)
{
    vec4 color = tex2DLod(sp,uv,lod);
    samplerToLinear(color);
    return color;
}

#ifdef FOG
    varying float v_fogFactor;
    void TRANSFER_FOG(in float fact)
    {
        float lerpFact = 0.0;
        #ifdef FOG_EXP
            lerpFact = fact * (u_FogParams.z / log(2.0));
            lerpFact = exp2(-lerpFact);
        #elif defined(FOG_EXP2)
            lerpFact = fact * (u_FogParams.z / sqrt(log(2.0)));
            lerpFact = exp2(-lerpFact * lerpFact);
        #else // default FOG_LINEAR
            lerpFact = (-1.0 * fact / (u_FogParams.y - u_FogParams.x) + u_FogParams.y / (u_FogParams.y - u_FogParams.x));
        #endif
        v_fogFactor = lerpFact;
    }
#endif

#endif // CommonVS_lib
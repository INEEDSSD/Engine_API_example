#if !defined(Standard_frag_lib)
    #define Standard_frag_lib

    #include "./CommonFS.glsl";
    #include "./PBSLighting.glsl";
    

    //varying vec4 tSpace0;
    //varying vec4 tSpace1;
    //varying vec4 tSpace2;

    //varying vec3 v_BiNormalWS2;
    //varying float v_TangentW;

vec3 getWorldPos()
{
    vec3 pos = v_PositionWS;
    pos.x *= -1.0;
    return pos;
}

vec3 getWorldNormal()
{
    vec3 normal = v_NormalWS;
    normal.x *= -1.0;
    return normal;
}

vec3 getWorldTangent(){
    vec3 tangent = v_TangentWS;
    tangent.x *= -1.0;
    return tangent;
}

vec3 getWorldBiTangent()
{
    vec3 tangent = v_BiNormalWS;
    tangent.yz *=-1.0;
    return tangent;
}

mat3 getTBN()
{
    mat3 TBN = mat3(getWorldTangent(), getWorldBiTangent(), getWorldNormal());
    return TBN;
}

vec4 FragStandard(SurfaceOutputStandard s,vec3 viewDir,vec3 positionWS)
{
    GI gi;
    LightingStandardGI(s,gi);
    return LightingStandard(s,viewDir,positionWS,gi);
}

vec4 FragStandardSpecular(SurfaceOutputStandardSpecular s,vec3 viewDir,vec3 positionWS)
{
    GI gi;
    LightingStandardSpecularGI(s,gi);
    return LightingStandardSpecular(s,viewDir,positionWS,gi);
}

#endif // Standard_frag_lib
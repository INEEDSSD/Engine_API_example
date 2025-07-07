#if !defined(StandardUtil_lib)
    #define StandardUtil_lib

#include "./Common.glsl";

float LerpOneTo(float b, float t)
{
    float oneMinusT = 1.0 - t;
    return oneMinusT + b * t;
}

float OneMinusReflectivityFromMetallic(float metallic)
{
    float oneMinusDielectricSpec = ColorSpaceDielectricSpec.a;
    return oneMinusDielectricSpec - metallic * oneMinusDielectricSpec;
}

vec3 DiffuseAndSpecularFromMetallic(vec3 albedo, float metallic, out vec3 specColor, out float oneMinusReflectivity)
{
    specColor = mix(ColorSpaceDielectricSpec.rgb, albedo, metallic);
    oneMinusReflectivity = OneMinusReflectivityFromMetallic(metallic);
    return albedo * oneMinusReflectivity;
}

float SpecularStrength(vec3 specular)
{
    return max(max(specular.r, specular.g), specular.b);
}

vec3 EnergyConservationBetweenDiffuseAndSpecular(vec3 albedo, vec3 specColor, out float oneMinusReflectivity)
{
    oneMinusReflectivity = 1.0 - SpecularStrength(specColor);
    return albedo * oneMinusReflectivity;
}

vec3 PreMultiplyAlpha(vec3 diffColor, float alpha, float oneMinusReflectivity, out float outModifiedAlpha)
{
    #ifdef ALPHAPREMULTIPLY_ON
        diffColor *= alpha;
        outModifiedAlpha = 1.0 - oneMinusReflectivity + alpha * oneMinusReflectivity;
    #else
        outModifiedAlpha = alpha;
    #endif
    return diffColor;
}

#ifdef SPECCUBE_BOX_PROJECTION

vec3 BoxProjectedCubemapDirection(vec3 r,vec3 positionWS)
{
    vec3 boxCenter = u_SpecCubeProbePosition;
    vec3 boxMin = u_SpecCubeBoxMin;
    vec3 boxMax = u_SpecCubeBoxMax;

    /**
    float tmp = boxMin.x;
    boxMin.x = boxMax.x;
    boxMax.x = tmp;
    **/

    vec3 nr = normalize(r);
    vec3 rbmax = (boxMax - positionWS) / nr;
    vec3 rbmin = (boxMin - positionWS) / nr;
    vec3 rbminmax = mix(rbmin, rbmax, step(0.0,nr));
    float fa = min(min(rbminmax.x, rbminmax.y), rbminmax.z);

    vec3 worldPos = (positionWS - boxCenter) * vec3(-1.0,1.0,1.0);

    /**
    boxMax = vec3(-28.0079200,14.5801900,-8.6227070);
    boxMin = vec3(-3.9999980,-0.0900002,-19.7256400);
    rbmax = (boxMax - positionWS) * vec3(-1.0,1.0,1.0) / nr;
    rbmin = (boxMin - positionWS) * vec3(-1.0,1.0,1.0) / nr;
    rbminmax = mix(rbmin, rbmax, step(0.0,nr));
    fa = min(min(rbminmax.x, rbminmax.y), rbminmax.z);
    //return vec3(rbmin) * 0.01;
    **/

    return worldPos + nr * fa;
}

#endif // SPECCUBE_BOX_PROJECTION

#endif // StandardUtil_lib
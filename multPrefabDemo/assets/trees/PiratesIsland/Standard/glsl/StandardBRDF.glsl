#if !defined(StandardBRDF_lib)
    #define StandardBRDF_lib

float PerceptualRoughnessToRoughness(float perceptualRoughness)
{
    return perceptualRoughness * perceptualRoughness;
}

float SmoothnessToPerceptualRoughness(float smoothness)
{
    return (1.0 - smoothness);
}

//vec3 SafeNormalize(vec3 inVec)
//{
//    float dp3 = max(0.001, dot(inVec, inVec));
//    return inVec * rsqrt(dp3);
//}

float Pow5(float x)
{
    return x*x * x*x * x;
}

vec3 FresnelTerm(vec3 F0, float cosA)
{
    float t = Pow5(1.0 - cosA);
    return F0 + (1.0 - F0) * t;
}
vec3 FresnelLerp(vec3 F0, vec3 F90, float cosA)
{
    float t = Pow5(1.0 - cosA);
    return mix(F0, F90, t);
}

float DisneyDiffuse(float NdotV, float NdotL, float LdotH, float perceptualRoughness)
{
    float fd90 = 0.5 + 2.0 * LdotH * LdotH * perceptualRoughness;
    float lightScatter   = (1.0 + (fd90 - 1.0) * Pow5(1.0 - NdotL));
    float viewScatter    = (1.0 + (fd90 - 1.0) * Pow5(1.0 - NdotV));

    return lightScatter * viewScatter;
}

float SmithJointGGXVisibilityTerm (float NdotL, float NdotV, float roughness)
{
    float a = roughness;
    float lambdaV = NdotL * (NdotV * (1.0 - a) + a);
    float lambdaL = NdotV * (NdotL * (1.0 - a) + a);
    return 0.5 / (lambdaV + lambdaL + 1e-5);
}

float GGXTerm (float NdotH, float roughness)
{
    float a2 = roughness * roughness;
    float d = (NdotH * a2 - NdotH) * NdotH + 1.0;
    return INV_PI * a2 / (d * d + 1e-7);
}

vec4 BRDF1_PBS(vec3 diffColor, vec3 specColor, float oneMinusReflectivity, float smoothness,vec3 normal, vec3 viewDir,Light light,GI gi)
{
    float perceptualRoughness = SmoothnessToPerceptualRoughness (smoothness);
    vec3 lightDir = light.dir;
    lightDir.yz *= -1.0;
    viewDir.x *= -1.0;
    vec3 halfDir = SafeNormalize (vec3(lightDir) + viewDir);

    float nv = abs(dot(normal, viewDir));

    float nl = saturate(dot(normal, lightDir));
    float nh = saturate(dot(normal, halfDir));

    float lv = saturate(dot(lightDir, viewDir));
    float lh = saturate(dot(lightDir, halfDir));

    float diffuseTerm = DisneyDiffuse(nv, nl, lh, perceptualRoughness) * nl;

    float roughness = PerceptualRoughnessToRoughness(perceptualRoughness);

    roughness = max(roughness, 0.002);
    float V = SmithJointGGXVisibilityTerm(nl, nv, roughness);
    float D = GGXTerm (nh, roughness);

    float specularTerm = V * D * PI;

    #ifdef COLORSPACE_GAMMA
        specularTerm = sqrt(max(1e-4, specularTerm));
    #endif

    specularTerm = max(0.0, specularTerm * nl);

    #ifdef SPECULARHIGHLIGHTS_OFF
        specularTerm = 0.0;
    #endif

    float surfaceReduction;
    #ifdef COLORSPACE_GAMMA
        surfaceReduction = 1.0 - 0.28 * roughness * perceptualRoughness;
    #else
        surfaceReduction = 1.0 / (roughness * roughness + 1.0);
    #endif

    //specularTerm *= any(specColor) ? 1.0 : 0.0;

    vec3 gi_diffuse = gi.indirect.diffuse;
    vec3 gi_specular = gi.indirect.specular;
    vec3 lightColor = light.color;
    #ifdef COLORSPACE_GAMMA
        //lightColor = linearToGamma(lightColor);
        //gi_diffuse = linearToGamma(gi_diffuse);
    #endif

    float grazingTerm = saturate(smoothness + (1.0 - oneMinusReflectivity));
    vec3 color =   diffColor * (gi_diffuse + lightColor * diffuseTerm)
                    + specularTerm * lightColor * FresnelTerm(specColor, lh)
                    + surfaceReduction * gi_specular * FresnelLerp(specColor, vec3(grazingTerm), nv);

    return vec4(color ,1.0);
}

vec4 BRDF1_PBS2(vec3 diffColor, vec3 specColor, float oneMinusReflectivity, float smoothness,vec3 normal, vec3 viewDir,Light light)
{
    float perceptualRoughness = SmoothnessToPerceptualRoughness (smoothness);
    vec3 lightDir = -light.dir;
    vec3 halfDir = SafeNormalize (vec3(lightDir) + viewDir);

    float nv = abs(dot(normal, viewDir));

    float nl = saturate(dot(normal, lightDir));
    float nh = saturate(dot(normal, halfDir));

    float lv = saturate(dot(lightDir, viewDir));
    float lh = saturate(dot(lightDir, halfDir));

    float diffuseTerm = DisneyDiffuse(nv, nl, lh, perceptualRoughness) * nl;

    float roughness = PerceptualRoughnessToRoughness(perceptualRoughness);

    roughness = max(roughness, 0.002);
    float V = SmithJointGGXVisibilityTerm(nl, nv, roughness);
    float D = GGXTerm (nh, roughness);

    float specularTerm = V * D * PI;

    #ifdef COLORSPACE_GAMMA
        specularTerm = sqrt(max(1e-4, specularTerm));
    #endif

    specularTerm = max(0.0, specularTerm * nl);

    float surfaceReduction;
    #ifdef COLORSPACE_GAMMA
        surfaceReduction = 1.0 - 0.28 * roughness * perceptualRoughness;
    #else
        surfaceReduction = 1.0 / (roughness * roughness + 1.0);
    #endif

    //specularTerm *= any(specColor) ? 1.0 : 0.0;

    vec3 gi_diffuse = vec3(1.0);
    vec3 gi_specular = vec3(0.0);
    vec3 lightColor = light.color;
    #ifdef COLORSPACE_GAMMA
        lightColor = linearToGamma(lightColor);
        //gi_diffuse = linearToGamma(gi_diffuse);
    #endif

    float grazingTerm = saturate(smoothness + (1.0 - oneMinusReflectivity));
    vec3 color =   diffColor * (gi_diffuse + lightColor * diffuseTerm)
                    + specularTerm * lightColor * FresnelTerm(specColor, lh)
                    + surfaceReduction * gi_specular * FresnelLerp(specColor, vec3(grazingTerm), nv);

    return vec4(color,1.0);
}

#endif // StandardBRDF_lib
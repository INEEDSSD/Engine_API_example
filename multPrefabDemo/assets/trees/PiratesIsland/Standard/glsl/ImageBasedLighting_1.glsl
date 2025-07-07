#if !defined(ImageBasedLighting_lib)
    #define ImageBasedLighting_lib

struct GlossyEnvironmentData
{
    float    roughness;
    vec3   reflUVW;
};


GlossyEnvironmentData GlossyEnvironmentSetup(float Smoothness,vec3 worldViewDir,vec3 Normal,vec3 fresnel0)
{
    GlossyEnvironmentData g;
    g.roughness = 1.0 - Smoothness;
    g.reflUVW = reflect(-worldViewDir,Normal);
    return g;
}

vec3 GlossyEnvironment(vec4 hdr,GlossyEnvironmentData glossIn)
{
    float perceptualRoughness = glossIn.roughness;
    perceptualRoughness = perceptualRoughness * (1.7 - 0.7 * perceptualRoughness);
    vec3 R = glossIn.reflUVW;
    vec3 color = vec3(0.0);
    #ifdef GI_IBL
        float mip = perceptualRoughness * u_IBLRoughnessLevel;
        vec4 reflectSampler = textureCubeLodEXT(u_IBLTex,R,mip);
        #ifdef IBL_RGBD
            color = decodeRGBD(reflectSampler);
        #else
            color = reflectSampler.rgb;
        #endif
    #endif
    color *= pow(u_ReflectionIntensity,2.4);
    return color;
    //return DecodeHDR(rgbm, hdr);
}

#endif // ImageBasedLighting_lib
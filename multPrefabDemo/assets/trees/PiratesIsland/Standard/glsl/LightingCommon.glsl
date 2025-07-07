#if !defined(LightingCommon_lib)
    #define LightingCommon_lib

    #include "Lighting.glsl";

struct SurfaceOutput {
    vec3 Albedo;
    vec3 Normal;
    vec3 Emission;
    float Specular;
    float Gloss;
    float Alpha;
};

struct Indirect
{
    vec3 diffuse;
    vec3 specular;
};

struct GI
{
    Light light;
    Indirect indirect;
};

Light MainLight()
{
    Light light;
    #ifdef DIRECTIONLIGHT
        float v = (float(0) + 0.5) / float(CalculateLightCount);
        vec4 p1 = texture2D(u_LightBuffer, vec2(0.125, v));
        vec4 p2 = texture2D(u_LightBuffer, vec2(0.375, v));
        light.color = p1.rgb;
        light.dir = p2.rgb;
        light.attenuation = 1.0;
        #ifdef COLORSPACE_GAMMA
            light.color = linearToGamma(light.color);
        #endif
    #endif
    return light;
}

#ifdef POINTLIGHT

Light getLightByPoint(PointLight pointLight,vec3 positionWS)
{
    Light light;
    vec3 lightVector = positionWS - pointLight.position;
    float atten = attenuation(lightVector,1.0 / pointLight.range);
    vec3 color = pointLight.color;
    #ifdef COLORSPACE_GAMMA
        color = linearToGamma(color);
    #endif
    light.dir = normalize(lightVector);
    light.attenuation = pointLight.attenuation;
    light.color = color * atten;
    return light;
}

#endif

#ifdef SPOTLIGHT
Light getLightBySpot(in SpotLight spotLight, in vec3 positionWS)
{
    vec3 lightDirection = positionWS - spotLight.position;
    vec3 normalizeLightDir = normalize(lightDirection);

    vec2 cosAngles = cos(vec2(spotLight.spot, spotLight.spot * 0.5) * 0.5);
    float dirAttenuate = dot(spotLight.direction, normalizeLightDir);
    dirAttenuate *= smoothstep(cosAngles.x, cosAngles.y, dirAttenuate);

    float rangeAttenuate = attenuation(lightDirection, 1.0 / spotLight.range);

    Light light;
    vec3 color = spotLight.color;
    #ifdef COLORSPACE_GAMMA
        color = linearToGamma(color);
    #endif
    //todo
    light.color = color * rangeAttenuate * dirAttenuate;
    light.dir = normalizeLightDir;
    light.attenuation = spotLight.attenuation;
    return light;
}
#endif

/**
Light getMainLight()
{
    Light light;
    #ifdef DIRECTIONLIGHT
        DirectionLight dl = getDirectionLight(0,v_PositionWS);
        light.color = dl.color;
        light.dir = dl.direction;
        light.attenuation = dl.attenuation;
        #ifdef COLORSPACE_GAMMA
            light.color = linearToGamma(dl.color) * dl.attenuation;
        #endif
    #endif
    return light;
}
**/

#endif // LightingCommon_lib
#if !defined(LambertLighting_lib)
    #define LambertLighting_lib

#include "globalIllumination.glsl";
#include "./LightingCommon.glsl";
#include "./ImageBasedLighting.glsl";
#include "./GlobalIllumination.glsl";

vec4 Lighting(SurfaceOutput s,Light light)
{
    vec3 lightDir = normalize(light.dir * vec3(1.0,-1.0,-1.0));
    vec3 lightColor = linearToGamma(light.color) * light.attenuation;
    float diff = max(0.0,dot(s.Normal,lightDir));
    vec4 c;
    c.rgb = s.Albedo * lightColor * diff;
    c.a = s.Alpha;
    return c;
}

vec4 LambertDirectionLighting(SurfaceOutput s)
{
    GI gi = GI_Base(1.0,s.Normal);
    vec4 lightColor = vec4(0.0);
    #ifdef DIRECTIONLIGHT
        for (int i = 0; i < CalculateLightCount; i++)
        {
            if (i >= DirectionCount) break;
            DirectionLight directionLight = getDirectionLight(i, v_PositionWS);
            if (directionLight.lightMode != LightMode_Mix)
            {
                Light light = getLight(directionLight);
                gi.light = light;
                #ifdef COLORSPACE_GAMMA
                    gi.light.color = linearToGamma(light.color) * light.attenuation;
                #endif
                lightColor.rgb += Lighting(s,light).rgb;
            }   
        }
    #endif // DIRECTIONLIGHT

    vec4 c = vec4(s.Albedo * gi.indirect.diffuse,0.0);
    c.rgb += lightColor.rgb;
    return c;
}

vec4 LambertPointLighting(SurfaceOutput s)
{
    GI gi;
    vec4 lightColor = vec4(0.0);
    vec3 positionWS = v_PositionWS;
    #if defined(POINTLIGHT) || defined(SPOTLIGHT)
        ivec4 clusterInfo = getClusterInfo(u_View, u_Viewport, positionWS, gl_FragCoord, u_ProjectionParams);
        #ifdef POINTLIGHT
            for (int i = 0; i < CalculateLightCount; i++)
            {
                #ifdef BREAK_TEXTURE_SAMPLE
                    if (i >= clusterInfo.x) break; //兼容WGSL
                #endif
                PointLight pointLight = getPointLight(i, clusterInfo, positionWS);
                if (pointLight.lightMode != LightMode_Mix)
                {
                    Light light = getLightByPoint(pointLight,positionWS);
                    gi.light = light;
                    gi.indirect.diffuse *= 0.0;
                    gi.indirect.specular *= 0.0;
                    #ifndef BREAK_TEXTURE_SAMPLE
                        if (i < clusterInfo.x)
                    #endif
                    lightColor.rgb += Lighting(s,light).rgb;
                }
                
            }
        #endif // POINTLIGHT
    #endif // POINTLIGHT || SPOTLIGHT

    vec4 c = vec4(lightColor.rgb,0.0);
    return c;
}

vec4 LambertLight(vec3 Albedo,vec3 Normal,float Alpha)
{
    Light light = MainLight();
    float attenuation = 1.0;
    #if defined(CALCULATE_SHADOWS)
        vec4 shadowCoord = getShadowCoord(v_PositionWS);
	    float shadowAttenuation = sampleShadowmap(shadowCoord);
	    attenuation = shadowAttenuation;
	#endif // CALCULATE_SHADOWS
    vec3 lightDir = normalize(light.dir * vec3(1.0,-1.0,-1.0));
    vec3 lightColor = light.color * attenuation;
    float diff = max(0.0,dot(Normal,lightDir));

    vec4 c;
    c.rgb = Albedo * lightColor * diff;
    GI gi = GI_Base(1.0,Normal);
    c.rgb += Albedo * gi.indirect.diffuse;
    c.a = Alpha;
/**
    vec3 positionWS = v_PositionWS;
    #if defined(POINTLIGHT) || defined(SPOTLIGHT)
        ivec4 clusterInfo = getClusterInfo(u_View, u_Viewport, positionWS, gl_FragCoord, u_ProjectionParams);
        #ifdef POINTLIGHT
            for (int i = 0; i < CalculateLightCount; i++)
            {
                #ifdef BREAK_TEXTURE_SAMPLE
                    if (i >= clusterInfo.x) break; //兼容WGSL
                #endif
                PointLight pointLight = getPointLight(i, clusterInfo, positionWS);
                if (pointLight.lightMode != LightMode_Mix)
                {
                    Light light = getLightByPoint(pointLight,positionWS);
                    gi.light = light;
                    gi.indirect.diffuse *= 0.0;
                    gi.indirect.specular *= 0.0;
                    #ifndef BREAK_TEXTURE_SAMPLE
                        if (i < clusterInfo.x)
                    #endif
                    c.rgb = Lighting(Albedo,Normal,Alpha,light).rgb;
                }
                
            }
        #endif // POINTLIGHT
    #endif // POINTLIGHT || SPOTLIGHT
**/
    //c.rgb = vec3(gi.indirect.diffuse);
    return c;
}

#endif // LambertLighting_lib
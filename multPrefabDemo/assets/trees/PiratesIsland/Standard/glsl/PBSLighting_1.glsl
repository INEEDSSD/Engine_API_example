#if !defined(PBSLighting_lib)
    #define PBSLighting_lib

    #include "globalIllumination.glsl";
    #include "./LightingCommon.glsl";
    #include "./StandardUtil.glsl";
    #include "./StandardBRDF.glsl";
    #include "./ImageBasedLighting.glsl";
    #include "./GlobalIllumination.glsl";

struct SurfaceOutputStandard{
    vec3 Albedo;
    vec3 Normal;
    vec3 Emission;
    float Metallic;
    float Smoothness;
    float Occlusion;
    float Alpha;
};

SurfaceOutputStandard createSurfaceOutputStandard()
{
    SurfaceOutputStandard o;
    o.Albedo = vec3(0.0);
    o.Emission = vec3(0.0);
    o.Normal = vec3(0.0,0.0,1.0);
    o.Metallic = 0.0;
    o.Smoothness = 0.0;
    o.Alpha = 0.0;
    o.Occlusion = 1.0;
    return o;
}

void LightingStandardGI(SurfaceOutputStandard s,inout GI gi)
{
    vec3 worldViewDir = getViewDirection(v_PositionWS);
    worldViewDir.x *= -1.0;
    GlossyEnvironmentData g = GlossyEnvironmentSetup(s.Smoothness,worldViewDir,s.Normal,mix(ColorSpaceDielectricSpec.rgb,s.Albedo,s.Metallic));
    gi = GlobalIllumination(s.Occlusion,s.Normal,g);
}

vec4 LightingStandard(SurfaceOutputStandard s, vec3 viewDir,vec3 positionWS,GI gi)
{
    s.Normal = normalize(s.Normal);

    //s.Normal = vec3(0.0,0.0,1.0);
    //vec3 normal = s.Normal;
    vec3 xx = s.Albedo;
    //xx = gi.indirect.diffuse;
    float alpha;

    float oneMinusReflectivity;
    vec3 specColor;
    s.Albedo = DiffuseAndSpecularFromMetallic(s.Albedo, s.Metallic, specColor,oneMinusReflectivity);
    
    float outputAlpha;
    s.Albedo = PreMultiplyAlpha(s.Albedo, s.Alpha, oneMinusReflectivity,outputAlpha);

    vec4 c = BRDF1_PBS(s.Albedo, specColor, oneMinusReflectivity, s.Smoothness, s.Normal, viewDir, gi.light,gi);
    
    #ifdef DIRECTIONLIGHT
    for (int i = 1; i < CalculateLightCount; i++)
	{
        if (i >= DirectionCount) break;
	        DirectionLight directionLight = getDirectionLight(i, v_PositionWS);
            if (directionLight.lightMode != LightMode_Mix)
            {
                Light light = getLight(directionLight);
                gi.light = light;
                #ifdef COLORSPACE_GAMMA
                    gi.light.color = linearToGamma(light.color) * light.attenuation;
                    gi.indirect.diffuse *= 0.0;
                    gi.indirect.specular *= 0.0;
                #endif
                c.rgb += BRDF1_PBS(s.Albedo, specColor, oneMinusReflectivity, s.Smoothness, s.Normal, viewDir, gi.light,gi).rgb;
            }
            
	}
    #endif // DIRECTIONLIGHT

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
                    c.rgb += BRDF1_PBS(s.Albedo, specColor, oneMinusReflectivity, s.Smoothness, s.Normal, viewDir, gi.light,gi).rgb;
                }
                
            }
        #endif // POINTLIGHT

        #ifdef SPOTLIGHT
                for (int i = 0; i < CalculateLightCount; i++)
                {
                    if (i < clusterInfo.y)
                    {
                        SpotLight spotLight = getSpotLight(i,clusterInfo,positionWS);
                        if (spotLight.lightMode == LightMode_Mix)
                        {
                            continue;
                        }
                        Light light = getLightBySpot(spotLight,positionWS);
                        gi.light = light;
                        gi.indirect.diffuse *= 0.0;
                        gi.indirect.specular *= 0.0;
                        c.rgb += BRDF1_PBS(s.Albedo, specColor, oneMinusReflectivity, s.Smoothness, s.Normal, viewDir,gi.light,gi).rgb;
                    }
                }
        #endif // SPOTLIGHT
    #endif // POINTLIGHT || SPOTLIGHT
    
    c.rgb += s.Emission;
    c.a = outputAlpha;

    //c.rgb = vec3(xx);
    //c.a = 1.0;
    return c;
}

struct SurfaceOutputStandardSpecular
{
    vec3 Albedo;
    vec3 Specular;
    vec3 Normal;
    vec3 Emission;
    float Smoothness;
    float Occlusion;
    float Alpha;
};

SurfaceOutputStandardSpecular createSurfaceOutputStandardSpecular()
{
    SurfaceOutputStandardSpecular o;
    o.Albedo = vec3(0.0);
    o.Emission = vec3(0.0);
    o.Normal = vec3(0.0,0.0,1.0);
    o.Specular = vec3(0.0);
    o.Smoothness = 0.0;
    o.Alpha = 0.0;
    o.Occlusion = 1.0;
    return o;
}


void LightingStandardSpecularGI(SurfaceOutputStandardSpecular s,inout GI gi)
{

    vec3 worldViewDir = getViewDirection(v_PositionWS);
    worldViewDir.x *= -1.0;
    GlossyEnvironmentData g = GlossyEnvironmentSetup(s.Smoothness,worldViewDir,s.Normal,s.Specular);
    gi = GlobalIllumination(s.Occlusion,s.Normal,g);
}

vec4 LightingStandardSpecular(SurfaceOutputStandardSpecular s, vec3 viewDir,vec3 positionWS,GI gi)
{
    s.Normal = normalize(s.Normal);
    //vec3 xx = s.Albedo;
    //vec3 diffuse = gi.indirect.diffuse;
    vec3 specular = gi.indirect.specular;

    float oneMinusReflectivity;
    s.Albedo = EnergyConservationBetweenDiffuseAndSpecular(s.Albedo, s.Specular,oneMinusReflectivity);

    float outputAlpha;
    s.Albedo = PreMultiplyAlpha(s.Albedo,s.Alpha,oneMinusReflectivity,outputAlpha);

    vec4 c = BRDF1_PBS(s.Albedo, s.Specular, oneMinusReflectivity, s.Smoothness, s.Normal, viewDir,gi.light,gi);
    
    #if defined(POINTLIGHT) || defined(SPOTLIGHT)
        ivec4 clusterInfo = getClusterInfo(u_View, u_Viewport, positionWS, gl_FragCoord, u_ProjectionParams);
        #ifdef POINTLIGHT
            for (int i = 0; i < CalculateLightCount; i++)
            {
                if (i < clusterInfo.x)
                {
                    PointLight pointLight = getPointLight(i, clusterInfo, positionWS);
                    if (pointLight.lightMode == LightMode_Mix)
                    {
                        continue;
                    }
                    Light light = getLightByPoint(pointLight,positionWS);
                    gi.light = light;
                    gi.indirect.diffuse *= 0.0;
                    gi.indirect.specular *= 0.0;
                    c.rgb += BRDF1_PBS(s.Albedo, s.Specular, oneMinusReflectivity, s.Smoothness, s.Normal, viewDir,gi.light,gi).rgb;
                }
            }
        #endif // POINTLIGHT

        #ifdef SPOTLIGHT
            for (int i = 0; i < CalculateLightCount; i++)
            {
                if (i < clusterInfo.y)
                {
                    SpotLight spotLight = getSpotLight(i,clusterInfo,positionWS);
                    if (spotLight.lightMode == LightMode_Mix)
                    {
                        continue;
                    }
                    Light light = getLightBySpot(spotLight,positionWS);
                    gi.light = light;
                    gi.indirect.diffuse *= 0.0;
                    gi.indirect.specular *= 0.0;
                    c.rgb += BRDF1_PBS(s.Albedo, s.Specular, oneMinusReflectivity, s.Smoothness, s.Normal, viewDir,gi.light,gi).rgb;
                }
            }
        #endif // SPOTLIGHT
    #endif // POINTLIGHT || SPOTLIGHT
    
    //c.rgb = specular;
    c.rgb += s.Emission;
    c.a = outputAlpha;
    return c;
}

#endif // PBSLighting_lib
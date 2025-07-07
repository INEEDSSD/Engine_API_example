#if !defined(GlobalIllumination_lib)
    #define GlobalIllumination_lib

#ifdef ENABLECUSTOMSH
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

    #ifdef COLORSPACE_GAMMA
        x = gammaToLinear(x);
    #endif
    return x;
}

vec3 ShadeSH9(vec3 normal,vec3 ambient){
    #if !defined(LOW_SHADER_TARGET)
        vec3 ambient_contrib = vec3(0.0);
        ambient_contrib = SHEvalLinearL0L1(vec4(normal, 1.0));
        //ambient_contrib += SHEvalLinearL2(vec4(normal, 1.0));
        ambient = max(vec3(0.0), ambient + ambient_contrib);
        #ifdef COLORSPACE_GAMMA
            ambient = LinearToGammaSpace(ambient);
        #endif
    #endif
    return ambient;
}
#endif

GI GI_Base(float occlusion, vec3 normalWorld)
{
    GI o_gi;
    Light light;
    light.color = vec3(0.0);
    light.dir = vec3(0.0);
    
    #ifdef DIRECTIONLIGHT
        DirectionLight dl = getDirectionLight(0,v_PositionWS);
        light.color = dl.color;
        light.dir = dl.direction;
        light.attenuation = dl.attenuation;
        #ifdef COLORSPACE_GAMMA
            light.color = linearToGamma(dl.color) * pow(dl.attenuation,1.0 / 2.2);
        #else
            light.color = (dl.color) * pow(dl.attenuation,1.0 / 2.2);
        #endif
    #endif

    o_gi.light = light;
    #ifdef ENABLECUSTOMSH
        o_gi.indirect.diffuse = ShadeSH9(normalWorld,v_SH);
    #else
        //因为底层变换了会导致结果不对
        o_gi.indirect.diffuse = (diffuseIrradiance(vec3(-normalWorld.x,normalWorld.yz)));
        #ifdef COLORSPACE_GAMMA
            o_gi.indirect.diffuse = linearToGamma(o_gi.indirect.diffuse);
        #endif
    #endif
    
    o_gi.indirect.diffuse *= occlusion;
    return o_gi;
}

vec3 IndirectSpecular(float occlusion,GlossyEnvironmentData glossIn)
{
    vec3 specular;

    #ifdef SPECCUBE_BOX_PROJECTION
        vec3 originalReflUVW = glossIn.reflUVW;
        glossIn.reflUVW = BoxProjectedCubemapDirection(originalReflUVW,v_PositionWS);
    #endif

    #ifdef _GLOSSYREFLECTIONS_OFF
        specular = unity_IndirectSpecColor.rgb;
    #else
        //vec3 env0 = Unity_GlossyEnvironment (UNITY_PASS_TEXCUBE(unity_SpecCube0), data.probeHDR[0], glossIn);
        vec3 env0 = GlossyEnvironment(vec4(0.0),glossIn);
        #ifdef UNITY_SPECCUBE_BLENDING
            const float kBlendFactor = 0.99999;
            float blendLerp = data.boxMin[0].w;
            UNITY_BRANCH
            if (blendLerp < kBlendFactor)
            {
                #ifdef UNITY_SPECCUBE_BOX_PROJECTION
                    glossIn.reflUVW = BoxProjectedCubemapDirection (originalReflUVW, data.worldPos, data.probePosition[1], data.boxMin[1], data.boxMax[1]);
                #endif

                half3 env1 = Unity_GlossyEnvironment (UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1,unity_SpecCube0), data.probeHDR[1], glossIn);
                specular = lerp(env1, env0, blendLerp);
            }
            else
            {
                specular = env0;
            }
        #else
            specular = env0;
        #endif
    #endif
    //return vec3(glossIn.reflUVW);
    vec3 c = specular * occlusion;
    #ifdef COLORSPACE_GAMMA
        //c = linearToGamma(c);
    #endif
    //c.rgb = glossIn.reflUVW;
    return c;
}

GI GlobalIllumination(float occlusion, vec3 normalWorld, GlossyEnvironmentData glossIn)
{
    GI o_gi = GI_Base(occlusion, normalWorld);
    o_gi.indirect.specular = IndirectSpecular(occlusion,glossIn);
    return o_gi;
}


#endif // GlobalIllumination_lib
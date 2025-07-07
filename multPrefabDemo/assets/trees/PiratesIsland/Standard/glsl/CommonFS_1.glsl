#if !defined(CommonFS_lib)
    #define CommonFS_lib

#include "./Common.glsl";
varying vec3 v_SH;

#ifdef FOG
    varying float v_fogFactor;
    float getFogFactor()
    {
        return v_fogFactor;
    }

    vec3 scenUnlitFog(in vec3 color)
    {
        float lerpFact = getFogFactor();
        #ifdef ADDTIVEFOG
        lerpFact = clamp(lerpFact, 0.0, 1.0);
        return mix(vec3(0.0), color, lerpFact);
        #else
        lerpFact = clamp(lerpFact, 0.0, 1.0);
        return mix(u_FogColor.rgb, color, lerpFact);
        #endif // ADDTIVEFOG
    }

    void APPLY_FOG(inout vec3 color)
    {
        float lerpFact = getFogFactor();
        lerpFact = clamp(lerpFact, 0.0, 1.0);
        color = mix(convertColor(u_FogColor).rgb, color, lerpFact);
    }
#endif

#endif // CommonFS_lib
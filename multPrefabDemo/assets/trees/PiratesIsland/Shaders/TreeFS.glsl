#if !defined(TreeFS_lib)
    #define TreeFS_lib

struct LeafSurfaceOutput {
    vec3 Albedo;
    vec3 Normal;
    vec3 Emission;
    float Translucency;
    float Specular;
    float Gloss;
    float Alpha;
};

vec4 LightingTreeLeaf (LeafSurfaceOutput s, Light light, vec3 viewDir, float atten)
{
    vec3 lightDir = light.dir * vec3(1.0,-1.0,-1.0);
    vec3 lightColor = light.color;
    s.Normal = normalize(s.Normal);
    vec3 h = normalize (lightDir + viewDir);
    float nl = dot (s.Normal, lightDir);

    float nh = max (0.0, dot (s.Normal, h));
    float spec = pow (nh, s.Specular * 128.0) * s.Gloss;

    float backContrib = saturate(dot(viewDir, -lightDir));
    backContrib = mix(saturate(-nl), backContrib, u_TranslucencyViewDependency);

    vec3 translucencyColor = vec3(backContrib * s.Translucency * u_TranslucencyColor);

    nl = max(0.0, nl * 0.6 + 0.4);

    vec4 c;
    
    c.rgb = s.Albedo * (translucencyColor * 2.0 + nl);
    c.rgb = c.rgb * lightColor + spec;

    #if defined(DIRECTIONAL) || defined(DIRECTIONAL_COOKIE)
    c.rgb *= mix(1.0, atten, u_ShadowStrength);
    #else
    c.rgb *= atten;
    #endif

    c.a = s.Alpha;
    return c;
}

#endif // TreeFS_lib
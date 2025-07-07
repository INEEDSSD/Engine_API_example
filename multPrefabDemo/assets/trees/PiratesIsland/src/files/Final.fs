#define SHADER_NAME FINAL

#include "Color.glsl";

varying vec2 v_Texcoord0;

void main()
{
    vec4 c = linearToGamma(texture2D(u_MainTex,v_Texcoord0));
    float ao = texture2D(u_SSAO,v_Texcoord0).r;
    ao = pow(ao,u_Params.w);
    c.rgb *= ao;

    // c.rgb = vec3(texture2D(u_SSAO,v_Texcoord0).r);
    
    gl_FragColor = c;
}
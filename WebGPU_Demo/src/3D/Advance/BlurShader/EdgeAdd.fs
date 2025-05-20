#define SHADER_NAME EdgeAdd
varying vec2 v_Texcoord0;
#include "Color.glsl";

vec4 sampleMainTex(vec2 uv)
{
    vec4 mainSampler = texture2D(u_MainTex, uv);
#ifdef Gamma_u_MainTex
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_MainTex

#ifdef Gamma_u_sourceTexture0
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_sourceTexture0
    return mainSampler;
}
void main()
{
    vec2 uv = v_Texcoord0;
    vec4 mainColor = sampleMainTex(uv);
    vec4 sourceColor = texture2D(u_sourceTexture0,v_Texcoord0);
    float factor = step(sourceColor.x+sourceColor.y+sourceColor.z,0.001);
    vec4 color = mix(sourceColor,mainColor,factor);
    gl_FragColor = color;
	gl_FragColor = outputTransform(gl_FragColor);
}
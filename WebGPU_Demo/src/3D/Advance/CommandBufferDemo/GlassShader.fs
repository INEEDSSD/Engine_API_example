#define SHADER_NAME GlassShaderFS

#include "Color.glsl";
varying vec2 v_Texcoord0;
varying vec4 v_ScreenTexcoord;
vec4 sampleMainTex(vec2 uv)
{
    vec4 mainSampler = texture2D(u_MainTex, uv);
#ifdef Gamma_u_screenTexture
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_MainTex

#ifdef Gamma_u_screenTexture
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_tintTexure
    return mainSampler;
}
void main()
{
	vec4 color;
	vec4 screenTexColor = texture2D(u_screenTexture,v_ScreenTexcoord.xy/v_ScreenTexcoord.w);
	vec4 tintTexColor = texture2D(u_tintTexure, v_Texcoord0);
	color = mix(screenTexColor, tintTexColor,0.5);
	gl_FragColor = color;
	gl_FragColor = outputTransform(gl_FragColor);
}


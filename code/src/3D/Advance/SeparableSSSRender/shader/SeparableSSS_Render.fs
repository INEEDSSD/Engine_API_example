#define SHADER_NAME SeparableSSSRenderFS
#include "Color.glsl";
varying vec2 v_Texcoord0;
varying vec4 v_ScreenTexcoord;
vec4 sampleMainTex(sampler2D tex, vec2 uv)
{
    vec4 mainSampler = texture2D(tex, uv);
#ifdef Gamma_sssssDiffuseTexture
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_MainTex

#ifdef Gamma_sssssSpecularTexture
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_MainTex
    return mainSampler;
}
void main()
{
	vec4 color;
	color =sampleMainTex(sssssDiffuseTexture,v_ScreenTexcoord.xy/v_ScreenTexcoord.w)+texture2D(sssssSpecularTexture, v_ScreenTexcoord.xy/v_ScreenTexcoord.w);

	gl_FragColor = color;
	gl_FragColor = outputTransform(gl_FragColor);
}


#define SHADER_NAME SeparableSSSRenderFS
#include "Color.glsl";
varying vec2 v_Texcoord0;
varying vec4 v_ScreenTexcoord;

void main()
{
	vec4 color;
	color = texture2D(sssssDiffuseTexture,v_ScreenTexcoord.xy/v_ScreenTexcoord.w);
#ifdef Gamma_sssssDiffuseTexture
    color = gammaToLinear(color);
#endif // Gamma_Gamma_sssssDiffuseTexture
    vec4 temp = texture2D(sssssSpecularTexture, v_ScreenTexcoord.xy/v_ScreenTexcoord.w);
#ifdef Gamma_sssssDiffuseTexture
    temp = gammaToLinear(temp);
#endif // Gamma_sssssSpecularTexture
    color += temp;
	gl_FragColor = color;
	gl_FragColor = outputTransform(gl_FragColor);
}


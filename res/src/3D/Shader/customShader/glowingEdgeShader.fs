// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
#if defined(GL_FRAGMENT_PRECISION_HIGH)
	precision highp float;
	precision highp int;
#else
	precision mediump float;
	precision mediump int;
#endif
#define SHADER_NAME EDGE_FS

#include "Color.glsl";
#include "Lighting.glsl";
#include "Camera.glsl";
#include "Scene.glsl";
#include "globalIllumination.glsl";

varying vec2 v_Texcoord;
uniform sampler2D u_texture;
uniform vec3 u_marginalColor;

varying vec3 v_Normal;
varying vec3 v_PositionWorld;

vec4 sampleMainTex(sampler2D tex, vec2 uv)
{
    vec4 mainSampler = texture2D(tex, uv);
#ifdef Gamma_u_texture
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_MainTex
    return mainSampler;
}

void main()
{
	gl_FragColor=sampleMainTex(u_texture, v_Texcoord);
	vec3 ambientCol = diffuseIrradiance(v_Normal);
	vec3 normal=normalize(v_Normal);
	vec3 toEyeDir = normalize(getViewDirection(v_PositionWorld));
	float Rim = 1.0 - max(0.0,dot(toEyeDir, normal));
	vec3 lightColor = ambientCol;
	vec3 Emissive = 2.0 * lightColor * u_marginalColor * pow(Rim,3.0);  
	
	gl_FragColor = sampleMainTex(u_texture, v_Texcoord) + vec4(Emissive,1.0);
	gl_FragColor = outputTransform(gl_FragColor);
}


#ifdef HIGHPRECISIO
precision highp float;
#else
precision mediump float;
#endif
#include "Color.glsl"
#include "Lighting.glsl";

varying vec2 v_Texcoord;
uniform vec3 u_marginalColor;
uniform sampler2D u_texture;

varying vec3 v_Normal;

#if defined(DIRECTIONLIGHT)
varying vec3 v_PositionWorld;
uniform DirectionLight u_DirectionLight;
#endif

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
	gl_FragColor=sampleMainTex(u_texture,v_Texcoord);
	
	vec3 normal=normalize(v_Normal);
	vec3 toEyeDir = normalize(u_CameraPos-v_PositionWorld);
	float Rim = 1.0 - max(0.0,dot(toEyeDir, normal));
	
	vec3 Emissive = 2.0 * u_DirectionLight.Color * vec3(0.0,0.0,1.0) * pow(Rim,3.0);  
	float dotNormal = max(0.0,dot(toEyeDir, normal));
	if(dotNormal < 0.25 && dotNormal > 0.0)
		gl_FragColor = vec4(0.0,0.0,1.0,1.0);
	else
		discard;
	gl_FragColor = outputTransform(gl_FragColor);
}


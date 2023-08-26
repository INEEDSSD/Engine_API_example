#define SHADER_NAME EdgeSub
varying vec2 v_Texcoord0;
#include "Color.glsl";
vec4 sampleMainTex(sampler2D tex, vec2 uv)
{
    vec4 mainSampler = texture2D(tex, uv);
#ifdef Gamma_u_sourceTexture0
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_sourceTexture0

#ifdef Gamma_u_sourceTexture1
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_sourceTexture1
    return mainSampler;
}
void main()
{
    vec2 uv = v_Texcoord0;
    vec4 blurColor = sampleMainTex(u_sourceTexture0,uv);
    vec4 clearColor = sampleMainTex(u_sourceTexture1,uv);
    float factor = step(clearColor.x+clearColor.y+clearColor.z,0.001);
    vec4 color = blurColor*factor;
    color = (1.0-step(color.x+color.y+color.z,0.15))*vec4(1.0,0.0,0.0,1.0);
    gl_FragColor = color;
	gl_FragColor = outputTransform(gl_FragColor);
}
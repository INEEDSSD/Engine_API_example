// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
#if defined(GL_FRAGMENT_PRECISION_HIGH)
precision highp float;
#else
precision mediump float;
#endif
#include "Color.glsl";
varying vec2 v_Texcoord0;
varying vec3 v_Normal;
vec4 sampleMainTex(sampler2D tex, vec2 uv)
{
    vec4 mainSampler = texture2D(tex, uv);
#ifdef Gamma_u_AlbedoTexture
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_MainTex
    return mainSampler;
}
void main()
{
    vec4 albedoTextureColor = vec4(1.0);
    
    albedoTextureColor = sampleMainTex(u_AlbedoTexture, v_Texcoord0);
    gl_FragColor = albedoTextureColor;
    gl_FragColor = outputTransform(gl_FragColor);
}
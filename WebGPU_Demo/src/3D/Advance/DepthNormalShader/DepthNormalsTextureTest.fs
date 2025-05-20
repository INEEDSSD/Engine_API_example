#define SHADER_NAME DepthNormalTextureTestFS
#include "Color.glsl";
#include "Camera.glsl";
#include "DepthNormalUtil.glsl";

vec4 sampleMainTex(vec2 uv)
{
    vec4 mainSampler = texture2D(u_MainTex, uv);
#ifdef Gamma_u_CameraDepthNormalsTexture
    mainSampler = gammaToLinear(mainSampler);
#endif // Gamma_u_MainTex
    return mainSampler;
}
varying vec2 v_Texcoord0;

void main(){
    vec2 uv = vec2(v_Texcoord0.x,v_Texcoord0.y);
    vec4 col = texture2D(u_CameraDepthNormalsTexture,uv);
    vec3 normals;
    float depth;
    DecodeDepthNormal(col,depth,normals);
    col = vec4(normals,1.0);
    gl_FragColor = col;
	gl_FragColor = outputTransform(gl_FragColor);
}
#define SHADER_NAME BLUR

#include "Camera.glsl";
#include "Color.glsl";

varying vec2 v_Texcoord0;

float DecodeFloatRG(vec2 enc)
{
    vec2 kDecodeDot = vec2(1.0, 1.0 / 255.0);
    return dot(enc, kDecodeDot);
}

float CheckSame (vec4 n, vec4 nn)
{
	
	vec2 diff = abs(n.xy - nn.xy);
	float sn = (diff.x + diff.y) < 0.1 ? 1.0 : 0.0;
	
	float z = DecodeFloatRG (n.zw);
	float zz = DecodeFloatRG (nn.zw);
	float zdiff = abs(z-zz) * u_ProjectionParams.y;
	float sz = zdiff < 0.2 ? 1.0 : 0.0;
	return sn * sz;
}


void main()
{
	#define NUM_BLUR_SAMPLES 4
	
    vec2 o = u_TexelOffsetScale.xy;
    vec2 uv = v_Texcoord0;
    
    float sum = texture2D(u_SSAO, v_Texcoord0).r * (float(NUM_BLUR_SAMPLES) + 1.0);
    float denom = (float(NUM_BLUR_SAMPLES) + 1.0);
    vec4 geom = texture2D(u_CameraDepthNormalsTexture, uv);
    
    for (int s = 0; s < NUM_BLUR_SAMPLES; ++s)
    {
        vec2 nuv = uv + o * (float(s) + 1.0);
        vec4 ngeom = texture2D(u_CameraDepthNormalsTexture, nuv.xy);
        float coef = float(NUM_BLUR_SAMPLES - s) * CheckSame(geom, ngeom);
        sum += texture2D(u_SSAO, nuv.xy).r * coef;
        denom += coef;
    }
    
    for (int s = 0; s < NUM_BLUR_SAMPLES; ++s)
    {
        vec2 nuv = uv - o * (float(s) + 1.0);
        vec4 ngeom = texture2D(u_CameraDepthNormalsTexture, nuv.xy);
        float coef = float(NUM_BLUR_SAMPLES - s) * CheckSame(geom, ngeom);
        sum += texture2D(u_SSAO, nuv.xy).r * coef;
        denom += coef;
    }
    
    gl_FragColor = vec4(sum / denom);
    // gl_FragColor = vec4(0.0,1.0,0.0,1.0);
}
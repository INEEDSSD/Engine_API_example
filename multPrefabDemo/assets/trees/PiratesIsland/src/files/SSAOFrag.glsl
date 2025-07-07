#if !defined(SSAOFrag_lib)
    #define SSAOFrag_lib

float DecodeFloatRG(vec2 enc)
{
    vec2 kDecodeDot = vec2(1.0, 1.0 / 255.0);
    return dot(enc, kDecodeDot);
}

vec3 DecodeViewNormalStereo(vec4 enc4)
{
    float kScale = 1.7777;
    vec3 nn = enc4.xyz * vec3(2.0 * kScale,2.0 * kScale,0.0) + vec3(-kScale,-kScale,1.0);
    float g = 2.0 / dot(nn.xyz,nn.xyz);
    vec3 n;
    n.xy = g * nn.xy;
    n.z = g - 1.0;
    return n;
}

void DecodeDepthNormal(vec4 enc, out float depth, out vec3 normal)
{
    depth = DecodeFloatRG(enc.zw);
    normal = DecodeViewNormalStereo(enc);
}

float fragAO(vec2 uv,vec2 uvr,int sampleCount)
{
    vec3 randN = linearToGamma(texture2D(u_RandomTexture, uvr)).xyz * 2.0 - 1.0;    
    vec4 depthnormal = texture2D(u_CameraDepthNormalsTexture, uv);
    vec3 viewNorm;
    float depth;
    DecodeDepthNormal (depthnormal, depth, viewNorm);
    depth *= u_ProjectionParams.y;
    float scale = u_Params.x / depth;
    float occ = 0.0;
    
    for (int s = 0; s < sampleCount; ++s)
    {
        vec3 randomDir = reflect(RAND_SAMPLES[s], randN);
        float flip = (dot(viewNorm,randomDir) < 0.0) ? 1.0 : -1.0;
        randomDir *= -flip;
        randomDir += viewNorm * 0.3;
        
        vec2 offset = randomDir.xy * scale;
        float sD = depth - (randomDir.z * u_Params.x);

        // Sample depth at offset location
        vec4 sampleND = texture2D(u_CameraDepthNormalsTexture, uv + offset);
        float sampleD;
        vec3 sampleN;
        DecodeDepthNormal(sampleND, sampleD, sampleN);
        sampleD *= u_ProjectionParams.y;
        float zd = saturate(sD-sampleD);
        if (zd > u_Params.y) {
            occ += pow(1.0 - zd,u_Params.z); // sc2
        }      
    }
    
    occ /= float(sampleCount);
    return 1.0 - occ;
}

#endif // SSAOFrag_lib
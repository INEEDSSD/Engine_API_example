#if !defined(Common_lib)
    #define Common_lib

#include "Color.glsl";

//#define PI            3.14159265359;
#define INV_PI        0.31830988618
#define COLOR_WHITE vec4(1.0)
#define COLOR_BLACK vec4(0.0)
#define COLOR_NORMAL vec4(0.5,0.5,1.0,1.0)
#define COLOR_GRAY vec4(0.5)

#ifdef COLORSPACE_GAMMA
    #define ColorSpaceDielectricSpec vec4(0.220916301, 0.220916301, 0.220916301, 0.78)
    #define ColorSpaceLuminance vec4(0.22, 0.707, 0.071, 0.0)
    #define ColorSpaceDouble vec4(2.0, 2.0, 2.0, 2.0)
#else
    #define ColorSpaceDielectricSpec vec4(0.04, 0.04, 0.04, 0.96)
    #define ColorSpaceLuminance vec4(0.0396819152, 0.458021790, 0.00609653955, 1.0)
    #define ColorSpaceDouble vec4(4.59479380, 4.59479380, 4.59479380, 2.0)
#endif

vec3 BlendNormals(vec3 n1, vec3 n2)
{
    return normalize(vec3(n1.xy + n2.xy, n1.z * n2.z));
}

vec3 UnpackNormalmapRGorAG2(vec4 packednormal)
{
    packednormal.x *= packednormal.w;

    vec3 normal;
    normal.xy = packednormal.xy * 2.0 - 1.0;
    normal.z = sqrt(1.0 - saturate(dot(normal.xy, normal.xy)));
    return normal;
}

vec3 UnpackScaleNormal(vec4 packednormal,float bumpScale)
{
    packednormal.x *= packednormal.w;
    vec3 normal;
    normal.xy = (packednormal.xy * 2.0 - 1.0);
    normal.xy *= bumpScale;
    normal.z = sqrt(1.0 - saturate(dot(normal.xy, normal.xy)));
    return normal;
}

float Luminance(vec3 rgb)
{
    return dot(rgb, ColorSpaceLuminance.rgb);
}

vec3 GammaToLinearSpace(vec3 sRGB)
{
    return sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878);
}

void samplerToGamma(inout vec4 color)
{
    #ifdef COLORSPACE_GAMMA
        #ifdef GRAPHICS_API_GLES3
            color = linearToGamma(color);
        #endif
    #else
        #ifndef GRAPHICS_API_GLES3
            color = gammaToLinear(color);
        #endif
    #endif
}

void samplerToLinear(inout vec4 color)
{
    #ifdef COLORSPACE_GAMMA
        #ifndef GRAPHICS_API_GLES3
            color = linearToGamma(color);
        #endif
    #endif
}

vec4 tex2DGamma(vec4 color)
{
    #ifdef COLORSPACE_GAMMA
        #ifdef GRAPHICS_API_GLES3
            color = linearToGamma(color);
        #endif
    #else
        #ifndef GRAPHICS_API_GLES3
            color = gammaToLinear(color);
        #endif
    #endif
    return color;
}

vec4 tex2DLinear(vec4 color)
{
    #ifdef COLORSPACE_GAMMA
        #ifndef GRAPHICS_API_GLES3
            color = linearToGamma(color);
        #endif
    #endif
    return color;
}

vec4 convertColor(vec4 color)
{
    #ifdef COLORSPACE_GAMMA
        return linearToGamma(color);
    #else
        return color;
    #endif
}

vec4 convertHDRColor(vec4 color,float intensity)
{
    vec4 c = color;
    c = linearToGamma(color);
    c.rgb *= pow(2.0,intensity);
    return c;
}

float GammaToLinearSpaceExact(float value)
{
    if (value <= 0.04045)
        return value / 12.92;
    else if (value < 1.0)
        return pow((value + 0.055)/1.055, 2.4);
    else
        return pow(value, 2.4);
}

vec3 LinearToGammaSpace (vec3 linRGB)
{
    linRGB = max(linRGB, vec3(0.0));
    return max(1.055 * pow(linRGB,vec3(0.416666667)) - 0.055, 0.0);
}

vec4 OutputColor(in vec4 c)
{
    c.r = max(c.r,0.0);
    c.g = max(c.g,0.0);
    c.b = max(c.b,0.0);
    #ifdef COLORSPACE_GAMMA
        #ifdef EDITOR_ON
            c = gammaToLinear(c);
        #endif
    #endif
    return c;
}

#endif // Common_lib
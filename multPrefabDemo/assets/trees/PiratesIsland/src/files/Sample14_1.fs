#define SHADER_NAME SAMPLE14

#define SAMPLE_COUNT 14
vec3 RAND_SAMPLES[SAMPLE_COUNT] = vec3[SAMPLE_COUNT](
    vec3(0.4010039,0.8899381,-0.01751772),
    vec3(0.1617837,0.1338552,-0.3530486),
    vec3(-0.2305296,-0.1900085,0.5025396),
    vec3(-0.6256684,0.1241661,0.1163932),
    vec3(0.3820786,-0.3241398,0.4112825),
    vec3(-0.08829653,0.1649759,0.1395879),
    vec3(0.1891677,-0.1283755,-0.09873557),
    vec3(0.1986142,0.1767239,0.4380491),
    vec3(-0.3294966,0.02684341,-0.4021836),
    vec3(-0.01956503,-0.3108062,-0.410663),
    vec3(-0.3215499,0.6832048,-0.3433446),
    vec3(0.7026125,0.1648249,0.02250625),
    vec3(0.03704464,-0.939131,0.1358765),
    vec3(-0.6984446,-0.6003422,-0.04016943)
);

#include "Camera.glsl";
#include "Color.glsl";
#include "SSAOFrag.glsl";

varying vec2 v_Texcoord0;

void main()
{
    vec2 uvr = v_Texcoord0 * u_NoiseScale;
    uvr.y = 1.0 - uvr.y;
    gl_FragColor = vec4(fragAO(v_Texcoord0,uvr,SAMPLE_COUNT));
}
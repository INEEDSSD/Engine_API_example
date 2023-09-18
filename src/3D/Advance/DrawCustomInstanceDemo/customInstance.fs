#define SHADER_NAME CustomInstanceFS
#include "Color.glsl";
#include "Scene.glsl"

varying vec4 v_Color;

void main()
{
	vec4 color =  v_Color;
	gl_FragColor.rgb = color.rgb;
	gl_FragColor = vec4(sin(u_Time), cos(u_Time), 0.0, 1.0);
}


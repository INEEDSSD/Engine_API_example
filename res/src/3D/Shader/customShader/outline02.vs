#include "Camera.glsl";
#include "Sprite3DVertex.glsl";
#include "VertexCommon.glsl";

varying vec3 v_Normal; 
varying vec2 v_Texcoord0; 

void main() 
{ 

    Vertex vertex;
    getVertexParams(vertex);
    mat4 worldMat = getWorldMatrix();
    vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;

    gl_Position = getPositionCS(positionWS);

    v_Normal = normalize((worldMat * vec4(vertex.normalOS, 0.0)).xyz);
    v_Texcoord0 = vertex.texCoord0; 
    gl_Position=remapPositionZ(gl_Position); 
}
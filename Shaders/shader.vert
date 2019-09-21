#version 330 core

uniform mat4 m;
uniform mat4 v;
uniform mat4 p;
uniform mat4 modelViewProjectionMatrix;
uniform float time;

in vec4 position;
in vec3 normal;
in vec4 color;
in vec2 texcoord;

out vec4 vPosition;
out vec3 vNormal;
out vec4 vColor;
out vec2 vTexCoord;

void main(){
vPosition = m*position;
vNormal = normalize(m*vec4(normal,1.0)).xyz;
vColor = color;
vTexCoord = texcoord;
gl_Position = p*v*m*position;
}
//template
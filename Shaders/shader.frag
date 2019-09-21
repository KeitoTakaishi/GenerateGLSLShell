#version 330 core

uniform sampler2D texture;
uniform float time;

in vec4 vPosition;
in vec3 vNormal;
in vec3 vColor;
in vec2 vTexCoord;

out vec4 outputColor;

void main(){
outputColor = vec4(1.0, 1.0, 1.0, 1.0);
}
//template
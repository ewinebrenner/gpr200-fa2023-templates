#version 450
layout(location = 0) in vec3 vPos;
layout(location = 1) in vec2 vUV;
out vec2 UV;
uniform float _time;
uniform float _scale; // TODO
void main(){
	UV = (vUV * 3.0 - 1.0);
	vec3 offset = vec3(sin(vPos.x * 6.28 + _time), cos(vPos.y * 6.28 + _time),0) * 0.5;
	gl_Position = vec4(vPos + offset,1.0);
}
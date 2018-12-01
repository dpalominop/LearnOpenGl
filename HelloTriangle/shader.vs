#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1

out vec3 ourColor; // specify a color output to the fragment shader
uniform float xOffset;

void main()
{
   gl_Position = vec4(aPos.x + xOffset, aPos.y, aPos.z, 1.0);
	ourColor  = aColor;
}
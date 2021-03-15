#version 420

layout(location = 0) in vec2 inUV;

out vec4 frag_color;

layout (binding = 0) uniform sampler2D s_screenTex;

uniform int u_PixelCount;

void main() 
{
	//to pixelate we sample the incoming texture in steps, not linear
	//similar to cel-shading, but with uvs
	//https://www.genericgamedev.com/effects/post-processing-pixelation/
	//N is number of pixels;
	int N = 200;
	vec2 newUV = floor(inUV * u_PixelCount) / u_PixelCount;
	frag_color = texture(s_screenTex, newUV);

}
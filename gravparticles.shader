shader_type particles;

uniform sampler2D positions;

void vertex()
{
	COLOR = vec4(1, 0, 1, 1);
	
	vec4 inPos = texelFetch(positions, ivec2(INDEX, 0), 0);
	vec4 loc = vec4(0.3, inPos.x * 10.0, 0, 1);
	TRANSFORM[3] = loc;
}
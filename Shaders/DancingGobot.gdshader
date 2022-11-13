shader_type canvas_item;


uniform float time_factor = 0.2;
uniform vec2 amplitude = vec2(10.0, 5.0);


void vertex() 
{
	VERTEX.x += sin(TIME * time_factor + VERTEX.x + VERTEX.y) * amplitude.x;
	VERTEX.y += cos(TIME * time_factor + VERTEX.y + VERTEX.x) * amplitude.y;
}
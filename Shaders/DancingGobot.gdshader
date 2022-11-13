shader_type canvas_item;


void vertex() 
{
	VERTEX += cos(TIME) * vec2(0.0, 20.0);
}
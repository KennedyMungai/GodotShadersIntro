shader_type canvas_item;


void vertex() 
{
	VERTEX.y += cos(TIME + VERTEX.y) * 20.0;
	VERTEX.x += sin(TIME + VERTEX.x) * 20.0;
}
shader_type canvas_item;


void vertex() 
{
	VERTEX.y += cos(TIME) * 20.0;
	VERTEX.x += sin(TIME) * 20.0;
}
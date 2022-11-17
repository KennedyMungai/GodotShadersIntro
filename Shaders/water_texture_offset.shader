shader_type canvas_item;

uniform float tile_factor = 10.0;
uniform float aspect_ratio = 0.5;

uniform vec2 uv_offset_size = vec2(1.0, 1.0);

uniform sampler2D uv_offset_texture : hint_black;

void fragment() {
	vec2 offset_texture_uvs = UV * uv_offset_size;
	
	vec2 texture_based_offset = vec2(0.0);
	
	vec2 adjusted_uv = UV * tile_factor;
	adjusted_uv.y *= aspect_ratio;
	
	COLOR = texture(TEXTURE, adjusted_uv + texture_based_offset);
	COLOR = texture(uv_offset_texture, offset_texture_uvs);
}

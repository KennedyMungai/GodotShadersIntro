extends TextureRect


onready var amplitude = material.get_shader_param("amplitude")


func _ready() -> void:
	print(amplitude)

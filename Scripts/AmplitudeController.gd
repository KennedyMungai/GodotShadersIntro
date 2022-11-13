extends VBoxContainer


var amplitude: float = 10.0 setget set_amplitude
onready var label_start_text: String = $Label.text


func _on_HSlider_value_changed(value: float) -> void:
	pass # Replace with function body.


func set_amplitude(value: float) -> void:
	amplitude = value
	$Label.text = label_start_text + " " + str(amplitude)

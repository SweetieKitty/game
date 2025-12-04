extends CanvasLayer
@onready var again_sfx: AudioStreamPlayer2D = $Again_sfx
	

signal restart

func _on_restart_button_pressed():
	restart.emit()
	again_sfx.play()


func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

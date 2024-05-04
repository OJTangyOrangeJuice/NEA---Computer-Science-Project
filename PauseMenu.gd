extends ColorRect

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var play_button: Button = find_child("Resume")
@onready var settings_button: Button = find_child("Settings")
@onready var exit_button: Button = find_child("Exit")


func _ready() -> void:
	play_button.pressed.connect(unpause)
	#exit_button.pressed.connect(get_tree().quit)

func unpause():
	animator.play("Unpause")
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func pause():
	animator.play("Pause")
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_restart_pressed():
	get_tree().reload_current_scene()



func _on_settings_pressed():
	get_tree().change_scene_to_file("res://settings.tscn")
	pass # Replace with function body.

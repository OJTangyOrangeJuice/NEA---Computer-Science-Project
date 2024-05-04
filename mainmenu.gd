extends Control

@onready var settings_button = $MarginContainer/VBoxContainer/Settings as Button 
@onready var settings_menu = $Settings as Settings
@onready var margin_container = $MarginContainer as MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = false
	handle_connecting_signals()

func _on_start_pressed():
	get_tree().change_scene_to_file("res://track.tscn")
	pass # Replace with function body.


func _on_settings_pressed():
	print("LOADED")
	pass # Replace with function body.


func _on_leader_board_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.

func on_options_pressed() -> void:
	margin_container.visible = false
	settings_menu.set_process(true)
	settings_menu.visible = true

func on_exit_settings_menu() -> void:
	margin_container.visible = true
	settings_menu.visible = false
	pass

func handle_connecting_signals() -> void:
	settings_button.button_down.connect(on_options_pressed)
	settings_menu.exit_settings_menu.connect(on_exit_settings_menu)

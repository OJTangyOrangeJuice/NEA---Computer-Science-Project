extends Node3D

var time = 0.0
var best_time = 9999

func _process(delta):
	time += delta 
	$HUD/time.text = "Time: " + str(time).pad_zeros(3).left(6)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		$PauseMenu.pause()

func _on_area_3d_body_entered(body):
	if body.is_in_group("Player"):
		if(time < best_time):
			best_time = time
			$HUD/best.text = "Best: " + str(best_time).pad_zeros(3).left(6)
			time = 0

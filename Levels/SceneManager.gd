extends Node2D

const SceneTwo = preload("res://Levels/EasyMazeLevel.tscn")
var count = 0

func _unhandled_key_input(event):
	yield(get_tree().create_timer(1), "timeout")
	if event.is_pressed() && count != 1:
		$TransitionScene.transition()
		count += 1

func _on_TransitionScene_transitioned():
	$CurrentScene.get_child(0).queue_free()
	$CurrentScene.add_child(SceneTwo.instance())

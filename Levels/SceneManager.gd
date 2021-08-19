extends Node2D

const SceneTwo = preload("res://Levels/EasyMazeLevel.tscn")

func _process(delta):
	if Input.is_action_just_pressed("Left_Mouse"):
		$TransitionScene.transition()

func _on_TransitionScene_transitioned():
	$CurrentScene.get_child(0).queue_free()
	$CurrentScene.add_child(SceneTwo.instance())

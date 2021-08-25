extends Node2D



func _ready():
	$DeadEffect.play()
	
func _process(delta):
	if Input.is_action_just_pressed("Left_Mouse"):
		get_tree().change_scene("res://Levels/SceneManager.tscn")

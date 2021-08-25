extends KinematicBody2D

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body.name.begins_with("Diamond"):
		get_tree().change_scene("res://Levels/WinScreen.tscn")

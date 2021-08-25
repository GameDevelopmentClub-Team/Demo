extends KinematicBody2D

var velocity = Vector2.ZERO

func _ready():
	
	$AnimationTree.get("parameters/playback").travel("Move")
	$AnimationTree.set("parameters/Move/blend_position", velocity)


func _on_Area2D_body_entered(body):
	if body.name.begins_with("Boulder"):
		get_tree().change_scene("res://Levels/DeadScreen.tscn")

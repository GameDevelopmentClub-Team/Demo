extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Back_Button_pressed():
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://TitleScreen.tscn")

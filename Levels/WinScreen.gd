extends Node2D

var count = 0

func _unhandled_key_input(event):
	yield(get_tree().create_timer(1), "timeout")
	if event.is_pressed() && count != 1:
		get_tree().change_scene("res://Levels/SceneManager.tscn")
		count += 1

func _ready():
	$VictoryMusic.play()

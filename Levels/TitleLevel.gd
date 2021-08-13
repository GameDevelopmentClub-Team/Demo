extends Node2D
	
func _process(delta):
	if $TitleMusic.playing == false:
		$TitleMusic.play()
	pass

func _on_Settings_pressed():
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://Levels/SettingsLevel.tscn")
	
func _unhandled_key_input(event):
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://Levels/EasyMazeLevel.tscn")

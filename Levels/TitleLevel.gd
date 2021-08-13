extends Node2D
	
signal level_changed

export (String) var level_name = "Title"
	
func _process(delta):
	if $TitleMusic.playing == false:
		$TitleMusic.play()
	pass


func _on_Settings_pressed():
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://Levels/SettingsLevel.tscn")
	
func _unhandled_key_input(event) -> void:
	emit_signal("level_changed", level_name)
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://Levels/EasyMazeLevel.tscn")

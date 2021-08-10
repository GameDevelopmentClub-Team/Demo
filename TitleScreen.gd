extends Node2D


func _ready():
	pass
	
func _process(delta):
	if $TitleMusic.playing == false:
		$TitleMusic.play()
	pass


func _on_Settings_pressed():
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://SettingsScreen.tscn")
	
func _unhandled_key_input(event):
	if event.is_pressed():
		$ButtonSound.play()
		yield($ButtonSound, "finished")
		get_tree().change_scene("res://World.tscn")

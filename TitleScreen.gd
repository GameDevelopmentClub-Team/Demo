extends Node2D


func _ready():
	pass


func _on_Button_pressed():
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://World.tscn")


func _on_Settings_pressed():
	$ButtonSound.play()
	yield($ButtonSound, "finished")
	get_tree().change_scene("res://SettingsScreen.tscn")

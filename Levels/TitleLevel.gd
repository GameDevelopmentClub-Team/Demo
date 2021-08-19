extends Node2D

onready var anim = $AnimationPlayer

func _process(delta):
	if $TitleLayer/TitleMusic.playing == false:
		$TitleLayer/TitleMusic.play()
	pass

func _on_Settings_pressed():
	$TitleLayer/ButtonSound.play()
	yield($TitleLayer/ButtonSound, "finished")
	get_tree().change_scene("res://Levels/SettingsLevel.tscn")

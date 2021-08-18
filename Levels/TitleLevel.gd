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
	
func _unhandled_key_input(event):
	$TitleLayer/ButtonSound.play()
	yield($TitleLayer/ButtonSound, "finished")
	anim.play("fade_in")


func _on_AnimationPlayer_animation_finished(anim_name):
	match anim_name:
		"fade_in":
			get_tree().change_scene("res://Levels/EasyMazeLevel.tscn")

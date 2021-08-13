extends Node2D

onready var current_level = $TitleLevel

func _ready() -> void:
	current_level.connect("level_changed", self, "handle_level_changed")

func handle_level_changed(current_level_name: String):
	var next_level
	var next_level_name: String
	
	match current_level_name:
		"Title":
			next_level_name = "EasyMaze"
		"EasyMaze":
			next_level_name = "MediumMaze"
		_:
			return
	
	next_level = load("res://Levels/" + next_level_name + "Level.tscn").instance()
	add_child(next_level)
	next_level.connect("level_changed", self, "handle_level_changed")
	current_level.queue_free()
	current_level = next_level

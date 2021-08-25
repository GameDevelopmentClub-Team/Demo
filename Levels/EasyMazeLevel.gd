extends Node2D

onready var boulder = $Boulder
onready var player = $Player

func _ready():
	var attack = true
	yield(get_tree().create_timer(2.0), "timeout")
	attack = false

func _process(delta):
	boulder.global_position = boulder.global_position.linear_interpolate(player.global_position, 0.025)
	

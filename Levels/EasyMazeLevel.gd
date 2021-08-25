extends Node2D

onready var boulder = $Boulder
onready var player = $Player

func _ready():
	pass

func _process(delta):
	 boulder.global_position = boulder.global_position.linear_interpolate(player.global_position, 0.025)
	

extends Sprite

func create_grass_effect():
		var GrassEffect = load("res://Effects/GrassEffect.tscn") #load scene
		var grassEffect = GrassEffect.instance() #instance scene
		var world = get_tree().current_scene 
		world.add_child(grassEffect) #add scene as child to node
		grassEffect.global_position = global_position #set position


func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()

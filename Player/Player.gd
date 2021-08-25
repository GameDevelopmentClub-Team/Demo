extends KinematicBody2D

var speed = 500

func _physics_process(delta):
	#Setting starting velocity to 0
	var velocity = Vector2.ZERO
	#Determining velocity depending on which key is pressed
	if Input.is_action_pressed("Right"):
		velocity.x += 1.0
	if Input.is_action_pressed("Left"):
		velocity.x -= 1.0
	if Input.is_action_pressed("Up"):
		velocity.y -= 1.0
	if Input.is_action_pressed("Down"):
		velocity.y += 1.0
	
	velocity = velocity.normalized() #Normalizing diagonal speeds
	
	if velocity == Vector2.ZERO:
		$AnimationTree.get("parameters/playback").travel("Idle")
	else:
		$AnimationTree.get("parameters/playback").travel("Run")
		$AnimationTree.set("parameters/Idle/blend_position", velocity)
		$AnimationTree.set("parameters/Run/blend_position", velocity)
		move_and_slide(velocity * speed)


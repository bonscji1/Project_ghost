extends KinematicBody2D

var velocity = Vector2.ZERO
const MAX_SPEED = 800
const FRICTION = 400
const ACCEL = 150

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	
	if input_vector != Vector2.ZERO:
		velocity += input_vector*ACCEL
		velocity = velocity.clamped(MAX_SPEED)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION)
	
	
	velocity = move_and_slide(velocity)

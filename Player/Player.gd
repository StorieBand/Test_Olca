extends KinematicBody2D

var motion = Vector2.ZERO
var MAX_SPEED = 230


func _physics_process(_delta):
	
	get_input_axis()
	
	if motion.x < 0:
		max_speed(MAX_SPEED * _delta)
		
	elif motion.x > 0:
		max_speed(MAX_SPEED * _delta)
	
	move_and_collide(motion)

func get_input_axis():
	motion.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	
func max_speed(speed):
	motion.x *= speed  


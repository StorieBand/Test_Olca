extends KinematicBody2D

export var speed = 10
var Velocity = Vector2 (0,0);

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		Velocity.x = speed
	elif Input.is_action_just_released("ui_right"):
		Velocity.x = 0 
	move_and_collide(Velocity)
	

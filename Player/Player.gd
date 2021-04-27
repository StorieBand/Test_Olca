extends KinematicBody2D

var motion = Vector2.ZERO

const MAX_SPEED = 150
const JUMP = 350
const GRAVITY = 5


func _physics_process(_delta):
	
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = MAX_SPEED
	
	elif Input.is_action_pressed("ui_left"):
		motion.x = -MAX_SPEED
	
	elif Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		motion.x = 0
	
	if Input.is_action_just_pressed("ui_jump"):
		motion.y -= JUMP
	
	motion = move_and_slide(motion)

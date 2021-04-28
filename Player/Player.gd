extends KinematicBody2D
var motion = Vector2.ZERO

const MAX_SPEED = 150
const JUMP = 350
const GRAVITY = 5
const MAX_FALL_SPEED = 500 
const FRICTION = 10
const ACCELERATION = 10


func _physics_process(_delta):
	
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		_acceleration(ACCELERATION, MAX_SPEED)
	
	elif Input.is_action_pressed("ui_left"):
		_acceleration(-ACCELERATION, -MAX_SPEED)
	
	else:
		_friction(motion.x / FRICTION)
	
	if Input.is_action_just_pressed("ui_jump"):
		motion.y -= JUMP
	
	if motion.y >= MAX_FALL_SPEED :
		motion.y = MAX_FALL_SPEED
	
	motion = move_and_slide(motion)
	print(motion)
	
func _ready():
	self.position = Global.spawn_point
	
func _friction(friction):
	if motion.x != 0:
		motion.x -= friction
	else:
		motion.x = 0
	
func _acceleration(acceleration, max_speed):
	motion.x += acceleration
	if motion.x >= max_speed:
		motion.x = max_speed
	elif motion.x <= max_speed:
		motion.x = max_speed

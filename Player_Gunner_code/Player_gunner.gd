extends KinematicBody2D

#dette er hvis 
var hit_dead = false

export var speed = 500
export var jump = -350
export var gravity = 20
const Up = Vector2.UP

var motion = Vector2()

func _physics_process(_delta):
	
	motion.y += gravity
	
	if Input.is_action_pressed("player_gunner_right"):
		motion.x = speed
		#animation
		$Idle_player_gunner.flip_h = true
		$Walk_player_gunner.flip_h = true
		$AnimationPlayer.play("Walk_player_gunner")
		
	elif Input.is_action_pressed("player_gunner_left"):
		motion.x = -speed
		#animation
		$Idle_player_gunner.flip_h = false
		$Walk_player_gunner.flip_h = false
		$AnimationPlayer.play("Walk_player_gunner")
	else:
		motion.x = 0
		$AnimationPlayer.play("Idle_player_gunner")
	
	if is_on_floor():
		if Input.is_action_just_pressed("Player_gunner_jump"):
			motion.y = jump
	
	
	
	motion = move_and_slide(motion, Up)

func dead():
	hit_dead = true
	motion = Vector2.ZERO
	CollisionShape2D.disabled
	$AnimationPlayer.play("Death_player_gunner")
	
	
	


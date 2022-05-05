extends KinematicBody2D

onready var BULLET_SCENE = preload("res://Bullet_enemy/bullet.tscn")

var player = null
var move = Vector2.ZERO
var speed = 1

func _physics_process(_delta):
	move = Vector2.ZERO
	
	if player != null:
		move = position.direction_to(player.position) * speed
	else:
		move = Vector2.ZERO
		
	move = move.normalized()
	move = move_and_collide(move)

func _on_Area2D_body_entered(body):
	if body.get_name() =="Enemy":
		player = null
	else:
		if body !=self:
			player = body
	
	$AnimationPlayer.play("Flight_enemy")


func _on_Area2D_body_exited(_body):
	player = null
	
func fire():
	var bullet = BULLET_SCENE.instance()
#	$AnimationPlayer.play("Attack_enemy")
	bullet.position = get_global_position()
	bullet.player = player
	get_parent().add_child(bullet)
	$Timer.set_wait_time(1)



func _on_Timer_timeout():
	if player != null:
		fire()
	

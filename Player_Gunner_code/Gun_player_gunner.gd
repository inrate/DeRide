extends Sprite

const bulletPath = preload("res://Player_Gunner_code/Bullet_player_code/Player_Bullet.tscn")
var Ratation_speed = PI*2

func _process(delta):
	if Input.is_action_pressed("player_gunner_look_up"):
		rotation += -Ratation_speed * delta
	if Input.is_action_pressed("player_gunner_look_down"):
		rotation += Ratation_speed *delta
		
	if Input.is_action_pressed("player_gunner_right"):
		flip_h = true
		#dette er dens skulder 
		position.x= -21
		offset.x = 6
		offset.y = 7
		
	elif Input.is_action_pressed("player_gunner_left"):
		flip_h = false
		
		#dette er dens skulder 
		position.x = 20
		offset.x = -6
		offset.y = 7
	
	if flip_h == false:
		if Input.is_action_just_pressed("player_gunner_shoot"):
				shoot()
	if flip_h == true:
		if Input.is_action_just_pressed("player_gunner_shoot"):
			shoot_but_look_left()
	
	

func shoot():
	var bullet = bulletPath.instance()
	
	get_parent().get_parent().add_child(bullet)
	bullet.position = $Position2D_left.global_position
	

func shoot_but_look_left():
	var bullet_left = bulletPath.instance()
	get_parent().get_parent().add_child(bullet_left)
	bullet_left.position = $Position2D_right.global_position


extends Sprite

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

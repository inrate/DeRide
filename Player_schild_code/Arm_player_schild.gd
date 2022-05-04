extends Sprite


var Ratation_speed = PI*2

func _process(delta):
	if Input.is_action_pressed("Player_Schild_Up"):
		rotation += -Ratation_speed * delta
	if Input.is_action_pressed("Player_Schild_Down"):
		rotation += Ratation_speed *delta
		
	if Input.is_action_pressed("ui_right"):
		flip_h = true
		#dette er dens skulder 
		position.x= 40
		offset.x = 4
		offset.y = 9
	elif Input.is_action_pressed("ui_left"):
		flip_h = false
		#dette er dens skulder 
		position.x = 72
		offset.x = -4
		offset.y = 7


	

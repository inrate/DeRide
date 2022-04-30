extends Sprite

var Ratation_speed = PI*2

func _process(delta):
	if Input.is_action_pressed("Player_Schild_Up"):
		rotation += -Ratation_speed * delta
	if Input.is_action_pressed("Player_Schild_Down"):
		rotation += Ratation_speed *delta

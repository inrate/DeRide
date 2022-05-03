extends KinematicBody2D
var x= 1
var gravaty = sin(x)

var one = 0
var move = Vector2.ZERO

func _physics_process(delta):
	one += 1
	
	if gravaty != 500:
		pass
	else:
		move.y=gravaty + one
	
	print(move.y)
	
	move = move_and_slide(move)

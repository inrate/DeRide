extends Area2D

var velocity = Vector2.RIGHT
export var speed = 300

func _ready():
	set_as_toplevel(true)

func _process(delta):
	yield(get_tree().create_timer(0,3),"timeout")
	set_physics_process(false)



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()




func _on_Bullet_player_body_entered(body):
	queue_free()

extends ParallaxBackground

export var speed = 50

func _process(delta):
	offset += speed * delta 

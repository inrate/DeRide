extends ParallaxLayer

export(float) var Sand_Background_Seed = -10

func _process(delta):
	self.motion_offset.x += Sand_Background_Seed * delta

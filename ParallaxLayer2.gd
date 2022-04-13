extends ParallaxLayer

export(float) var Sand_Mouinten_Seed = -20

func _process(delta):
	self.motion_offset.x += Sand_Mouinten_Seed * delta

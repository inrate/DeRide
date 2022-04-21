extends ParallaxLayer

# dette er til for at lave farten for baggrunden
export(float) var Sand_Mouinten_Seed = -20

# funktioen som rykker x 
func _process(delta):
	self.motion_offset.x += Sand_Mouinten_Seed * delta

extends ParallaxLayer

# dette er til for at lave farten for baggrunden
export(float) var Sand_Background_Seed = -10

# funktioen som rykker x 
func _process(delta):
	self.motion_offset.x += Sand_Background_Seed * delta

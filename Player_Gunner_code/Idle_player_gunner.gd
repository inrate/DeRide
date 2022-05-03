extends Sprite


func _process(_delta):
	
	self.visible = true
	if Input.is_action_pressed("player_gunner_right"):
		self.visible = false
	elif Input.is_action_pressed("player_gunner_left"):
		self.visible = false

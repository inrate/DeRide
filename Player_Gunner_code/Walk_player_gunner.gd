extends Sprite


func _process(_delta):
	
	self.visible = false
	if Input.is_action_pressed("player_gunner_right"):
		self.visible = true
	elif Input.is_action_pressed("player_gunner_left"):
		self.visible = true

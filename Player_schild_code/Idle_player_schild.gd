extends Sprite


func _process(delta):
	
	self.visible = true
	if Input.is_action_pressed("ui_right"):
		self.visible = false
	elif Input.is_action_pressed("ui_left"):
		self.visible = false

extends Sprite


func _process(_delta):
	
	self.visible = false
	if Input.is_action_pressed("ui_right"):
		self.visible = true
	elif Input.is_action_pressed("ui_left"):
		self.visible = true

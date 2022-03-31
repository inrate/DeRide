extends Node2D

# Dette er hvor hurtig den kører
export var speed : float = 1 

# dette er hvor platformenen stater og hvor den slutter
export var move_from : Vector2= Vector2.ZERO
export var move_to : Vector2= Vector2.ZERO

# Dette er for så vi kan bruge de andre ting ud fra mappen
onready var line : Node2D = $Debug_Line
onready var base : Node2D = $Platform_Base
onready var tween : Tween = $Platform_Base/Tween

var direction_forward = false 

func _ready():
	#Dette er så at platformenen ikke bevæger sig når vi er i gang med at lave spillet men kun når vi spiller det.
	if ! Engine.is_editor_hint():
		set_tween(move_from, move_to) 


# Dette er en comstume func
func set_tween(from, to):
	tween.interpolate_property(base,"position", from, to, speed, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)

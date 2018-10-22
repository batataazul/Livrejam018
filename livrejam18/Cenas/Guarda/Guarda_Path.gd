extends Path2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var follow = get_node("PathFollow2D")

var tween

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	tween = Tween.new()
	add_child(tween)
	tween.interpolate_property(follow, "unit_offset",
										 0 , 1 , 3,
										tween.TRANS_LINEAR,
										tween.EASE_IN_OUT)
	tween.set_repeat(true)
	tween.start()
	pass

func _fixed_process(delta):
	pass
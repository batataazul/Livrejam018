extends Path2D

onready var follow = get_node("Seguir")

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
	get_node("Seguir/Area2D").connect("body_enter",self, "perder")
	get_node("Seguir").rotate = false
	pass

func perder(body):
	if body.get_name() == "Jogador":
		if body.claro == true:
			get_tree().change_scene("res://Cenas/Main/Main.tscn")

func _fixed_process(delta):
	pass

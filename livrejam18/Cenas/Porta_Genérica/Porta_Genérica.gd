extends StaticBody2D


func _ready():
	get_node("Area2D").connect("body_enter",self,"porta_abriu")
	pass

func porta_abriu(body):
	if body.get_name() == "Jogador":
		body.chaves -= 1
		queue_free()
	pass
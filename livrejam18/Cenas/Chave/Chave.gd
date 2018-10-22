extends Area2D



func _ready():
	self.connect("body_enter",self,"pegou_chave")
	pass

func pegou_chave(body):
	if body.get_name() == "Jogador":
		global.chaves += 1
		queue_free()
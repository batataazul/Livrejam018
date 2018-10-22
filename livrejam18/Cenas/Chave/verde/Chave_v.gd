extends Area2D

func _ready():
	self.connect("body_enter",self,"pegou_chave_g")
	pass

func pegou_chave_g(body):
	if body.get_name() == "Jogador":
		global.chaves_g = true
		queue_free()
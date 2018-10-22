extends Area2D

func _ready():
	self.connect("body_enter",self,"pegou_chave_r")
	pass

func pegou_chave_r(body):
	if body.get_name() == "Jogador":
		global.chaves_r = true
		queue_free()

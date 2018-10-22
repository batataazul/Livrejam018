extends Area2D

func _ready():
	self.connect("body_enter",self,"pegou_chave_a")
	pass

func pegou_chave_a(body):
	if body.get_name() == "Jogador":
		global.chaves_y = true
		queue_free()
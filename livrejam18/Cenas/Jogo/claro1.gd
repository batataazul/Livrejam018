extends Area2D

var corpos
var i
var jogador

func _ready():
	jogador = get_parent().get_node("Jogador")
	set_process(true)
	pass
func _process(delta):
	corpos = get_overlapping_bodies()
	if jogador in corpos:
		jogador.claro = true
		pass
	else:
		jogador.claro = false
		pass

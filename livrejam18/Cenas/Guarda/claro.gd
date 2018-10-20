extends CollisionShape2D

var corpos
var i
var jogador

func _ready():
	set_process(true)
	jogador = get_parent().get_parent()
	pass
func _process(delta):
	corpos = get_overlapping_bodies()
	for i in corpos:
		if i.get_name() == "Jogador":
			jogador = i
			jogador.claro = true
			break 
		
			
			
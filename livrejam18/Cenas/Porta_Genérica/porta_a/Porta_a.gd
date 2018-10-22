extends StaticBody2D

func _ready():
	get_node("OpenTimer").connect("timeout",self,"OpenLock")
	get_node("Area2D").connect("body_enter",self,"porta_abriu_a")
	pass

func porta_abriu_a(body):
	if body.get_name() == "Jogador" and global.chaves_y:
		get_node("LockSound").play("Lock")
		get_node("OpenTimer").start()
		
	pass
	
func OpenLock():
	queue_free()
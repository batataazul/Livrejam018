extends Node2D

func _ready():
	get_node("Para_Corredor").connect("body_enter",self, "troca_sala")
	pass
	
func troca_sala(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/(1)corredor/corredor.tscn")

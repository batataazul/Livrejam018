extends Node2D

func _ready():
	get_node("Para_3").connect("body_enter",self, "troca_sala0")
	get_node("Para_5").connect("body_enter",self, "troca_sala1")
	pass
	
func troca_sala0(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/(3)corredor_aberto/corredor_aberto.tscn")
func troca_sala1(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/(5)fim_do_inicio/fim_do_inicio.tscn")
	pass
extends Node2D

func _ready():
	get_node("Para_2").connect("body_enter",self, "troca_sala0")
	get_node("Para_4").connect("body_enter",self, "troca_sala1")
	pass
	
func troca_sala0(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/(2)esquina/esquina.tscn")
func troca_sala1(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/(4)armarios/armarios.tscn")
	pass

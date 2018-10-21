extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	get_node("Para_cela_inicial").connect("body_enter",self, "troca_sala0")
	get_node("Para_esquina").connect("body_enter",self, "troca_sala1")
	pass
	
func troca_sala0(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/cela_inicial.tscn")
func troca_sala1(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/cela_inicial.tscn")

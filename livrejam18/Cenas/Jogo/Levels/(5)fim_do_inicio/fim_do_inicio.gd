extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _ready():
	get_node("Para_4").connect("body_enter",self, "troca_sala0")
	get_node("Para_6").connect("body_enter",self, "troca_sala1")
	pass
	
func troca_sala0(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/(4)armarios/armarios.tscn")
func troca_sala1(body):
	if body.get_name() == "Jogador":
		get_tree().change_scene("res://Cenas/Jogo/Levels/cutscenes/GameEnd/EndGame.tscn")
	pass
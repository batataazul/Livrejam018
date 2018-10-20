extends Node2D


func _ready():
	get_node("Iniciar").connect("pressed", self, "jogar")
	get_node("Sair").connect("pressed", self, "sair")
	pass

func jogar():
	get_tree().change_scene("res://Cenas/Jogo/Jogo.tscn")
	pass
func sair():
	get_tree().quit()
	pass
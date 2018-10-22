extends Node2D


func _ready():
	global.chaves = 3
	get_node("Iniciar").connect("pressed", self, "jogar") #Botão para iniciar o jogo
	get_node("Sair").connect("pressed", self, "sair") #Botão para sair
	pass

func jogar():
	get_tree().change_scene("res://Cenas/Jogo/Levels/cutscenes/CutSceneInicio/Cutscene.tscn") #Função que chama primeira cena do jogo
	pass
func sair():
	get_tree().quit() #Função que sai
	pass
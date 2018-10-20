extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


var player

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	player = get_node("Jogador")
	get_node("Guarda_Path/PathFollow2D/KinematicBody2D/Area2D").connect("body_enter",self, "perder")
	pass
	
func perder(body):
	if body.get_name() == "Jogador":
		if body.claro == true:
			get_tree().change_scene("res://Cenas/Main/Main.tscn")
			pass

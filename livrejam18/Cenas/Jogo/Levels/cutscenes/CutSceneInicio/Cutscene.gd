extends Node2D


func _ready():
	get_node("CutTimer").connect("timeout",self,"START_GAME")
	get_node("Move").play("MoveCamera")
	
	set_process(true)
	pass
	
func _process(delta):
	if Input.is_key_pressed(KEY_RETURN) or Input.is_key_pressed(KEY_ESCAPE):
		START_GAME()
	pass
	
func START_GAME():
	get_tree().change_scene("res://Cenas/Jogo/Levels/(0)cela_inicial/cela_inicial.tscn")

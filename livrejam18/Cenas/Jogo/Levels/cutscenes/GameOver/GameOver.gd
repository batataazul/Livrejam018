extends Node2D

func _ready():	
	get_node("AnimGameOver").play("GameOver")
	
	set_process(true)
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_RETURN) or Input.is_key_pressed(KEY_ESCAPE):
		get_tree().change_scene("res://Cenas/Main/Main.tscn")
	pass
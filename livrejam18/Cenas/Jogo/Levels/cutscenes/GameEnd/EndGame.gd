extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():

	get_node("AnimationPlayer").play("MoveCam")
	
	set_process(true)
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_RETURN) or Input.is_key_pressed(KEY_ESCAPE):
		get_tree().change_scene("res://Cenas/Main/Main.tscn")
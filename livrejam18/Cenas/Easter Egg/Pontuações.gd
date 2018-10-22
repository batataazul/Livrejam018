extends CollisionShape2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var pont = 0
func _ready():
	pont = 0
	pass




func _on_Area2D_2_body_enter(body):
	if body.get_name() == "Soldado" or body.get_name() == "Soldado1" or body.get_name() == "Soldado2" or body.get_name() == "Soldado3" or body.get_name() == "Soldado4" or body.get_name() == "Churchill":
		get_tree().change_scene("res://Cenas/Jogo/Levels/(2)esquina/esquina.tscn")
	if body.get_name() == "Indiano":
		pont = pont + 1
		
		
	pass # replace with function body

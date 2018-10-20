extends KinematicBody2D

const rapidez = 80
const normal = Vector2(0,-1)


var velocidade = Vector2(0,0)


func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	velocidade = Vector2(0,0)
	if Input.is_action_pressed("ui_right"):
		velocidade.x = 1
		pass
	if Input.is_action_pressed("ui_left"):
		velocidade.x = -1
		pass
	if Input.is_action_pressed("ui_up"):
		velocidade.y = -1
		pass
	if Input.is_action_pressed("ui_down"):
		velocidade.y = 1
		pass
	move_and_slide(velocidade.normalized()*rapidez,normal)
	pass
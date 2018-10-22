extends KinematicBody2D

const rapidez = 256
const normal = Vector2(0,-1)

var velocidade = Vector2(0,0)
var sprite

func _ready():
	sprite = get_node("Sprite")
	set_fixed_process(true)
	pass
func _fixed_process(delta):
	velocidade = Vector2(0,0)
	if Input.is_action_pressed("ui_up"):
		velocidade += Vector2(0,-1)
	if Input.is_action_pressed("ui_down"):
		velocidade += Vector2(0,1)
	if Input.is_action_pressed("ui_right"):
		velocidade += Vector2(1,0)
		sprite.set_flip_h(false)
	if Input.is_action_pressed("ui_left"):
		velocidade += Vector2(-1,0)
		sprite.set_flip_h(true)
	
	move_and_slide(velocidade.normalized()*rapidez,normal)
	
	pass
extends KinematicBody2D

const rapidez = 256 #Constante de velocidade
const normal = Vector2(0,-1) #Vetor normal


var velocidade #Velocidade linear
var chaves = 3 #Chaves que o jogador possui
var claro = false #Se o jogador está, ou não numa área iluminada
var sprite #Sprite

func _ready():
	sprite = get_node("AnimatedSprite") #Pega a animação
	set_fixed_process(true) #Começa o processo físico
	pass

func _fixed_process(delta):
	velocidade = Vector2(0,0) #Reinicia a velocidade a cada repetição
	if claro == true:
		sprite.play("Claro") #Se está no claro, chama a sprite clara
	else:
		sprite.play("Escuro") #Se está escuro, chama a sprite escura
	if Input.is_action_pressed("ui_right"):
		velocidade.x = 1 #Anda pra direita
		pass
	if Input.is_action_pressed("ui_left"):
		velocidade.x = -1 #Anda pra esquerda
		pass
	if Input.is_action_pressed("ui_up"):
		velocidade.y = -1 #Anda pra cima
		pass
	if Input.is_action_pressed("ui_down"):
		velocidade.y = 1 #Anda pra baixo
		pass
	move_and_slide(velocidade.normalized()*rapidez,normal) #Se move usando um vetor normalizado multiplicado
	pass
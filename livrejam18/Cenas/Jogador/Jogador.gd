extends KinematicBody2D

const rapidez = 256 #Constante de velocidade
const normal = Vector2(0,-1) #Vetor normal

var i

var velocidade #Velocidade linear
var chaves = 3 #Chaves que o jogador possui
var claro = false #Se o jogador está, ou não numa área iluminada
var sprite #Sprite
var Anim
var soundplayer # Som de passos
var passostimer

var Yellow_key = false
var Red_key = false
var Green_key = false

func _ready():
	sprite = get_node("AnimatedSprite") #Pega a animação
	Anim = get_node("AnimPlayer")
	soundplayer = get_node("Passos")
	passostimer = get_node("PassosTimer")
	
	#Conectar todos os campos de visão e pés dos guardas da cena
	for i in get_tree().get_nodes_in_group("Guardas"):
		i.get_node("Corpo").get_node("Vision").connect("body_enter", self, "visto")
		i.get_node("Corpo").get_node("Feet_detection").connect("body_enter", self, "encostou")
	
	set_fixed_process(true) #Começa o processo físico
	pass

func _fixed_process(delta):
	velocidade = Vector2(0,0) #Reinicia a velocidade a cada repetição
		
	if Input.is_action_pressed("ui_right"):
		velocidade.x = 1 #Anda pra direita
		if claro == true:
			sprite.play("Claro_lado")
		else:
			sprite.play("Escuro_lado")
		sprite.set_flip_h(true)
		pass
	if Input.is_action_pressed("ui_left"):
		velocidade.x = -1 #Anda pra esquerda
		if claro == true:
			sprite.play("Claro_lado")
		else:
			sprite.play("Escuro_lado")
		sprite.set_flip_h(false)
		pass
			
	if Input.is_action_pressed("ui_up"):
		velocidade.y = -1 #Anda pra cima
		if claro == true:
			sprite.play("Claro_trás")
		else:
			sprite.play("Escuro_trás")
		pass
	if Input.is_action_pressed("ui_down"):
		velocidade.y = 1 #Anda pra baixo
		if claro == true:
			sprite.play("Claro_frente")
		else:
			sprite.play("Escuro_frente")
		pass
	move_and_slide(velocidade.normalized()*rapidez,normal) #Se move usando um vetor normalizado multiplicado
		
	if velocidade != Vector2(0,0): # Para iniciar o loop dos passos
		if !soundplayer.is_active():
			soundplayer.play("passos",true)
			Anim.play("walking")
		passostimer.start()
		
		

func _on_PassosTimer_timeout():
	soundplayer.stop_all()
	Anim.stop(true)
	
func visto(body):
	if (body == self and claro):
		if chaves == 0:
			#Game Over!!!
			get_tree().change_scene("res://Cenas/Main/Main.tscn")
			pass
		else:
			#Voltar para início
			get_tree().change_scene("res://Cenas/Jogo/Jogo.tscn")
			pass
		pass
	pass

func encostou(body):
	if body == self:
		if chaves == 0:
			get_tree().change_scene("res://Cenas/Main/Main.tscn")
			pass
		else:
			get_tree().change_scene("res://Cenas/Jogo/Jogo.tscn")
			pass
		pass
	pass

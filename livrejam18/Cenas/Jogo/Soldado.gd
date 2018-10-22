extends KinematicBody2D
var i
onready var speed = 280
onready var direction = Vector2(0,0)
onready var sprite = get_node("AnimatedSprite")
onready var vision = get_node("Vision")

func _ready():
	#Conectar nodes de orientação de direção
	for i in get_tree().get_nodes_in_group("Right"):
		i.connect("body_enter", self, "direita")
		i.get_node("CollisionShape2D").get_node("Sprite").queue_free()
		
	for i in get_tree().get_nodes_in_group("Left"):
		i.connect("body_enter", self, "esquerda")
		i.get_node("CollisionShape2D").get_node("Sprite").queue_free()
		
	for i in get_tree().get_nodes_in_group("Up"):
		i.connect("body_enter", self, "cima")
		i.get_node("CollisionShape2D").get_node("Sprite").queue_free()
		
	for i in get_tree().get_nodes_in_group("Down"):
		i.connect("body_enter", self, "baixo")
		i.get_node("CollisionShape2D").get_node("Sprite").queue_free()
		
	
	set_process(true)
	pass
	
func _process(delta):
	if direction == Vector2(1,0): #Direita
		sprite.play("Esquerda")
		sprite.set_flip_h(true)
		vision.set_rot(PI/2)
		pass
	if direction == Vector2(-1,0): #Esquerda
		sprite.play("Esquerda")
		sprite.set_flip_h(false)
		vision.set_rot(3*PI/2)
		pass
	if direction == Vector2(0,-1): #Cima
		sprite.play("Costa")
		vision.set_rot(PI)
		pass
	if direction == Vector2(0,1): #Baixo
		sprite.play("Frente")
		vision.set_rot(0)
		pass
	move(direction * speed * delta)
	pass
	
func direita(body):
	if body == self:
		direction = Vector2(1,0)
		pass
	pass
	
func esquerda(body):
	if body == self:
		direction = Vector2(-1,0)
		pass
	pass
	
func cima(body):
	if body == self:
		direction = Vector2(0,-1)
		pass
	pass
	
func baixo(body):
	if body == self:
		direction = Vector2(0,1)
		pass
	pass
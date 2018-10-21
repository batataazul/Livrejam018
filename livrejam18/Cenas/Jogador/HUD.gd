extends CanvasLayer
var icon_claro = preload("res://Imagens/ícones/retratopequeno.png")
var icon_escuro = preload("res://Imagens/ícones/retratoescuropequeno.png")

var image_key = load("res://Imagens/Keys/Keys.png")


onready var status_icon = get_node("Panel_Status/Status") #Icone que de demonstra estado luminoso

func _ready():
	set_process(true)
	
func _process(delta):
	var player = get_parent()
	
	var pocket1 = get_node("pocket1")
	var pocket2 = get_node("pocket2")
	
	var chaves_g = player.chaves #Numero de chaves genéricas
	var claro = player.claro #Estado luminoso do jogador


	if claro:
		status_icon.texture = icon_claro
	else:
		status_icon.texture = icon_escuro
		
	if chaves_g > 0:
		
		for A in range(0,pocket1.get_child_count()):
			pocket1.get_child(A).queue_free()
			
		for A in range(0,pocket2.get_child_count()):
			pocket2.get_child(A).queue_free()
		
		if chaves_g < 7:
			FILL(pocket1, chaves_g)
		
		elif chaves_g < 13:
			FILL(pocket1,6)
			FILL(pocket2,chaves_g-6)

	if player.Yellow_key:
		get_node("Special_panel/yellow_key").show()
	if player.Red_key:
		get_node("Special_panel/red_key").show()
	if player.Green_key:
		get_node("Special_panel/green_key").show()

func FILL(target,maximum):
	for C in range(maximum):
		var new_key = TextureFrame.new()
		new_key.set_texture(image_key)
		target.add_child(new_key)
	
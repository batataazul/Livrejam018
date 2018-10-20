extends CanvasLayer
#var icon_claro = preload("res://Imagens/ícones/retratopequeno.png")
#var icon_escuro = preload("res://Imagens/ícones/retratopequenoescuro.png")
var jog = get_parent() # jog é a abreviação de jogador
var chaves = jog.chaves #Numero de chaves
var claro = jog.claro #Estado luminoso do jogador
	
onready var status_icon = get_node("Status") #Icone que de demonstra estado luminoso
func _ready():
	set_process(true)
	
func _process(delta):
	if claro:
		status_icon.texture = icon_claro
	else:
		status_icon.texture = icon_escuro
		

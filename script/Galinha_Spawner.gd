extends Node
var pre_galinha = preload("res://scenes/Galinha.tscn")
var cont = 0;



func _ready():
	set_process(true)
	pass
	

	
func spawn(vector, g):
	if cont < g :
		var galinha = pre_galinha.instance()
		galinha.set_translation(vector)
		get_owner().add_child(galinha)
		cont += 1
		
		
	pass

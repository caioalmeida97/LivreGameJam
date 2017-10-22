extends Node
var pre_galinha = preload("res://meshes/Galinha.scn")
var cont = 0;

func _ready():
	set_process(true)
	pass
	
	
func spawn(vector, g):
	while(cont < 1):
		var galinha = pre_galinha.instance()
		galinha.set_translation(vector)
		get_parent().add_child(galinha)
		
		cont += 1
	pass

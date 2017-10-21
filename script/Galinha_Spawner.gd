extends Node
var pre_galinha = preload("res://scenes/Galinha.tscn")
var cont = 0;



func _ready():
	set_process(true)
	pass
	
func _process(delta):
	
	if cont < 5 :
		var galinha = pre_galinha.instance()
		
		
		galinha.set_translation(Vector3(3,0,9))
		get_owner().add_child(galinha)
		cont += 1
	
		
	pass

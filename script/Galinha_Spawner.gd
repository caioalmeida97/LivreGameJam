extends Node
var pre_galinha = preload("res://scenes/Galinha.tscn")
var cont = 0;



func _ready():
	set_process(true)
	pass
	
func _process(delta):
	if cont < 10 :
		var x = rand_range(0,40)
		var z = rand_range(0,40) 
		var galinha = pre_galinha.instance()
		galinha.set_translation(Vector3(x,0,z))
		get_owner().add_child(galinha)
		
		cont = cont + 1
		
	pass

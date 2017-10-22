extends Node
var pre_objeto = preload("res://scenes/ItemPegavel.tscn")
var cont = 0;

func _ready():
	set_process(true)
	pass
	
	
func spawn(vector, g):
	while(cont < 1):
		var objeto = pre_objeto.instance()
		objeto.set_translation(vector)
		get_parent().add_child(objeto)
		
		cont += 1
	pass

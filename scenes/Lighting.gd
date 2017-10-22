extends Spatial



func _ready():
	set_process(true)
	pass

func _process(delta):
	
	var children = []
	children = get_node('spawn_reference').get_children()
	print(children)
	for i in range(1):
	#for i in range(children.size()):
		get_node("Galinha_Spawner").spawn(children[i].get_translation(), int (rand_range(1, 10)))
#		get_node("Galinha_Spawner").spawn(Vector3(0,0,0), int (rand_range(1, 10)))
	set_process(false)
	pass

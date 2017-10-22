extends Spatial
var lista_galinhas = []


func _ready():
	set_process(true)
	pass

func _process(delta):
	print(delta)
	var children = []
	children = get_node('spawn_reference').get_children()
	var i = 0
	var cont = 0
	var listpos = 0 
	for i in range(10):
		var rand =int (rand_range(1,10))
		var galinha = get_node("Galinha_Spawner").spawn(children[i].get_translation(),rand)
		#lista_galinhas.insert(galinha, listpos)
		listpos += 1
		print(lista_galinhas.size())
		
	#	get_node("Galinha_Spawner").spawn(Vector3(5,5,5), int (rand_range(1, 10)))
	set_process(false)
	pass

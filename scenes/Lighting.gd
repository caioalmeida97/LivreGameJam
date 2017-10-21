extends Spatial



func _ready():
	set_process(true)
	pass

func _process(delta):
	
	get_node("Galinha_Spawner").spawn(get_node("spawn").get_translation(),5)
	get_node("Galinha_Spawner").spawn(get_node("spawn1").get_translation(),10)
	get_node("Galinha_Spawner").spawn(get_node("spawn2").get_translation(),10)
	pass

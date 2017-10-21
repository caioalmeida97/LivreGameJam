extends Spatial



func _ready():
	add_to_group("objetos")
	get_node("Area").connect("area_enter",self,"on_body")
	set_process(true)
	get_node("Rodo").hide()
	
	pass
	

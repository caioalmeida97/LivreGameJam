extends Spatial



func _ready():
	add_to_group("objetos")
	get_node("Area").connect("area_enter",self,"on_body")
	set_process(true)
	get_node("Rodo").hide()
	
	pass
	
func on_body(body):
	print("toco")
	if body.get_parent().is_in_group("galinhas"):
		print("tocu galinha")
		
	pass

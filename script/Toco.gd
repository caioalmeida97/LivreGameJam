extends Spatial



func _ready():
	get_node("Area").connect("area_enter",self,"on_body")
	set_process(true)
	
	pass
	
func on_body(body):
	print("toco")
	if body.get_parent().is_in_group("galinha"):
		print("tocu galinha")
		pass
	pass

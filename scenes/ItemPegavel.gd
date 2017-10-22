extends Spatial


func _ready():
	add_to_group("objetos")
	add_to_group("desentupidor")
	set_process(true)
	get_node("Area").connect("area_enter", self, "on_area_enter")
	pass
	
	
func on_area_enter(area):
	if area.get_parent().is_in_group("player"):
	
		queue_free()
		pass
	
	pass

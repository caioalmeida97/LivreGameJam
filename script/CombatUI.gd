extends Spatial



func _ready():
	set_process(true)
	
	pass
	
func hit():
	get_node("AnimationPlayer").play("DesentupidorAnim")
	pass

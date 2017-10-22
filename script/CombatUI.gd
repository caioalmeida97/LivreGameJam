extends Spatial

var toco = false
var rodo = false
var desentupidor = false
var cont_desentupidor = 0

func _ready():
	set_process(true)
	get_node("Toco").hide()
	get_node("Toco/Rodo").hide()
	get_node("Toco/Desentupidor").hide()

	
	pass
	
func _process(delta):
	visual()
	pass
	
func visual():
	if toco == true:
		get_node("Toco").show()
	else:
		get_node("Toco").hide()
	
	if rodo == true:
		get_node("Toco/Rodo").show()
	else:
		get_node("Toco/Rodo").hide()
	
	if desentupidor == true:
		get_node("Toco/Desentupidor").show()
	else :
		get_node("Toco/Desentupidor").hide()
	pass
	
	
func hit():
	if toco == true:
		get_node("AnimationPlayer").play("DesentupidorAnim")
		cont_desentupidor += 1
		print(cont_desentupidor)
		
	pass
	

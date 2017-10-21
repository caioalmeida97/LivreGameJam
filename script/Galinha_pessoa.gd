extends Spatial



var target = Vector3(5,0,3)
var galinha = get_translation()

var vel = 10

func _ready():
	set_process(true)
	pass
	

var contador = 0
func _process(delta):
	print(get_translation())
	print(galinha)
	if target.x > galinha.x:
		galinha = Vector3(1, 0, 0)
		
	elif target.x < galinha.x:
		galinha.x = -1
	
	if target.z > galinha.z:
		galinha.z = 1
		
	elif target.z < galinha.z:
		galinha.z = -1
	
	if galinha.x == target.x && galinha.z == target.z:
		galinha.y = 1

	galinha = set_translation(get_translation() + vel * galinha * delta)

	
	 
	pass
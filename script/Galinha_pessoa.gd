extends Spatial

var target = Vector3(5,0,3)
var galinha = Vector3(0,0,0)

var veloc = 10

func _ready():
	set_process(true)
	pass
	

var contador = 0
func _process(delta):
	galinha = Vector3(0,0,0)
	#print(get_translation())
	
	if galinha.x > target.x:
		galinha.x = -1
	
	elif galinha.x < target.x:
		galinha.x = 1
	
	if target.z > galinha.z:
		galinha.z = 1
		
	elif target.z < galinha.z:
		galinha.z = -1
	
	if galinha.x == target.x and galinha.z == target.z:
		galinha.y = 1

	print('PRINTANDO GET TRANSLATION + ...')
	print(get_translation() + veloc * galinha * delta)
	set_translation(get_translation() + veloc * galinha * delta)
	
	print('PRINTANDO GALINHA')
	print(galinha)
	print('PRINTANDO GET TRANSLATION')
	print(get_translation())

	
	contador += 1
	pass
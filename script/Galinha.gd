extends Spatial

var direcao = Vector3(0,0,0)
var vel = 5

func _ready():
	set_process(true)
	pass

var contador = 0
var random = 0
func _process(delta):
	if (contador % 300 == 0):
		print(contador)
		random = int (rand_range(1, 8))
		print(random)
	
	if random == 1:
		direcao.x = 1
		set_rotation(Vector3(0, deg2rad(90) ,0))
	elif random == 2:
		direcao.x = -1
		set_rotation(Vector3(0, deg2rad(-90) ,0))
	elif random == 3:
		direcao.z = 1
		set_rotation(Vector3(0, deg2rad(0) ,0))
	elif random == 4:
		direcao.z = -1
		set_rotation(Vector3(0, deg2rad(180) ,0))
	elif random == 5:
		direcao = Vector3(1,0,1)
		set_rotation(Vector3(0, deg2rad(45), 0))
	elif random == 6:
		direcao = Vector3(1,0,-1)
		set_rotation(Vector3(0, deg2rad(90), 0))
	elif random == 7:
		direcao = Vector3(-1,0,1)
		set_rotation(Vector3(0, deg2rad(135), 0))
	elif random == 8:
		direcao = Vector3(-1,0,-1)
		set_rotation(Vector3(0, deg2rad(225), 0))

	set_translation(get_translation() + direcao * vel * delta)
	contador += 1
	pass
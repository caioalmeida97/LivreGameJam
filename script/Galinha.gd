extends Spatial

var direcao = Vector3(0,0,0)
var target = Vector3(3, 0, 2)
var galinha_dir = get_translation()
var vel = 1
var contador_searching = 0
var random = 0
var search_radius = 5


func _ready():
	set_process(true)
	add_to_group("galinhas")
	get_node("Area").connect("area_enter", self, "on_area_enter")
	pass
	
func on_area_enter(area):
	if area.is_in_group("paredes") or area.get_parent().is_in_group("galinhas"): 
		direcao.x *= -1
		direcao.z *= -1
	#elif area.is_in_group("personagem"):
	elif area.get_parent().is_in_group("objetos"):
		get_node("Particles/AnimationPlayer").play("BloodAnim")
		#queue_free()
		
	pass
	
func follow(var fps):
	
	#State follow
	galinha_dir = Vector3(0,0,0)
	if target.x > galinha_dir.x:
		galinha_dir.x = 1
	
	elif target.x < galinha_dir.x:
		galinha_dir.x = -1
	
	if target.z > galinha_dir.z:
		galinha_dir.z = 1
		
	elif target.z < galinha_dir.z:
		galinha_dir.z = -1
	
	var distancia_gtot = get_translation().distance_to(target)

	if (distancia_gtot < float (vel)):
		galinha_dir = Vector3(0,0,0)

	set_translation(get_translation() + vel * galinha_dir * fps)
	pass
	
func searching(var fps):
	#State searching
	randomize()	
	if (contador_searching % 200 == 0):
		random = int (rand_range(1, 8))
	
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

	set_translation(get_translation() + direcao * vel * fps)
	contador_searching += 1
	pass
	

func _process(delta):
	var searching
	if get_translation().distance_to(target) > search_radius:
		searching = true
	else:
		searching = false
	if searching:
		searching(delta)
	else:
		follow(delta)
	
	pass
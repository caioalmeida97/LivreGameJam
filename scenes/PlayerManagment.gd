extends Spatial
var life = 100
var item = 0;
var itemDurab = 100
var QtdeSabonete = 20
var pre_mesh = preload("res://meshes/Rodo.scn")
var cont = 0;

func _ready():
	set_process(true)
	spawn(Vector3(0,0,0), 10)
	print("teste")
	pass

func _process(delta):
	
	pass
	
func spawn(vector, g):
	while cont < g :
		var mesh = pre_mesh.instance()
		mesh.set_translation(vector+Vector3(0,cont,4))
		get_owner().add_child(mesh)
		print("feito")
		print(cont)
		print(mesh.get_translation())
		cont += 1
		pass
	pass

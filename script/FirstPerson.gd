
extends RigidBody

var X = 0.00
var Y = 0.00
var speed = 0.2 #Player speed
var vida = 10
var vivo 


func _ready():
	#Hide and capture mouse
	vivo = true
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	set_fixed_process(true)
	set_process_input(true)
	get_node("Area").connect("area_enter",self,"on_area")
	pass
	
func on_area(area):
	if area.get_parent().is_in_group("galinhas"):
		dar_dano(1);
		pass
	if vida <= 0 :
		print("morreu")
		vivo = false
		pass
	
	pass
	
func dar_dano(valor):
	vida =- valor
	pass

func _fixed_process(delta):
	#Player movement
	if Input.is_key_pressed(KEY_W):
		translate(Vector3(0, 0, -speed))
	if Input.is_key_pressed(KEY_S):
		translate(Vector3(0, 0, speed))
	if Input.is_key_pressed(KEY_A):
		translate(Vector3(-speed, 0, 0))
	if Input.is_key_pressed(KEY_D):
		translate(Vector3(speed, 0, 0))
	if Input.is_action_pressed("shoot"):
		get_node("Spatial").hit()
	pass

func _input(event):
	#Camera motion
	if event.type == InputEvent.MOUSE_MOTION:
		X += event.relative_x*0.005
		self.set_rotation(Vector3(0, -X, 0))
		Y += event.relative_y*0.005
		if(not Y > 1.5):
			get_node("Camera").set_rotation(Vector3(-Y,0,0))
		else:
			Y = 1.5
		if(not Y < -1.5):
			get_node("Camera").set_rotation(Vector3(-Y,0,0))
		else:
			Y = -1.5
		#Show mouse
		if Input.is_key_pressed(KEY_ESCAPE):
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		pass
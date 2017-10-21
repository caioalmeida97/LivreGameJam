extends CollisionShape

func _ready():
	set_process(true)
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_SPACE) && (get_parent().get_translation().y < 5.1 or 
	(get_parent().get_translation().y > 10.27 && get_parent().get_translation().y < 10.32) or 
	(get_parent().get_translation().y > 9.44 && get_parent().get_translation().y < 9.51) or 
	(get_parent().get_translation().y > 6.7 && get_parent().get_translation().y < 6.74)):
		get_parent().apply_impulse(get_parent().get_translation(), Vector3(0,3,0))
		pass
	print(get_parent().get_translation().y)
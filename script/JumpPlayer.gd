extends CollisionShape

func _ready():
	set_process(true)
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_SPACE) && get_parent().get_translation().y < 5:
		 get_parent().apply_impulse(get_parent().get_translation(), Vector3(0,3,0))
		
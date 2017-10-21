extends SamplePlayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var music;
var songSlider;
var sample;

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	songSlider = get_parent().get_node("Options_UI/MarginContainer/HBoxContainer/CenterContainer/VBoxContainer/VBoxContainer/HBoxContainer/HSlider");
	set_default_volume_db(0);
	songSlider.set_value(0);
	
	sample = self.get_sample_library().get_sample("thefieldofdreams");
	
	sample.set_loop_begin(0);
	sample.set_loop_format(sample.LOOP_FORWARD);
	sample.set_loop_end(sample.get_length());
	
	music = play("thefieldofdreams", false);
	pass


func _on_VolumeSlider_value_changed( value ):
	set_volume_db(music, value);
	pass # replace with function body

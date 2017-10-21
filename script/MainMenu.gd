extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

## Main Menu
func _on_PlayButton_pressed():
	print ("Starting game!");
	# Starts the game.
	get_tree().change_scene("res://scenes/Main.tscn");


func _on_OptionsButton_pressed():
	print ("Moving to the options menu!");
	# Hides the current Main Menu.
	self.hide();
	# Moves to the parent object and enables the "Options" UI.
	get_parent().get_node("Options_UI").show();
	


func _on_ExitButton_pressed():
	print ("Exiting game!");
	# Ends the execution of the game.
	get_tree().quit();


## Options Menu
func _on_ReturnButton_pressed():
	# Moves to the parent object and disables the "Options" UI.
	get_parent().get_node("Options_UI").hide();
	# Reenable MainMenu UI.
	self.show();
#   AudioServer.set_fx_global_volume_scale(sound_volume*sound)
#   AudioServer.set_stream_global_volume_scale(music_volume*music)  


func _on_FullScreenCheckbox_toggled( pressed ):
	# Sets fullscreen mode.
	OS.set_window_fullscreen(pressed);
	#OS.set_window_size(OS.get_screen_size(0))


func _on_WindowedMode_toggled( pressed ):
	## BUG!!!
	if (!OS.is_window_fullscreen()):
		OS.set_borderless_window(pressed);

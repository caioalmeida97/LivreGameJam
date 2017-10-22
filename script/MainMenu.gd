extends Node

var gameScene = "res://scenes/Lighting.tscn";
var creditsPanel;
var optionsMenu;
var mainMenu;
var menuAnim;
var menuAnimation = "main_menu";

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	mainMenu = self.get_node(".");
	mainMenu.show();
	optionsMenu = get_parent().get_node("Options_UI");
	optionsMenu.hide();
	creditsPanel = get_parent().get_node("Options_UI/PopupPanel");
	menuAnim = get_parent().get_node("AnimationPlayer");
	menuAnim.play(menuAnimation);
	
	set_process_input(true);
	pass


func _input(event):
	if Input.is_action_pressed("ui_cancel"):
		if not creditsPanel.is_hidden():
			creditsPanel.hide();
		elif optionsMenu.is_visible():
			optionsMenu.hide();
			mainMenu.show();


## Main Menu
func _on_PlayButton_pressed():
	print ("Starting game!");
	# Starts the game.
	get_tree().change_scene(gameScene);


func _on_OptionsButton_pressed():
	print ("Moving to the options menu!");
	# Hides the current Main Menu.
	self.hide();
	# Moves to the parent object and enables the "Options" UI.
	optionsMenu.show();


func _on_ExitButton_pressed():
	print ("Exiting game!");
	# Ends the execution of the game.
	get_tree().quit();


## Options Menu
func _on_ReturnButton_pressed():
	# Moves to the parent object and disables the "Options" UI.
	optionsMenu.hide();
	# Reenable MainMenu UI.
	self.show();
#   AudioServer.set_fx_global_volume_scale(sound_volume*sound)
#   AudioServer.set_stream_global_volume_scale(music_volume*music)  


func _on_FullScreenCheckbox_toggled( pressed ):
	# Sets fullscreen mode.
	OS.set_window_fullscreen(pressed);
	#OS.set_window_size(OS.get_screen_size(0))


func _on_CreditsButton_pressed():
	creditsPanel.show();


func _on_CreditsBackButton_pressed():
	creditsPanel.hide();

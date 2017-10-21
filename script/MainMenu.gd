extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_PlayButton_pressed():
	print ("Starting game!");


func _on_OptionsButton_pressed():
	print ("Moving to the options menu!");
	self.hide();

func _on_ExitButton_pressed():
	print ("Exiting game!");
	get_tree().quit();

#func _my_level_was_completed():
#    get_tree().change_scene("res://levels/level2.scn")


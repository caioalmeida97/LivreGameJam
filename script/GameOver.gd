extends Control

var restartGame = "res://scenes/Lighting.tscn";
var mainMenuScene = "res://scenes/UI_Test.tscn";

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_RestartButton_pressed():
	get_tree().change_scene(restartGame);


func _on_MainMenuButton_pressed():
	get_tree().change_scene(mainMenuScene);

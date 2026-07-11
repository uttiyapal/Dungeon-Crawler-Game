extends Control

@onready var how_to_panel = $HowToPanel
@onready var menu = $VBoxContainer

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game/main.tscn")

func _on_how_to_button_pressed():
	menu.visible = false
	how_to_panel.visible = true

func _on_quit_button_pressed():
	get_tree().quit()

func _on_back_button_pressed():
	how_to_panel.visible = false
	menu.visible = true

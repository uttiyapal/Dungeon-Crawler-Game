extends Area2D

@export_multiline var message: String = "Watch out for lava ahead!"

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body):
	if !body.is_in_group("Player"):
		return
	get_tree().current_scene.show_message(message, 3.0)

func _on_body_exited(body):
	if !body.is_in_group("Player"):
		return
	get_tree().current_scene.hide_message()

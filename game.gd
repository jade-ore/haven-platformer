extends Node2D



func _on_area_2d_body_entered(_body: Node2D) -> void:
	call_deferred("home_screen")

func home_screen():
	get_tree().change_scene_to_file("res://endscreen.tscn")

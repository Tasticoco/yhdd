extends Area3D

@export_file("*.tscn") var next_scene

func _on_body_entered(body: Node3D) -> void:
	if body.name == "Yollande" :
		get_tree().change_scene_to_file(next_scene)

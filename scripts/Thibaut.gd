extends StaticBody3D

var player_in_chat_zone : bool = false

@export var cam : Camera3D
@onready var sprite_3d: Sprite3D = $Sprite3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sprite_3d.look_at(cam.global_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("chat") && player_in_chat_zone :
		Dialogic.start("fight_thibaut")


func _on_chat_area_body_entered(body: Node3D) -> void:
	if body.name == "Yollande" :
		player_in_chat_zone = true


func _on_chat_area_body_exited(body: Node3D) -> void:
	if body.name == "Yollande" :
		player_in_chat_zone = false

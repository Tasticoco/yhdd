extends CharacterBody3D

@export var cam : Camera3D
@onready var sprite_3d: Sprite3D = $Sprite3D
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D

const SPEED : float = 7.0
const JUMP_VELOCITY : float = 4.5

func _ready() -> void:
	sprite_3d.look_at(cam.global_position)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("left", "right", "up", "down")
	var direction := (cam.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

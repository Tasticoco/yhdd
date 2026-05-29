extends HBoxContainer

@onready var color_rect: ColorRect = $ColorRect
@onready var color_rect_2: ColorRect = $ColorRect2
@onready var color_rect_3: ColorRect = $ColorRect3
@onready var color_rect_4: ColorRect = $ColorRect4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match Dialogic.VAR.stress :
		1.0: 
			color_rect.visible = true
		2.0: 
			color_rect_2.visible = true
		3.0: 
			color_rect_3.visible = true
		4.0: 
			color_rect_4.visible = true
		_:
			color_rect.visible = false
			color_rect_2.visible = false
			color_rect_3.visible = false
			color_rect_4.visible = false
	

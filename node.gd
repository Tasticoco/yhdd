extends Node

func _process(delta: float) -> void:
	if Dialogic.VAR.new_phase :
		Dialogic.VAR.new_phase = false
		Dialogic.start("grandma_intro_phase")
	

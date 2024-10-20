extends Area2D

@onready var Marker = $Marker2D

func _physics_process(delta: float) -> void:
	var direction = get_global_mouse_position()
	Marker.look_at(direction)
	
	
		
	

extends Area2D


var distanza_percorsa = 0
const distanza_massima = 40000
const SPEED = 500 
var damage : float = 3.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var direction = Vector2.RIGHT.rotated(rotation)
	position += transform.x * SPEED * delta

	distanza_percorsa += SPEED
	#print(distanza_percorsa)
	if distanza_percorsa >= distanza_massima:
		queue_free()


func get_damage():
	return damage
	
func set_damage(value : float):
	damage = value

func hit():
	queue_free()

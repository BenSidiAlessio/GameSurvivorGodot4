class_name Hurtbox
extends Area2D

func _init() -> void:
	collision_layer = 0
	collision_mask = 2




func _on_area_entered(hitbox: Hitbox) -> void:
	if hitbox != null:
		if owner.has_method("take_damage"):
			owner.take_damage(hitbox.damage)
		
		if hitbox.owner.has_method("hit"):
			hitbox.owner.hit()

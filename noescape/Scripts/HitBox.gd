class_name Hitbox
extends Area2D

var damage : float

func _ready() -> void:
	if owner.has_method("get_damage"):
		damage = owner.get_damage()



func _init() -> void:
	collision_layer = 2
	collision_mask = 0
	

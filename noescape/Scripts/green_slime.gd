class_name GreenSlime
extends CharacterBody2D

var health = 10
var speed = 3000
var worldLevelExp = 1

@onready var Knife = get_node("/root/World/Knife")
@onready var WorldLevelBar = get_node("/root/World/Knife/Camera2D/WorldLevelBar")

func _physics_process(delta: float) -> void:
	velocity = global_position.direction_to(Knife.global_position) * speed * delta
	move_and_slide()

func take_damage(damage):
	health -= damage
	# pushback
	# hurt animation
	
	# dead
	if health <= 0:
		# custom signal from world for make spawn more enemy
		WorldLevelBar.riseLevel(worldLevelExp)
		queue_free()

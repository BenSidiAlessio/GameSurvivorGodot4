extends Node2D

@export var enemy : Enemy 


func spawn_mob(level):
	var mob = enemy.scene.instantiate()
	%SpawnerPosition.progress_ratio = randf()
	mob.global_position = %SpawnerPosition.global_position
	add_child(mob)

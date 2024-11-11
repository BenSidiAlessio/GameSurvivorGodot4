extends Node

@export var enemy : Enemy 
@export var enemies = {}

func spawn_mob(level : int):
	var mob
	
	if level >= 3:
		mob = enemies["green_slime"].scene.instantiate()
	else:	
		mob = enemies["yellow_trex"].scene.instantiate()
		
	%SpawnerPosition.progress_ratio = randf()
	mob.global_position = %SpawnerPosition.global_position
	add_child(mob)

extends Node2D

@onready var weapon = $Knife
@onready var TimeMobSpawner = %TimeMobSpawner

func _ready() -> void:
	spawn_mob()
	spawn_mob()
	spawn_mob()
	spawn_mob()
	
	

func _physics_process(delta: float) -> void:
	
	if Input.is_action_just_pressed("fire"): 
		# collegamento alla ""classe"" del proiettile
		const PROIETTILE = preload("res://Scenes/knife_bullet.tscn")
		# istanzio il proiettile
		var proiettile = PROIETTILE.instantiate()
		# do una posizione di partenza al proiettile -> a partire dalla posizione del Marker2D
		proiettile.rotation = weapon.Marker.global_rotation
		proiettile.global_position = weapon.Marker.global_position
		#proiettile.transform = %ProiettileSpawn.transform
		# questo fa spawnare il proiettile
		get_tree().root.add_child(proiettile)

	if TimeMobSpawner.is_stopped():
		spawn_mob()
		TimeMobSpawner.start()

func spawn_mob():
	var mob = preload("res://Scenes/GreenSlime.tscn").instantiate()
	%SpawnerPosition.progress_ratio = randf()
	mob.global_position = %SpawnerPosition.global_position
	add_child(mob)

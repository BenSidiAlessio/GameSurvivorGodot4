extends Node2D

@onready var weapon = $Knife
@onready var TimeMobSpawner = %TimeMobSpawner
@onready var enemy = %Enemy
#@export var enemy : Enemy
var worldLevel : int

func _ready() -> void:
	worldLevel = 1
	enemy.spawn_mob(worldLevel)
	enemy.spawn_mob(worldLevel)
	enemy.spawn_mob(worldLevel)
	enemy.spawn_mob(worldLevel)
	
func _physics_process(delta: float) -> void:
	
	if Input.is_action_pressed("fire"): 
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
		enemy.spawn_mob(worldLevel)
		TimeMobSpawner.start()

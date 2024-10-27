extends ProgressBar

@onready var worldLevelLabel = %WorldLevelLabel
@onready var world = get_node("/root/World")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	max_value = 10*world.worldLevel
	value = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func riseLevel(expPoint):
	value += expPoint
	print(value)
	if value == max_value:
		value = value-max_value
		world.worldLevel += 1
		max_value = 10*world.worldLevel
		print(max_value)
		worldLevelLabel.levelUp(world.worldLevel)

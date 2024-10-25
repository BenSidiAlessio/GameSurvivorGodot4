extends ProgressBar

@onready var worldLevel = %WorldLevel
var level : int = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	max_value = 10*level
	value = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func riseLevel(expPoint):
	value += expPoint
	print(value)
	if value == max_value:
		value = value-max_value
		level += 1
		max_value = 10*level
		print(max_value)
		worldLevel.levelUp(level)

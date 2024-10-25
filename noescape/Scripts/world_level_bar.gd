extends ProgressBar

@onready var worldLevel = %WorldLevel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func riseLevel(expPoint):
	value += expPoint
	if value == max_value:
		value = 0
		worldLevel.levelUp(1)

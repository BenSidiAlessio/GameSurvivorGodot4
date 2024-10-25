extends Label

@onready var worldLevel : int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func levelUp(levelToAdd):
	worldLevel = levelToAdd
	set_text(str(worldLevel))

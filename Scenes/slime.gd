extends Node2D


# Called when the node enters the scene tree for the first time.

const speed = 60

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += 1 * delta

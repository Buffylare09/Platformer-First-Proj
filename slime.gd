extends Node2D


# Called when the node enters the scene tree for the first time.

const SPEED = 60
var direction = 1

@onready var ray_right: RayCast2D = $"Ray right"
@onready var ray_left: RayCast2D = $"Ray left"

func _process(delta: float) -> void:
	if ray_right.is_colliding():
		direction = -1
	if ray_left.is_colliding():
		direction = 1
	
	position.x += direction * SPEED * delta
	

# Called every frame. 'delta' is the elapsed time since the previous frame.

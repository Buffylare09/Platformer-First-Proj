extends Sprite2D


var start = ("0,-12")



func _on_area_2d_body_entered(body: Node2D) -> void:
	Checkpoint.last_position = global_position

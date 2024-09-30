extends Area2D

@onready var timer = $Timer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


func _on_body_entered(body) -> void:
	print("death")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start(.5)
	
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()

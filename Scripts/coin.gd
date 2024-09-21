extends Area2D

@onready var coin = $AnimatedSprite2D


func _on_body_entered(body) -> void:
	print("good job")
	queue_free()

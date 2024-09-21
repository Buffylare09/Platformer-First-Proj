extends Area2D

@onready var timer = $Timer

@onready var try = 0


func _on_body_entered(body: Node2D) -> void:
	timer.start(.06)
	print("died")
	

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()

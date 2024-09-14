extends Area2D

@onready var timer = $Timer
@onready var player = get_node("/root/Game/Player")

func _on_body_entered(body: Node2D) -> void:
	timer.start()
	player.DIED = true
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	player.DIED = false

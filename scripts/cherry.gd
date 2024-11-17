extends Area2D
@onready var sprite = $AnimatedSprite2D
@onready var game_manager: GameManager = %UI

func _on_body_entered(body: Node2D) -> void:
	game_manager.addScore()
	sprite.play("feedback")
	await sprite.animation_finished
	queue_free()

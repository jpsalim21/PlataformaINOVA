extends Area2D
@onready var sprite = $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	sprite.play("feedback")
	await sprite.animation_finished
	queue_free()

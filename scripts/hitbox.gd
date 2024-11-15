extends Area2D

@onready var timer = $Timer
@onready var enemy_sprite = $"../AnimatedSprite2D"

var player : Player = null

func _on_body_entered(body: Node2D) -> void:
	player = body
	var player_sprite = player.sprite
	
	if not player_sprite.animation == "fall":
		timer.start()
		player.DIED = true
	else:
		get_parent().SPEED = 0
		enemy_sprite.animation = "death"
		player.velocity.y = player.JUMP_VELOCITY

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	player.DIED = false

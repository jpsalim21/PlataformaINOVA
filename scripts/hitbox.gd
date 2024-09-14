extends Area2D

@onready var timer = $Timer
@onready var player = get_node("/root/Game/Player")
@onready var player_sprite = get_node("/root/Game/Player/AnimatedSprite2D")
@onready var enemy_sprite = get_parent().get_node("AnimatedSprite2D")

func _on_body_entered(body: Node2D) -> void:
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

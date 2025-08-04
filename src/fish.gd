extends Sprite2D

const SPEED:= -200

func _physics_process(delta: float) -> void:
	global_position += Vector2(SPEED * delta, 0)

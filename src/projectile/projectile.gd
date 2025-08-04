extends Sprite2D

@export var SPEED:= 400

func _physics_process(delta: float) -> void:
	global_position += Vector2(SPEED * delta, 0)

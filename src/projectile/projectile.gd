extends Sprite2D

@export var SPEED:= 400

func _physics_process(delta: float) -> void:
	global_position += Vector2(SPEED * delta, 0)

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("hit!")

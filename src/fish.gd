extends CharacterBody2D

@export var SPEED:= -200

func _physics_process(delta: float) -> void:
	velocity = Vector2(SPEED, 0)
	move_and_slide()

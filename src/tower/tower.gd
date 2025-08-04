extends Sprite2D

@onready var timer: Timer = %Timer

func _ready() -> void:
	timer.timeout.connect(_on_timer_timeout)
	timer.start()

func _on_timer_timeout():
	var projectile_scene = preload("res://src/projectile/projectile.tscn")
	var pew = projectile_scene.instantiate()
	add_child(pew)

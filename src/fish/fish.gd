extends CharacterBody2D
@onready var progress_bar: ProgressBar = %ProgressBar

@export var SPEED:= -200
@export var health:= 100

func _ready():
	progress_bar.max_value = health
	progress_bar.value = health

func _physics_process(delta: float) -> void:
	velocity = Vector2(SPEED, 0)
	move_and_slide()
	
	var collision_count = get_slide_collision_count()
	for i in collision_count:
		var collision_info = get_slide_collision(i)
		var collider = collision_info.get_collider()
	

func take_damage(damage: float):
	health -= damage
	progress_bar.value = health
	
	if health <= 0:
		queue_free();

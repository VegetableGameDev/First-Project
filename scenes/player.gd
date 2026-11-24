extends CharacterBody2D

## Movement speed in pixels per second.
@export var speed: float = 200.0


func _physics_process(_delta: float) -> void:
	# get_vector returns a direction of length 0..1, so diagonals aren't faster.
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed
	move_and_slide()

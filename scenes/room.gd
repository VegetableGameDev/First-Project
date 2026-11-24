class_name Room
extends Node2D

## Passed up from any pickup in this room, so Main can track the score.
signal pickup_collected(points: int)

## Parent node whose children are the Pickup instances in this room.
@export var pickups: Node


func _ready() -> void:
	for child: Node in pickups.get_children():
		var pickup: Pickup = child as Pickup
		if pickup:
			pickup.collected.connect(_on_pickup_collected)


func _on_pickup_collected(points: int) -> void:
	pickup_collected.emit(points)

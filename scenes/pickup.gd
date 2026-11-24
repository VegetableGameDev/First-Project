class_name Pickup
extends Area2D

## Emitted when the player touches this pickup, just before it removes itself.
signal collected(points: int)

## How much score this pickup is worth.
@export var points: int = 1


func _ready() -> void:
	body_entered.connect(_on_body_entered)


func _on_body_entered(_body: Node2D) -> void:
	# The collision mask only includes the player layer, so any body here is the player.
	collected.emit(points)
	queue_free()

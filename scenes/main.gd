extends Node2D

@export var room: Room
@export var score_label: Label

var score: int = 0


func _ready() -> void:
	room.pickup_collected.connect(_on_pickup_collected)
	_update_score_label()


func _on_pickup_collected(points: int) -> void:
	score += points
	_update_score_label()


func _update_score_label() -> void:
	score_label.text = "Score: %d" % score

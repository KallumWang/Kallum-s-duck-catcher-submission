extends Area2D
#variables
var acceleration = 1.0
var velocity = 0.0
var rotation_velocity = randf_range(1.0, 3.0)

func _process(delta: float) -> void:
	velocity += acceleration * delta
	position.y += velocity
	rotation += rotation_velocity * delta

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Signals.score_increased.emit()  # emit the score signal
		queue_free()

extends CharacterBody2D

@onready var sprite = $Sprite2D
var speed = 670

func _physics_process(_delta):
	# Move left/right
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	move_and_slide()

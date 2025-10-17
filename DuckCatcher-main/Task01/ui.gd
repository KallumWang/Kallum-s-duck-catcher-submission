extends Control

@onready var score_label = $ScoreLabel
var score := 0

func _ready():
	Signals.score_increased.connect(_on_score_increased)

func _on_score_increased():
	score += 1
	score_label.text = "Score: " + str(score)

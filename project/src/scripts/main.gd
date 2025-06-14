extends Node2D

var score_per_click = 1
var score = 0
var score_per_second = 0


func increment_score():
	score += score_per_click
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start()
	pass # Replace with function body.

func _on_timer_timeout():
	score += score_per_second
	$Timer.start()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Score.update()
	pass

extends Button


# Called when the node enters the scene tree for the first time.

func _pressed():
	if $"../..".score >= 500:
		$"../..".score -= 500
		$"../..".score_per_second += 1
		
func _ready() -> void:
	disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"../..".score >= 500:
		disabled = false
	else:
		disabled = true

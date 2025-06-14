extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	disabled = true # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"../../../..".score >= $"..".next_level:
		disabled = false
	else:
		disabled = true

func _pressed():
	if $"../../../..".score >= $"..".next_level:
		$"../../../..".score -= $"..".next_level
		$"../../../..".score_per_second += 1.67
		$"..".level += 1
		

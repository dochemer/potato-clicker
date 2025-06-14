extends Button


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
		$"../../../..".score_per_second += 19440
		$"..".level += 1

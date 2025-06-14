extends Button

func _pressed():
	if $"../../..".score >= 20:
		$"../../..".score_per_click += 1
		$"../../..".score -= 20
		#$"../Score".update()
	print("It's pressed")
	

func _ready() -> void:
	disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"../../..".score >= 20:
		disabled = false
	else:
		disabled = true

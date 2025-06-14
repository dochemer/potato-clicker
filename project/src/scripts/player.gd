extends Sprite2D

var counter = 0

func _input(event):
	if event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_LEFT \
	and event.pressed:
		if is_pixel_opaque(get_local_mouse_position()):
			self.on_click()

func on_click():
	#print("Clicked")
	$"..".increment_score()
	$"../ClickEffect".play()
	#$"../Score".update()
	counter = 8
	scale.x += 0.4
	scale.y += 0.4
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if counter == 0:
		scale.x = 1.0
		scale.y = 1.0
	else:
		counter -= 1

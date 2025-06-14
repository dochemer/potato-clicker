extends PanelContainer


var level = 0
var base_cost = 103608
var coeff = 1.12
var next_level = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	next_level = base_cost
	$LevelLabel.text = str(level)
	$CostLabel.text = "x1, " + str(next_level) + " coins"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	next_level = int(ceil(base_cost * pow(coeff,level)))
	$LevelLabel.text = str(level)
	$CostLabel.text = "x1, " + str(next_level) + " coins"

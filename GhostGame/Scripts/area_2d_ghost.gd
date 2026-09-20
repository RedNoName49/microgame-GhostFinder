extends Area2D

var turnYellow: Tween = create_tween()
var winTime: int = 3

@onready var flashlightArea: Area2D = $"../FlashlightArea2D"

func startWinning(duration: int) -> void:
	turnYellow.tween_property($"../AnimatedSprite2D", "modulate", Color(1, 1, 0, 1), winTime) 
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	var overlappingAreas = flashlightArea.get_overlapping_areas()
	
	if overlappingAreas.size() > 0:
		print("overlap")

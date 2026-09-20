extends Node2D

var ghostChoice: int = randi_range(0, 3)

var timer: float = 15

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer -= delta
	if timer > 0:
		print("time left:", snapped(timer, 0.01))
	if timer <= 0:
		print("you lose")

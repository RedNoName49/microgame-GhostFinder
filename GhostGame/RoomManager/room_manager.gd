extends Control

# variable that determines which room is called when the game starts
var roomChoice: int = randi_range(0, 0) 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
func _input(event) -> void:
	if event.is_action_pressed("a"):
		match roomChoice:
			0: 
				get_tree().change_scene_to_file("res://GhostGame/room1.tscn")
			1: 
				pass
			2:
				pass
		
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

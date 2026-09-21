extends MicroGame

# variable that determines which room is called when the game starts
var roomChoice: int = randi_range(0, 1) 
@onready var playIntro = $intro_screen
# Called when the node enters the scene tree for the first time.
	
func startRound() -> void:
	match roomChoice:
		0: 
			get_tree().change_scene_to_file("res://GhostGame/room1.tscn")
		1: 
			get_tree().change_scene_to_file("res://GhostGame/Rooms/room_2.tscn")
		2:
			pass
		
func _ready() -> void:
	playIntro.StartIntro()
	playIntro.canStart.connect(startRound)
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

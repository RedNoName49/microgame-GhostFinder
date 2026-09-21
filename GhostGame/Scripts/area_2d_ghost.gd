extends Area2D

var winTime: float = 0.0
var isColliding: bool = false
var timeDuration: float = 2
var soundPlayed: bool = false


@onready var flashlightArea: Area2D = $"../FlashlightArea2D"
@onready var animationPlayer: AnimationPlayer = $"../AnimatedSprite2D/AnimationPlayer"
@onready var animatedSprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func CountDownFinish() -> void: 
	if soundPlayed == false:
		$"../AudioStreamPlayer".play()
		soundPlayed = true
	animationPlayer.play("RESET")
	GameManager.win()
	
func CountDownReset() -> void:
	winTime = timeDuration
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	winTime = timeDuration
	
func _process(delta: float) -> void:
	if isColliding and winTime > 0: 
		winTime -= delta
	
	if winTime <= 1.5:
		animationPlayer.play("Shake")
	else:
		animationPlayer.play("RESET")
	
	if winTime <= 0.5:
		animatedSprite.play("Scream")
	else:
		animatedSprite.play("Normal")
	
	if winTime <= 0:
		CountDownFinish()

func _physics_process(delta: float) -> void:
	var overlappingAreas = flashlightArea.get_overlapping_areas()
	
	if overlappingAreas.size() > 0:
		isColliding = true
	else:
		isColliding = false
		CountDownReset()

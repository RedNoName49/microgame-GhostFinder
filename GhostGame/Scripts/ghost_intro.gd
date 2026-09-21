extends Control

signal canStart
@onready var intro: AnimatedSprite2D = $AnimatedSprite2D
@onready var disappear: ControlTween = $Disappear as ControlTween

func _ready() -> void:
	intro.visible = true

func StartIntro() -> void:
	await get_tree().create_timer(2, false).timeout
	disappear.do_tween()
	await disappear.tween.finished
	canStart.emit()

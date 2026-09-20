extends Node2D


func _enter_tree() -> void:
	if $"..".ghostChoice == 2:
		pass
	else:
		queue_free()

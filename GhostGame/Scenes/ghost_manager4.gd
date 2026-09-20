extends Node2D


func _enter_tree() -> void:
	if $"..".ghostChoice == 3:
		pass
	else:
		queue_free()

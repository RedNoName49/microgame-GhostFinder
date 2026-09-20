extends Node2D


func _enter_tree() -> void:
	if $"..".ghostChoice == 0:
		pass
	else:
		queue_free()

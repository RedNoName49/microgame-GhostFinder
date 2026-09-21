extends Node2D

func _ready() -> void:
	$"..".ghostLoseByeBye.connect(Delete)

func _enter_tree() -> void:
	if $"..".ghostChoice == 0:
		pass
	else:
		queue_free()

		
func Delete() -> void:
	queue_free()
	

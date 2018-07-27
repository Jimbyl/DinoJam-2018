extends Particles2D

func _ready():
	var enemy = get_node("KinematicSkeleton")
	pass

func _process(delta):
	if enemy.is_queued_for_deletion() == true:
		set_emitting(true)
	pass

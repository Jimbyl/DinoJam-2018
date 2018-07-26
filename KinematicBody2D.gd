extends KinematicBody2D

var motion = Vector2()
var normalVec = Vector2(0,-1)
var speed = 75
var knockback = 100
var health = 4
func _physics_process(delta):
	var player = get_tree().get_nodes_in_group("SwimmingAI")[0]
	var angle = get_angle_to(player.position)
	motion = polar2cartesian(speed, angle)
	if(global_position.distance_to(player.position) < 75): #attack player
		player.motion += polar2cartesian(knockback, angle)
		player.health -= 1
	get_node("HBoxContainer/Health").set_text(str(health))
	if health < 1:
		queue_free()

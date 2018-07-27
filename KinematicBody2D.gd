extends KinematicBody2D

var motion = Vector2()
var normalVec = Vector2(0,-1)
var speed = 75
var knockback = 300
var health = 4

var can_attack = true
var timer = null
var i_frame = 2

func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(i_frame)
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	
func on_timeout_complete():
	can_attack = true

func _physics_process(delta):
	var player = get_tree().get_nodes_in_group("SwimmingAI")[0]
	var angle = get_angle_to(player.position)
	motion = polar2cartesian(speed, angle)
	if(global_position.distance_to(player.position) < 75) and can_attack == true : #attack player
		can_attack = false
		timer.start()
		player.motion += polar2cartesian(knockback, angle)
		player.health -= 1
	get_node("HBoxContainer/Health").set_text(str(health))
	if health < 1:
		get_parent().get_node("death").set_emitting(true)
		queue_free()


extends Area2D

const BULLET_SPEED = 400


onready var speed_x = 1
onready var speed_y = 0

func _ready():
	set_process(true)

func _process(delta):
	var motion = Vector2(speed_x, speed_y) * BULLET_SPEED
	set_position(get_position() + motion * delta)
	
	
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Area2D_body_entered(body):
	queue_free()

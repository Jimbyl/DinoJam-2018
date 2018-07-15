extends KinematicBody2D
var motion = Vector2()
var speed = 0
var speedMax = 400
var acc = 25
var fric = 1
var angle = 180
var angleSpeed = 15

func _physics_process(delta):
	#change direction
	if Input.is_action_pressed('ui_right'):
		angle+=angleSpeed
	elif Input.is_action_pressed('ui_left'):
		angle-=angleSpeed
	#change speed
	if Input.is_action_pressed('ui_up'):
		if speed <= speedMax:
			speed+=acc
			if speed > speedMax:
				speed = speedMax
	elif speed > 0:
		speed -= fric
		if speed < 0:
			speed = 0
	#update speed and direction
	motion.x = speed*cos((angle-90)*PI/180)
	motion.y = speed*sin((angle-90)*PI/180)
	move_and_slide(motion)
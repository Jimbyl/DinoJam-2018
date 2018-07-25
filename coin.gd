extends Node2D

export var value = 1



func _ready():
	
	if get_owner() != null:
		get_owner().money_total += value
	get_node("AnimationPlayer").play("coin")


func _collect_money( body ):
	if get_node("AnimationPlayer").get_current_animation() != "collect":
		if get_owner() != null:
			get_owner().money_collected += value
			get_owner().get_node("KinematicBody2D/Camera2D/gui/ViewportContainer/TextureRect/HBoxContainer/money_count").set_text(str(get_owner().money_collected))
			print(get_owner().money_collected)
			
		get_node("AnimationPlayer").play("collect")
		queue_free()




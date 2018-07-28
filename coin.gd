extends Node2D

export var value = 1
onready var swimmingScene = get_tree().get_nodes_in_group("SwimmingAI")[0].get_parent()
func _ready():
	swimmingScene.money_total += value
	get_node("AnimationPlayer").play("coin")


func _collect_money( body ):
	if get_node("AnimationPlayer").get_current_animation() != "collect":
		
		swimmingScene.money_collected += value
		swimmingScene.get_node("Player/Camera2D/gui/HBoxContainer/money_count").set_text(str(swimmingScene.money_collected))
		print(swimmingScene.money_collected)
		get_node("AnimationPlayer").play("collect")
		queue_free()




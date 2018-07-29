extends Node2D

export var value = 1
onready var swimmingScene = get_tree().get_nodes_in_group("SwimmingAI")[0].get_parent()
func _ready():
	get_node("AnimationPlayer").play("coin")
	swimmingScene.get_node("Player/Camera2D/gui/HBoxContainer/money_count").set_text(str(Global_Player.inventory_checkItemAmount("3")))


func _collect_money( body ):
	if get_node("AnimationPlayer").get_current_animation() != "collect":
		
		Global_Player.inventory_addItem("3")
		swimmingScene.get_node("Player/Camera2D/gui/HBoxContainer/money_count").set_text(str(Global_Player.inventory_checkItemAmount("3")))
		get_node("AnimationPlayer").play("collect")
		queue_free()




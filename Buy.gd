extends Control

var money = Global_Player.inventory_checkItemAmount("3")









func _on_brother_pressed():
	if money <= 30:
		Global_Player.inventory_addItem("17")
		for i in range (1, 30): 
			Global_Player.inventory_removeItem("3")
		visible = false

func _on_brother_mouse_entered():
	get_node("Label").set_text("brother")


func _on_hamburger_mouse_entered():
	get_node("Label").set_text("hamburger")


func _on_daquiritown_mouse_entered():
	get_node("Label").set_text("daquiri")


func _on_6oclock_mouse_entered():
	get_node("Label").set_text("6 o'clock")
	
func _on_theEnd_mouse_entered():
	get_node("Label").set_text("the end")

extends Control

onready var money = Global_Player.inventory_checkItemAmount("3")

func _ready():
	Global_Player.load_data()
	get_node("Container/HBoxContainer/moneycount").set_text(money)

func _on_hamburger_pressed():
	if money >= 30:
		Global_Player.inventory_addItem("16")
		for i in range (1,30): 
			Global_Player.inventory_removeItem("3")

func _on_daquiritown_pressed():
	if money >= 30:
		Global_Player.inventory_addItem("15")
		for i in range (1,30): 
			Global_Player.inventory_removeItem("3")

func _on_6oclock_pressed():
	if money >= 30:
		Global_Player.inventory_addItem("18")
		for i in range (1,30): 
			Global_Player.inventory_removeItem("3")

func _on_theEnd_pressed():
	if money >= 1337:
		get_tree().change_scene("res://End.tscn")

func _on_brother_pressed():
	if money >= 30:
		Global_Player.inventory_addItem("17")
		for i in range (1,30): 
			Global_Player.inventory_removeItem("3")

func _on_brother_mouse_entered():
	get_node("Container/Label").set_text("CD: Brother of a Brother of a Sailor: The title track off of James Allyoucaneat's 1978 album. It's familiar, but not too familiar. But, not too not-familiar either. 30 coins. ")

func _on_hamburger_mouse_entered():
	get_node("Container/Label").set_text("hamburger")

func _on_daquiritown_mouse_entered():
	get_node("Container/Label").set_text("daquiri")

func _on_6oclock_mouse_entered():
	get_node("Container/Label").set_text("6 o'clock")

func _on_theEnd_mouse_entered():
	get_node("Container/Label").set_text("the end")

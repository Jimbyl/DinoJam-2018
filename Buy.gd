extends Control

onready var money = Global_Player.inventory_checkItemAmount("3")

func _ready():
	Global_Player.load_data()

func _process(delta):
	get_node("Container/HBoxContainer/moneycount").set_text(String(money))
	if Global_Player.inventory_checkItem("16"):
		get_node("Container/hamburger").set_visible(false)
	if Global_Player.inventory_checkItem("17"):
		get_node("Container/brother").set_visible(false)
	if Global_Player.inventory_checkItem("18"):
		get_node("Container/6oclock").set_visible(false)
	if Global_Player.inventory_checkItem("15"):
		get_node("Container/daquiritown").set_visible(false)

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
	get_node("Container/Label").set_text("CD: Hamburger In Wonderland: James Allyoucaneat's back at it again! This time, he's brought his frycook friend. 30 coins.")

func _on_daquiritown_mouse_entered():
	get_node("Container/Label").set_text("CD: Daquri Town: James Allyoucaneat's hit 1977 song. Wait, it's that old? 30 Coins.")

func _on_6oclock_mouse_entered():
	get_node("Container/Label").set_text("CD: It's Six'O Clock Somewhere: Written by a moose. Performed by a man with a parrot for a head. Released in 2003. 30 coins.")

func _on_theEnd_mouse_entered():
	get_node("Container/Label").set_text("Buy this to win the game! 1337 Coins.")


func _on_Button_pressed():
	get_tree().change_scene("res://World.tscn")
	pass # replace with function body

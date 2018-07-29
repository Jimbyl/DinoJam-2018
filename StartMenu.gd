# StartMenu.gd
extends Control

func _ready():
	get_node("Music").playing = true
	Global_Player.inventory_addItem("3")


func _on_StartGameButton_pressed():
	get_tree().change_scene("res://World.tscn")

func _on_QuitGameButton_pressed():
	get_tree().quit()


func _on_SwimButton_pressed():
	get_tree().change_scene("res://Swimming.tscn")


func _on_InventoryButton_pressed():
	get_tree().change_scene("res://PlayerInventory.tscn")


func _on_RockButton_pressed():
	add_child(load("res://DumbButton.tscn").instance())
	print(self.get_children())
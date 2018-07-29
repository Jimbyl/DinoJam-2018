extends Control

func _on_BuyButton_pressed():
	get_tree().change_scene("res://Buy.tscn")

func _on_SellButton_pressed():
	get_tree().change_scene("res://Sell.tscn")

func _on_ExitButton_pressed():
	get_tree().change_scene("res://World.tscn")

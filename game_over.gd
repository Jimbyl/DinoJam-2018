extends Control




func _on_Button_yes_pressed():
	get_tree().change_scene("res://StartMenu.tscn")


func _on_Button_no_pressed():
	get_tree().quit()

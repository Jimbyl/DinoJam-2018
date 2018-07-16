

extends Node

onready var itemList = get_node("Panel/ItemList")

func _ready():
	
	
	itemList.set_max_columns(9)
	itemList.set_fixed_icon_size(Vector2(48,48))
	itemList.set_icon_mode(itemList.ICON_MODE_TOP)
	itemList.set_select_mode(itemList.SELECT_SINGLE)
	itemList.set_same_column_width(true)
	
	for i in range(1, 100):
		var icon
		if i < 10:
			icon = ResourceLoader.load("res://Database/Item_Icons/Item_00" + String(i) + ".png")
			itemList.add_item("", icon, true)
			continue
	
		if i < 100:
			icon = ResourceLoader.load("res://Database/Item_Icons/Item_0" + String(i) + ".png")
			itemList.add_item("", icon, true)
			continue
	
	
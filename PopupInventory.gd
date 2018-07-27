extends Control

var inventory_open = 0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("ui_focus_next"):
		if inventory_open ==0:
			print("inventoryopen")
			var scene = load("res://PlayerInventory.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Inventory")
			self.add_child(scene_instance)
			inventory_open = 1
			get_node("Inventory").in_swim = 1
		elif inventory_open ==1:
			print ("inventoryclose")	
			get_node("Inventory").in_swim = 0
			var inventory = get_node("Inventory")
			remove_child(inventory)
			inventory_open = 0

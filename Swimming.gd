extends Node

var money_total = 0
var money_collected = 0

func _ready():
	var map = 0
	randomize ()
	map = randi() % 7 + 1   #comment this out to load default map or to force a map
	if map != 0 :
		var testmap = get_node("Map")
		remove_child(testmap)
		if map == 1:  
			var scene = load("res://Map scenes/Map1.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Map")
			self.add_child(scene_instance)
		if map == 2:
			var scene = load("res://Map scenes/Map2.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Map")
			self.add_child(scene_instance)
		if map == 3:
			var scene = load("res://Map scenes/Map3.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Map")
			self.add_child(scene_instance)
		if map == 4:
			var scene = load("res://Map scenes/Map4.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Map")
			self.add_child(scene_instance)
		if map == 5:
			var scene = load("res://Map scenes/Map5.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Map")
			self.add_child(scene_instance)
		if map == 6:
			var scene = load("res://Map scenes/Map6.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Map")
			self.add_child(scene_instance)
		if map == 7:
			var scene = load("res://Map scenes/Map7.tscn")
			var scene_instance = scene.instance()
			scene_instance.set_name("Map")
			self.add_child(scene_instance)
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://World.tscn")

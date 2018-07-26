extends Node

var money_total = 0
var money_collected = 0

func _ready():
	randomize()
	var map = randi() % 5 + 1   #comment this out to load default map
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
	else:
		var scene = load("res://Map scenes/Maptest.tscn")
		var scene_instance = scene.instance()
		scene_instance.set_name("Map")
		self.add_child(scene_instance)
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://World.tscn")

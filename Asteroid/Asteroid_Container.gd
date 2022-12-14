extends Node2D

onready var Asteroid = load("res://Asteroid/Asteroid.tscn")
var positions = [Vector2(100, 1000), Vector2(400, 1000), Vector2(500, 500), Vector2(1600, 800), Vector2(1100, 800), Vector2(2000, 2000), Vector2(2300, 1900)]

func _physics_process(_delta):
	if get_child_count() < 5:
		var asteroid = Asteroid.instance()
		var loco = randi() % positions.size()
		asteroid.position = positions[loco]
		positions.remove(loco)
		add_child(asteroid)

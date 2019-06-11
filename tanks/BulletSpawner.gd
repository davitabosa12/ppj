extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Bullet = load("res://Bullet.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_TANK_fire(tank):
	print(tank.get_name() + " fired")
	var bulletInstance = Bullet.instance()
	bulletInstance.who = tank.get_name()
	bulletInstance.position = tank.position
	bulletInstance.rotation = tank.rotation
	var container = get_node("container")
	container.add_child(bulletInstance)

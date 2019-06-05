extends Area2D



var ttl = 200 #the time-to-live of the bullet
var speed = 200
var playerName #name of the playey who fired the bullet

func _ready():
	print(position)
func _process(delta):
	if ttl < 0:
		get_parent().remove_child(self)
		pass
	ttl -= 1
	position += Vector2(0, -1).rotated(rotation) * speed * delta

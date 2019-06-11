extends Area2D



var ttl = 200 #the bullet's time-to-live
var speed = 200
var who #name of the player who fired the bullet

func _ready():
	print(position)
func _process(delta):
	if ttl < 0:
		get_parent().remove_child(self)
		
		pass
	ttl -= 1
	position += Vector2(0, -1).rotated(rotation) * speed * delta

extends Area2D


puppet var puppet_ttl = 0
var ttl = 200 #the bullet's time-to-live
var speed = 200
var who #name of the player who fired the bullet

puppet var puppet_pos = Vector2()

func _ready():
	puppet_pos = position
	puppet_ttl = ttl
func _physics_process(delta):
	if(is_network_master()):
		
		
		ttl -= 1
		position += Vector2(0, -1).rotated(rotation) * speed * delta
		rset("puppet_pos", position)
		rset("puppet_ttl", ttl)
	else:
		position = puppet_pos
		ttl = puppet_ttl
		
	if ttl < 0:
		rpc("kill_myself")
remotesync func kill_myself():
	queue_free()

func _on_Bullet_area_entered(area):
	var player_name = area.player_name
	if(who == player_name):
		return
	else:
		area.rpc("die", player_name, who)
		rpc("kill_myself")


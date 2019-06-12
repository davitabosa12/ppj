extends Area2D



var ttl = 200 #the bullet's time-to-live
var speed = 200
var who #name of the player who fired the bullet

puppet var puppet_pos = Vector2()

func _ready():
	puppet_pos = position
func _physics_process(delta):
	if(is_network_master()):
		
		
		ttl -= 1
		position += Vector2(0, -1).rotated(rotation) * speed * delta
		rset("puppet_pos", position)
	else:
		position = puppet_pos
		
	if ttl < 0:
		if(is_network_master()):
			rpc("kill_myself")
			
			pass
puppet func perform_kill_myself():
	queue_free()

master func kill_myself():
	rpc("perform_kill_myself")
	perform_kill_myself()

func _on_Bullet_area_entered(area):
	var player_name = area.player_name
	if(who == player_name):
		return
	else:
		
		if(is_network_master()):
			area.perform_kill(player_name, who)
			rpc("kill_myself")
			

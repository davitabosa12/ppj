extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 100
export var rotate_speed= 200
var Bullet = preload("res://Bullet.tscn")
signal fire
var screen_size
var player_name
var alive = true
puppet var puppet_alive = true;

puppet var puppet_rotation_degrees = 0
puppet var puppet_pos = Vector2()


func set_player_name(name):
	get_node("Label").text = name
	player_name = name

func get_player_name():
	return player_name

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	puppet_pos = position
	connect("fire", get_parent().get_parent().get_node("Bullets"), "_on_TANK_fire")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	var velocity = Vector2()  # The player's movement vector.
	if(alive):
		if(is_network_master()):
			if Input.is_action_pressed("ui_right"):
				rotation_degrees +=  rotate_speed * delta
			if Input.is_action_pressed("ui_left"):
				rotation_degrees -=  rotate_speed * delta
			if Input.is_action_pressed("ui_down"):
				velocity = Vector2(0, 1).rotated(rotation) * speed * delta
			if Input.is_action_pressed("ui_up"):
				velocity = Vector2(0, -1).rotated(rotation) * speed * delta
			if Input.is_action_just_pressed("ui_fire"):
				shoot()
			position.x = clamp(position.x, 0, screen_size.x)
			position.y = clamp(position.y, 0, screen_size.y)
			rset("puppet_pos", position)
			rset("puppet_rotation_degrees", rotation_degrees)
		else:
			position = puppet_pos
			rotation_degrees = puppet_rotation_degrees
		
		position += velocity
		if(not is_network_master()):
			puppet_pos = position
	else:
		pass
		


master func shoot():
	rpc("fire_the_bullet")
	fire_the_bullet()

puppet func fire_the_bullet():
	print(player_name + " fired")
	var bulletInstance = Bullet.instance()
	bulletInstance.who = player_name
	bulletInstance.position = position
	bulletInstance.rotation = rotation
	
	get_node("../../Bullets/container").add_child(bulletInstance)

remotesync func die(player_name, who):
	hide()
	alive = false
	$CollisionShape2D.disabled = true
	gamestate.trigger_game_over(player_name, who, get_tree().get_network_unique_id())
extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 100
export var rotate_speed= 200
#var bulletCreator = load("res://Bullet.gd")
signal fire
signal hit
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()  # The player's movement vector.
	if Input.is_action_pressed("ui_right"):
		rotation_degrees +=  rotate_speed * delta
	if Input.is_action_pressed("ui_left"):
		rotation_degrees -=  rotate_speed * delta
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2(0, 1).rotated(rotation) * speed * delta
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2(0, -1).rotated(rotation) * speed * delta
	if Input.is_action_just_pressed("ui_fire"):
		emit_signal("fire", self);
	
	position += velocity
	
	
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	


func _on_Area2D_area_entered(area):
	emit_signal("hit")



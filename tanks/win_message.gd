extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	gamestate.connect("winner", self, "_show_win")
	pass # Replace with function body.

func _show_win(winner_name):
	text= "WINNER IS " + winner_name
	show()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	# Called every time the node is added to the scene.
	gamestate.connect("connection_failed", self, "_on_connection_failed")
	gamestate.connect("connection_succeeded", self, "_on_connection_success")
	gamestate.connect("player_list_changed", self, "update_lobby")
	gamestate.connect("game_ended", self, "_on_game_ended")
	gamestate.connect("game_error", self, "_on_game_error")
	pass # Replace with function body.


func _on_game_ended():
	print("game ended")
	show()
	get_node("form").show()
	get_node("form/error_label").text=""
	get_node("players").hide()
	
func _on_game_error(errtxt):
	get_node("error").dialog_text = errtxt
	get_node("error").popup_centered_minsize()

func _on_connection_success():
	print("connection success")

func _on_Start_pressed():
	gamestate.begin_game();


func _on_host_pressed():
	if(get_node("form/NickLineEdit").text == ""):
		get_node("form/error_label").text = "Nome invalido!"
		return
	get_node("form").hide()
	get_node("players").show()
	get_node("form/error_label").text=""
	var name = get_node("form/NickLineEdit").text
	gamestate.host_game(name)
	update_lobby()

func update_lobby():
	var players_joined = gamestate.get_player_list()
	players_joined.sort()
	get_node("players/player_list").clear()
	get_node("players/player_list")
	get_node("players/player_list").add_item(gamestate.get_player_name() + " (Voce)")
	
	for player in players_joined:
		get_node("players/player_list").add_item(player)
		
	get_node("players/Button").disabled = not get_tree().is_network_server()

func _on_join_pressed():
	if(get_node("form/NickLineEdit").text == ""):
		get_node("form/error_label").text = "Nome invalido!"
		return
	get_node("form").hide()
	get_node("players").show()
	get_node("form/error_label").text=""
	var name = get_node("form/NickLineEdit").text
	var ip = get_node("form/IpLineEdit").text
	gamestate.join_game(ip, name)
	update_lobby()

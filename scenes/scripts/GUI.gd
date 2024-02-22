extends Control

@export var game_packed: PackedScene

func _ready():
	_start_game()
	pass # Replace with function body.


func _start_game():
	var game_scene = game_packed.instantiate()
	add_child(game_scene)

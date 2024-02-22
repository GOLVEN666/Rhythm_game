extends Control

@export var player: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var center = _get_map_size()
	_create_player(center)


func _get_map_size() -> Vector2:
	#get the size of the rhythm_field node
	var map_size = get_size()
	# find the center
	var center = map_size / 2
	return center
	
#creates the player instance
func _create_player(center):
	var player_scene = player.instantiate()
	add_child(player_scene)
	player_scene.position = center

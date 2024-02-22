extends Control

@export var player: PackedScene
@export var Lenemy: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var center = _get_map_size()
	_create_player(center)
	_create_enemy()
	await get_tree().create_timer(1).timeout
	#_create_enemy()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

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

func _create_enemy():
	var enemy_scene = Lenemy.instantiate()
	add_child(enemy_scene)
	enemy_scene.position = Vector2(-500, 50)

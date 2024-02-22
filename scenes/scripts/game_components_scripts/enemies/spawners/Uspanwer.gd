extends Node2D

@export var enemy_packed: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(0.2).timeout
	_create_enemy()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _create_enemy():
	var enemy_scene = enemy_packed.instantiate()
	get_parent().add_child(enemy_scene)
	enemy_scene.position = Vector2(50, 324)

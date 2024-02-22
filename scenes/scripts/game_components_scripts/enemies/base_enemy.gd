extends Node2D
class_name base_enemy

@onready var sprite: Sprite2D = %Sprite2D
@onready var animation: AnimationPlayer = %AnimationPlayer

var DIRECTION: int
var horizontal: bool
var flip: bool
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func move():
	if horizontal == true:
		if flip != true:
			sprite.flip_h = false
			position.x += DIRECTION
		else:
			sprite.flip_h = true
			position.x += DIRECTION
	else:
		position.y += DIRECTION

func _on_area_2d_body_entered(body):
	queue_free()

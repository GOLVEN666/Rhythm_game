extends Node2D
class_name base_enemy

@onready var sprite: Sprite2D = %Sprite2D
@onready var animation: AnimationPlayer = %AnimationPlayer
var DIRECTION: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func move():
	position.x += DIRECTION

func _on_area_2d_body_entered(body):
	queue_free()

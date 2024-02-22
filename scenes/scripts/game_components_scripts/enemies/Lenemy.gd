extends base_enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	DIRECTION = 3
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move() # calls the move function in base_enemy
	pass

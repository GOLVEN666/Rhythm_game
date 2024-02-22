extends CharacterBody2D

@onready var player_animation: AnimationPlayer = %AnimationPlayer
@onready var sprite: Sprite2D = %Sprite2D


func _ready():
	pass

func _process(_delta):
	_update_animation()

#updates the animation
func _update_animation():
	if Input.is_action_just_pressed("ui_down"):
		player_animation.play("attack_down")
	elif Input.is_action_just_pressed("ui_up"):
		player_animation.play("attack_up")
	elif Input.is_action_just_pressed("ui_left"):
		sprite.flip_h = true
		player_animation.play("attack_horizontal")
	elif Input.is_action_just_pressed("ui_right"):
		sprite.flip_h = false
		player_animation.play("attack_horizontal")


func _on_animation_player_animation_finished(anim_name: String):
	if anim_name != "idle":
		player_animation.play('idle')

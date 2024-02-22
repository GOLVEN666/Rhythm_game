extends CharacterBody2D

@onready var player_animation: AnimationPlayer = %AnimationPlayer
@onready var sprite: Sprite2D = %Sprite2D


func _process(_delta):
	_update_animation()

#updates the animation
func _update_animation():
	if Input.is_action_just_pressed("ui_down"):
		player_animation.play("attack_down")
		#attack_collision.disabled = false
	elif Input.is_action_just_pressed("ui_up"):
		player_animation.play("attack_up")
		#attack_collision.disabled = false
	elif Input.is_action_just_pressed("ui_left"):
		sprite.flip_h = true
		player_animation.play("attack_horizontal")
		#attack_collision.disabled = false
	elif Input.is_action_just_pressed("ui_right"):
		sprite.flip_h = false
		player_animation.play("attack_horizontal")
		#attack_collision.disabled = false


# get back to the default animation
func _on_animation_player_animation_finished(anim_name: String):
	if anim_name != "idle":
		#attack_collision.disabled = true
		player_animation.play('idle')

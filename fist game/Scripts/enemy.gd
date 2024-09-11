extends Node2D
const speed = 60
var direction = 1
@onready var raycastright = $Raycastright
@onready var ray_castleft = $RayCastleft
@onready var animated_sprite = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycastright.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_castleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * speed * delta

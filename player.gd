extends CharacterBody2D

@export var speed = 400


func get_input():
	var input_dir = Input.get_vector("Move_left", "Move_right", "Move_up", "Move_down")
	velocity = input_dir * speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	get_input()
	$AnimatedSprite2D.animation = "walk"
	$AnimatedSprite2D.flip_h = velocity.x < 0
	if velocity.length() >0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
	
	move_and_slide()

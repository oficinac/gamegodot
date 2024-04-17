extends CharacterBody2D

const speed = 100
var current_dir =  "none"

func _physics_process(delta):
	player_movement(delta)
	
func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		play_anima(1)
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_anima(1)
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		play_anima(1)
		velocity.y = speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		play_anima(1)
		velocity.y = -speed
		velocity.x = 0
	else:
		play_anima(0)
		velocity.x = 0
		velocity.y = 0
	move_and_slide()

func play_anima(movement):
	var dir = current_dir
	var anima = $AnimatedSprite2D
	if dir == "right":
		anima.flip_h = false
		if movement == 1:
			anima.play("side")
		elif movement == 0:
			anima.play("stop")
	if dir == "left":
		anima.flip_h = true
		if movement == 1:
			anima.play("side")
		elif movement == 0:
			anima.play("stop")
	if dir == "up":
		anima.flip_h = false
		if movement == 1:
			anima.play("up")
		elif movement == 0:
			anima.play("stop")
	if dir == "down":
		anima.flip_h = false
		if movement == 1:
			anima.play("down")
		elif movement == 0:
			anima.play("stop")




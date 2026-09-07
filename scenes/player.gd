extends ColorRect

var speed = 300  # pixels per second

func _process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	position += direction.normalized() * speed * delta
	position.x = clamp(position.x, 0, 1000)
	position.y = clamp(position.y, 0, 600)

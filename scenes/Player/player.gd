extends CharacterBody2D

var max_speed = 200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var move = move_vector()
	var direction = move.normalized()
	velocity = max_speed * direction
	move_and_slide()

func move_vector():
	var move_x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var move_y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	return Vector2(move_x,move_y)

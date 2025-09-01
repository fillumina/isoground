extends CharacterBody2D


const SPEED = 3000.0


func _physics_process(delta: float) -> void:
	# the player needs to move diagonally so it should move in all 4 directions
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED * delta
	move_and_slide()

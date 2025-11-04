extends CharacterBody2D
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	

func _physics_process(delta):
	get_input()
	move_and_slide()
	
const SPEED = 150.0
const JUMP_VELOCITY = -300.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@export var input_prefix = "player1_"  # "player1_" or "player2_"


	# Apply gravity

	# Handle input based on player


	# Handle jumping
	

	# Move the player

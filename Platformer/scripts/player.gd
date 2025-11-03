@tool
# Player.gd
extends CharacterBody2D

# Movement Constants
const SPEED = 150.0       # Horizontal movement speed (pixels/second)
const JUMP_VELOCITY = -300.0 # Jump strength (negative because Y goes down)

# Gravity - you can get it from project settings or define it here
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Other variables you might need
var air_jumps = 1         # For a double jump
var current_air_jumps = 0

# Variables for "game feel" techniques (we'll initialize them later)
var coyote_timer = 0.0
const COYOTE_TIME_THRESHOLD = 0.1 # 100 milliseconds of coyote time

var jump_buffer_timer = 0.0
const JUMP_BUFFER_TIME_THRESHOLD = 0.1 # 100 milliseconds for jump buffer

extends Area2D

@export var player_goal_Id = 1
@export var ball_respawn_pos: Vector2 = Vector2(576, 314)
@export var player_spawn_positions: Array = [
	Vector2(1079, 514),
	Vector2(83, 467)
]

var ball: Node = null

func _ready() -> void:
	var balls = get_tree().get_nodes_in_group("Ball")
	if balls.size() > 0:
		ball = balls[0]


func _on_body_entered(body: Node) -> void:
	#if not body.is_in_group("Player"):
		#print("player not set to group")
		#return
	if ball and ball.holder == body:
		if body.Player_Id == player_goal_Id:
			ball.drop()
			print("GOAL scored by Player", player_goal_Id)
			ball.set_deferred("global_position", ball_respawn_pos)
			
			var players = get_tree().get_nodes_in_group("Player")
			for idx in range(players.size()):
				if idx < player_spawn_positions.size():
					players[idx].set_deferred("global_position", player_spawn_positions[idx])

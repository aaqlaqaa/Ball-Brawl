extends Area2D



var holder: Node = null

func _physics_process(delta: float) -> void:
	if holder: 
		global_position=holder.global_position+ Vector2(0,-10)




func _on_body_entered(body: Node2D) -> void:
	if body .is_in_group("Player"):
		holder=body

func drop(): 
	holder= null

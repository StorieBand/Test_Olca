extends Area2D





func _on_Checkpoint_body_entered(body):
	if body.name == "Player":
		Global.update_spawn(self.global_position)

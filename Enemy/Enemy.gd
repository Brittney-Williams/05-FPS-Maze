extends Area


func _on_Enemy_body_entered(body):
	if body.node == "Player":
		var sound = get_node_or_null("/root/Game/Zombie")
		if sound != null:
			sound.playing = true
		var _scene = get_tree().change_scene("res://UI/Lose.tscn")

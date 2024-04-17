extends Area2D

var player_current_attach = false

var current_scene = "mundo" 
var transtion_scene = false

func _on_cliffside_transition_point_body_entered(body):
	if body.has_method("player"):
		transtion_scene = true
	
func _on_cliffside_transition_point_body_exited(body):
	if body.has_method("player"):
		transtion_scene = false

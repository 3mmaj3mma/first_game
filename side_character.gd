extends Area2D

func _ready():
	pass

func physics_process(delta):
	pass


func _on_body_entered(body):
	body.follow()
	queue_free()

extends Area2D


func _ready():
	pass 

func _process(delta):
	pass

func _on_body_entered(body):
	if Input.is_action_pressed("use"):
		body.attack()
		queue_free()

extends Node2D
@onready var totem_anim: AnimationPlayer = get_node("totem/AnimationPlayer")

# Called when the node enters the scene tree for the first time.
func _ready():
	totem_anim.play("idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

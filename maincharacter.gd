extends CharacterBody2D
@onready var side_char: Area2D = get_node("side character")
@onready var side_char_animation: AnimationPlayer = get_node("side character/AnimationPlayer")
@onready var sword: Area2D = get_node("sword")
@onready var sword_animation: AnimationPlayer = get_node("sword/AnimationPlayer")
@onready var totem: Area2D = get_node("totem")
@onready var totem_animation: AnimationPlayer = get_node("totem/AnimationPlayer")

func _ready():
	side_char.visible = false
	sword.visible = false
	totem_animation.play("idle")
	

const SPEED = 175.0
func get_input():
	if Input.is_action_pressed("right"):
		position.x += SPEED * get_process_delta_time()
		$AnimationPlayer.play("walk right")
		side_char_animation.play("walk right")
		sword_animation.play("idle")
	
	elif Input.is_action_pressed("left"):
		position.x -= SPEED * get_process_delta_time()
		$AnimationPlayer.play("walk left")
		side_char_animation.play("walk left")
		sword_animation.play("idle")

	elif Input.is_action_pressed("up"):
		position.y -= SPEED * get_process_delta_time()
		$AnimationPlayer.play("walk up")
		side_char_animation.play("walk up")
		sword_animation.play("idle")
	
	elif Input.is_action_pressed("down"):
		position.y += SPEED * get_process_delta_time()
		$AnimationPlayer.play("walk down")
		side_char_animation.play("walk down")
		sword_animation.play("idle")
		
	if Input.is_action_pressed("use"):
		sword_animation.play("strike")
		
		

func _physics_process(delta):
	get_input()
	move_and_slide()
	

func follow():
	side_char.visible = true

func weapon():
	sword.visible = true
	
func attack():
	totem_animation.play("death")



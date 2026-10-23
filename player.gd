extends CharacterBody2D

@export var speed = 500
@export var gravity = 10
@export var jump_strength = 500

var direction
var jump: Vector2
var g: int


func _process(_delta: float) -> void:
	direction = Vector2.ZERO
	jump += Vector2(0, g)
	
	if Input.is_action_pressed("left"):
		direction += Vector2(-1, 0)
	if Input.is_action_pressed("right"):
		direction += Vector2(1, 0)
	if Input.is_action_just_pressed("up"):
		jump = Vector2(0, -1) * jump_strength
	
	if is_on_floor():
		g = 0
	else:
		g = gravity
	
	
	velocity = direction * speed + jump
	
	move_and_slide()

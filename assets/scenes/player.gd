extends CharacterBody2D

@export var speed = 200
var anim

func _ready():
    anim = $AnimatedSprite2D

func _process(delta):
    var dir = Vector2.ZERO

    if Input.is_action_pressed("ui_right"):
        dir.x += 1
    if Input.is_action_pressed("ui_left"):
        dir.x -= 1
    if Input.is_action_pressed("ui_down"):
        dir.y += 1
    if Input.is_action_pressed("ui_up"):
        dir.y -= 1

    if dir != Vector2.ZERO:
        anim.play("walk")  # Walk animation
    else:
        anim.play("idle")  # Idle animation

    velocity = dir.normalized() * speed
    move_and_slide()

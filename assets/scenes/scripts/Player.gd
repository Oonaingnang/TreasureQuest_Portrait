extends CharacterBody2D

@export var speed := 200
var anim: AnimatedSprite2D

func _ready():
    anim = $AnimatedSprite2D

func _physics_process(delta):
    var input_vector = Vector2.ZERO
    input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
    input_vector = input_vector.normalized()

    # မူလလှုပ်ရှားမှု logic
    velocity = input_vector * speed
    move_and_slide()

    # Animation အလိုအလျောက်ပြောင်း
    if input_vector.length() > 0:
        if anim.animation != "walk":
            anim.play("walk")
    else:
        if anim.animation != "idle":
            anim.play("idle")

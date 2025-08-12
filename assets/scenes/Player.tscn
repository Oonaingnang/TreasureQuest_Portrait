[gd_scene load_steps=3 format=3]

[ext_resource type="Texture2D" path="res://assets/player.png" id="1"]
[ext_resource type="Script" path="res://scripts/Player.gd" id="2"]

[node name="Player" type="Node2D"]
script = ExtResource("2")

[node name="AnimatedSprite2D" type="AnimatedSprite2D" parent="."]
sprite_frames = SubResource("SpriteFrames")
animation = "idle"

[sub_resource type="SpriteFrames" id=1]
animations = [{
"frames": [ { "texture": ExtResource("1"), "region": Rect2(0, 0, 48, 48) } ],
"loop": true,
"name": "idle",
"speed": 5.0
}]

GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�X      �      ��p�*x�I���()�zT   res://.import/tilemap-characters_packed.png-b34ca4ad7c3919d52e7a7362602005a5.stex   @d      �      ���sWH���r�c�H   res://.import/tilemap_packed.png-7b301e6705a57389d2cd02d385b33920.stex  �o      &      ;9ͫ������Dtx��   res://Enemy.gd.remap��              � G>��A_WWng4��   res://Enemy.gdc `      ;      �p_wf�p�[��tS�	   res://Enemy.tscn�	      J      �%��+r_\�59��=   res://Hitbox.gd.remap   �      !       ��EM#('�T�倔Af   res://Hitbox.gdc�      %      e��a�{_���+��99   res://Hitbox.tscn                ہ�0�J�\��\���   res://Ladder.gd.remap   @�      !       �O�=�ϡ� (�����   res://Ladder.gdc@      [       �u5�/o���<���*�   res://Ladder.tscn   �            
���)e��)�j�   res://MovingEnemy.tscn  �      �      n�NYgT�as� ri   res://Player.gd.remap   p�      !       ��0�F �qq��dX��   res://Player.gdcp      �      1p;�@�<���3�   res://Player.tscn   �"      c      ��Kr�dn�<�   res://TileMap.tscn  `(      �      ]	�5y_	k��Dq   res://World.gd.remap��              ���z�����R�U�   res://World.gdc 0D      �       ��\D?��s[6׎��54   res://World.tscn0E      3      �fJ�#��2|ߖ��q   res://block.tscnpV      �      �)o�GO�_��)�=��   res://default_env.tres  0X      �       um�`�N��<*ỳ�8   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import   �^      �      ñi6,��-5��bS�   res://mapp.tscn pa      a       -�>�[����˭?S   res://project.binary��      .      .-�B��,Y)�Җ����   res://spike.tscn�a      Q      ����|��J!9�a4F�,   res://tilemap-characters_packed.png.import   m      �      0p�Tn�6`�^�T6��E    res://tilemap_packed.png.import  �      �      -�9;_�GK�M�؆    GDSC            M      ������������τ�   ��������ض��   ����ⶶ�   �������϶���   ��������   �����Ӷ�   �������������Ӷ�   ���������������Ŷ���   ����׶��   ���������ڶ�   ���������ڶ�   �����޶�   ζ��   �������������Ӷ�   �涶                                      
                         '      (   	   ,   
   1      2      <      B      K      3YY;�  �  T�  Y;�  �  T�  Y5;�  VW�  Y0�  P�  QV�  ;�	  �
  PQ�  �  &�	  V�  �  �  �  �  T�  �  T�  �  �  �  �  �  �  �  P�  R�  T�  QY`     [gd_scene load_steps=9 format=2]

[ext_resource path="res://tilemap-characters_packed.png" type="Texture" id=1]
[ext_resource path="res://Enemy.gd" type="Script" id=2]
[ext_resource path="res://Hitbox.tscn" type="PackedScene" id=3]

[sub_resource type="AtlasTexture" id=1]
atlas = ExtResource( 1 )
region = Rect2( 192, 48, 24, 24 )

[sub_resource type="AtlasTexture" id=2]
atlas = ExtResource( 1 )
region = Rect2( 144, 48, 24, 24 )

[sub_resource type="AtlasTexture" id=3]
atlas = ExtResource( 1 )
region = Rect2( 168, 48, 24, 24 )

[sub_resource type="SpriteFrames" id=4]
animations = [ {
"frames": [ SubResource( 1 ), SubResource( 2 ), SubResource( 3 ) ],
"loop": true,
"name": "walking",
"speed": 4.0
} ]

[sub_resource type="RectangleShape2D" id=5]
extents = Vector2( 4, 4.5 )

[node name="Enemy" type="KinematicBody2D"]
collision_layer = 2
script = ExtResource( 2 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
position = Vector2( 0, -12 )
frames = SubResource( 4 )
animation = "walking"
playing = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -10.5 )
shape = SubResource( 5 )

[node name="Hitbox" parent="." instance=ExtResource( 3 )]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Hitbox"]
polygon = PoolVector2Array( -3, -8, -4, -12, -4, -14, 4, -14, 3, -8 )
      GDSC          
   $      ���ׄ�   �����Ķ�   �����Ķ�   ����������������������Ҷ   ���϶���   �������Ӷ���   �������������������Ӷ���                   
                              !   	   "   
   3YY5;�  W�  YYY0�  P�  QV�  &�  4�  V�  �  PQT�  PQ�  Y`           [gd_scene load_steps=2 format=2]

[ext_resource path="res://Hitbox.gd" type="Script" id=1]

[node name="Hitbox" type="Area2D"]
collision_layer = 0
collision_mask = 2
script = ExtResource( 1 )

[connection signal="body_entered" from="." to="." method="_on_Hitbox_body_entered"]
           GDSC                   ���ׄ�   �����Ķ�                         3YY2�  Y`     [gd_scene load_steps=4 format=2]

[ext_resource path="res://tilemap_packed.png" type="Texture" id=1]
[ext_resource path="res://Ladder.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 9, 9 )

[node name="Ladder" type="Area2D"]
collision_mask = 0
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 198, 54, 18, 18 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
       [gd_scene load_steps=7 format=2]

[ext_resource path="res://Hitbox.tscn" type="PackedScene" id=1]
[ext_resource path="res://tilemap-characters_packed.png" type="Texture" id=2]

[sub_resource type="Curve2D" id=1]
_data = {
"points": PoolVector2Array( 0, 0, 0, 0, 23, 37, 0, 0, 0, 0, 133, 36, 0, 0, 0, 0, 133, -51, 0, 0, 0, 0, 23, -50, 0, 0, 0, 0, 24, 37 )
}

[sub_resource type="CircleShape2D" id=2]
radius = 9.0

[sub_resource type="Animation" id=3]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath(".:unit_offset")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 0.0 ]
}

[sub_resource type="Animation" id=4]
resource_name = "move"
length = 7.0
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath(".:unit_offset")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 7 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 0.0, 1.0 ]
}

[node name="MovingEnemy" type="Path2D"]
curve = SubResource( 1 )

[node name="PathFollow2D" type="PathFollow2D" parent="."]
position = Vector2( 2, -16 )
offset = 510.144
rotate = false

[node name="Node2D" type="Node2D" parent="PathFollow2D"]

[node name="Sprite" type="Sprite" parent="PathFollow2D/Node2D"]
position = Vector2( -0.517222, -1.16511 )
scale = Vector2( 1.0431, 1.09709 )
texture = ExtResource( 2 )
region_enabled = true
region_rect = Rect2( 192, 0, 24, 24 )

[node name="Hitbox" parent="PathFollow2D/Node2D" instance=ExtResource( 1 )]

[node name="CollisionShape2D" type="CollisionShape2D" parent="PathFollow2D/Node2D/Hitbox"]
shape = SubResource( 2 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
root_node = NodePath("../PathFollow2D")
autoplay = "move"
anims/RESET = SubResource( 3 )
anims/move = SubResource( 4 )
 GDSC         =   F     ������������τ�   �����Ķ�   ���󶶶�   ��������   �������϶���   ��������   ����������ݶ   ����������ݶ   ����Ӷ��   ���������������Ŷ���   ����׶��   ϶��   ����¶��   ζ��   ����¶��   �������Ŷ���   ���Ӷ���   ���ƶ���   �����������Ķ���   ����������������Ҷ��   �������������Ӷ�   ��������ض��   �����޶�   ����������Ķ   ���������������������Ҷ�   �������������Ӷ�   �涶   �����������Ѷ���   �������Ķ���   �����������Ķ���   �����Ķ�            ui_left       ui_right      ui_up         ui_down              run       idle   #                   A      2                                                       	   "   
   #      $      %      &      -      .      4      ;      H      U      Z      ^      e      l      s      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1   	  2     3     4     5   !  6   ,  7   5  8   >  9   A  :   B  ;   C  <   D  =   3Y2�  YY>N�  R�  OYYY;�  �  T�  Y5;�  W�  Y;�  �  YY�  YY0�	  P�
  QV�  �  �  T�  �  ;�  �  T�  �  �  T�  �  T�  P�  R�  Q�  �  T�  �  T�  P�  R�  Q�  �  P�  Q�  /�  V�  �  V�  P�  Q�  �  V�  P�  QY0�  P�  QV�  &�  PQ�  T�  P�  QV�  �  �  �  �  &�  T�  �  V�  W�  T�  �  �  (V�  W�  T�  �  �  �  �  &�  T�  P�  QV�  �  T�  �  �  W�  T�  �	  �  '�  T�  P�  QV�  �  T�  �  �  W�  T�  �
  �  (V�  �  T�  �  �  �  &�  PQ�  T�  P�  QV�  �  T�  �  �  �  �  P�  R�  T�  QYY0�  P�  QV�  &�  PQV�  �  �  �  �  �  �  �  �  �  P�  R�  T�  QYY0�  PQV�  &�  T�  PQV.�
  �  ;�  �  T�  PQ�  &�  4�  V.�
  �  .�	  �  �  �  Y`[gd_scene load_steps=8 format=2]

[ext_resource path="res://tilemap-characters_packed.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]

[sub_resource type="AtlasTexture" id=1]
atlas = ExtResource( 1 )
region = Rect2( 96, 48, 24, 24 )

[sub_resource type="AtlasTexture" id=4]
atlas = ExtResource( 1 )
region = Rect2( 72, 48, 24, 24 )

[sub_resource type="AtlasTexture" id=5]
atlas = ExtResource( 1 )
region = Rect2( 96, 48, 24, 24 )

[sub_resource type="SpriteFrames" id=2]
animations = [ {
"frames": [ SubResource( 1 ) ],
"loop": true,
"name": "idle",
"speed": 5.0
}, {
"frames": [ SubResource( 4 ), SubResource( 5 ) ],
"loop": true,
"name": "run",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 10, 10.5 )

[node name="Player" type="KinematicBody2D"]
z_index = 1
collision_layer = 2
script = ExtResource( 2 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 2 )
animation = "idle"
playing = true
flip_h = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, 2 )
shape = SubResource( 3 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true

[node name="LadderCheck" type="RayCast2D" parent="."]
position = Vector2( 0, -6 )
enabled = true
cast_to = Vector2( 0, 24 )
collide_with_areas = true
collide_with_bodies = false
             [gd_scene load_steps=23 format=2]

[ext_resource path="res://tilemap_packed.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=9]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=10]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=11]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=12]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=13]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=14]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=15]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=16]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=17]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=18]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=19]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=20]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=21]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=22]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="TileSet" id=2]
0/name = "tilemap_packed.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 126, 36, 18, 18 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
1/name = "tilemap_packed.png 1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 108, 180 )
1/tile_mode = 1
1/autotile/bitmask_mode = 1
1/autotile/bitmask_flags = [ Vector2( 0, 0 ), 16, Vector2( 0, 1 ), 144, Vector2( 1, 0 ), 48, Vector2( 1, 1 ), 432, Vector2( 1, 6 ), 438, Vector2( 1, 7 ), 54, Vector2( 2, 0 ), 56, Vector2( 2, 1 ), 504, Vector2( 2, 6 ), 511, Vector2( 2, 7 ), 63, Vector2( 3, 0 ), 24, Vector2( 3, 1 ), 216, Vector2( 3, 6 ), 219, Vector2( 3, 7 ), 27, Vector2( 4, 0 ), 255, Vector2( 4, 1 ), 507, Vector2( 5, 0 ), 447, Vector2( 5, 1 ), 510 ]
1/autotile/icon_coordinate = Vector2( 0, 0 )
1/autotile/tile_size = Vector2( 18, 18 )
1/autotile/spacing = 0
1/autotile/occluder_map = [  ]
1/autotile/navpoly_map = [  ]
1/autotile/priority_map = [  ]
1/autotile/z_index_map = [  ]
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape = SubResource( 3 )
1/shape_one_way = false
1/shape_one_way_margin = 1.0
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 9 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 10 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 11 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 12 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 13 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 14 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 15 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 16 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 17 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 18 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 19 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 20 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 21 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 22 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 0

[node name="TileMap" type="TileMap"]
tile_set = SubResource( 2 )
cell_size = Vector2( 18, 18 )
collision_mask = 0
format = 1
          GDSC                   ���ӄ�   �����϶�   �����������Ķ���   ����������������������Ķ   ���������ڶ�                                                 	   	   
   
               3YYYYYYYYY0�  PQV�  �  T�  P�  T�  QY`   [gd_scene load_steps=8 format=2]

[ext_resource path="res://TileMap.tscn" type="PackedScene" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://spike.tscn" type="PackedScene" id=3]
[ext_resource path="res://World.gd" type="Script" id=4]
[ext_resource path="res://Enemy.tscn" type="PackedScene" id=5]
[ext_resource path="res://Ladder.tscn" type="PackedScene" id=6]
[ext_resource path="res://MovingEnemy.tscn" type="PackedScene" id=7]

[node name="World" type="Node2D"]
script = ExtResource( 4 )

[node name="TileMap" parent="." instance=ExtResource( 1 )]
position = Vector2( 118, 103 )
tile_data = PoolIntArray( -196614, 1, 65537, -196613, 1, 65538, -196612, 1, 65538, -196611, 1, 65539, -131079, 1, 65537, -131078, 1, 65541, -131077, 1, 393218, -131076, 1, 4, -131075, 1, 458755, -65543, 1, 393217, -65542, 1, 393218, -65541, 1, 4, -65540, 1, 458755, -7, 1, 458753, -6, 1, 458754, -5, 1, 458755, -65536, 1, 65537, -65535, 1, 65538, -65534, 1, 65538, -65533, 1, 65539, -65506, 1, 65537, -65505, 1, 65538, -65504, 1, 65538, -65503, 1, 65538, -65502, 1, 65539, 65535, 1, 65537, 0, 1, 65541, 1, 1, 393218, 2, 1, 393218, 3, 1, 65540, 4, 1, 65539, 17, 1, 65537, 18, 1, 65539, 30, 1, 393217, 31, 1, 393218, 32, 1, 393218, 33, 1, 393218, 34, 1, 393219, 131070, 1, 65537, 131071, 1, 65541, 65536, 1, 393218, 65537, 1, 393218, 65538, 1, 393218, 65539, 1, 393218, 65540, 1, 65540, 65541, 1, 65539, 65552, 1, 65537, 65553, 1, 65541, 65554, 1, 65540, 65555, 1, 65539, 65566, 1, 393217, 65567, 1, 393218, 65568, 1, 393218, 65569, 1, 393218, 65570, 1, 393219, 196601, 1, 65537, 196602, 1, 65538, 196603, 1, 65538, 196604, 1, 65538, 196605, 1, 65538, 196606, 1, 65541, 196607, 1, 393218, 131072, 1, 393218, 131073, 1, 393218, 131074, 1, 393218, 131075, 1, 393218, 131076, 1, 393218, 131077, 1, 65540, 131078, 1, 65538, 131079, 1, 65538, 131080, 1, 65538, 131081, 1, 65538, 131082, 1, 65538, 131083, 1, 65538, 131084, 1, 65538, 131085, 1, 65538, 131086, 1, 65538, 131087, 1, 65538, 131088, 1, 65541, 131089, 1, 393218, 131090, 1, 393218, 131091, 1, 65540, 131092, 1, 65539, 131102, 1, 393217, 131103, 1, 393218, 131104, 1, 4, 131105, 1, 458754, 131106, 1, 458755, 262137, 1, 458753, 262138, 1, 458754, 262139, 1, 458754, 262140, 1, 458754, 262141, 1, 458754, 262142, 1, 458754, 262143, 1, 458754, 196608, 1, 458754, 196609, 1, 458754, 196610, 1, 458754, 196611, 1, 458754, 196612, 1, 458754, 196613, 1, 458754, 196614, 1, 458754, 196615, 1, 458754, 196616, 1, 458754, 196617, 1, 458754, 196618, 1, 458754, 196619, 1, 458754, 196620, 1, 458754, 196621, 1, 458754, 196622, 1, 458754, 196623, 1, 458754, 196624, 1, 5, 196625, 1, 393218, 196626, 1, 393218, 196627, 1, 393218, 196628, 1, 65540, 196629, 1, 65538, 196630, 1, 65539, 196638, 1, 393217, 196639, 1, 393218, 196640, 1, 393219, 262160, 1, 458753, 262161, 1, 458754, 262162, 1, 458754, 262163, 1, 458754, 262164, 1, 458754, 262165, 1, 5, 262166, 1, 65540, 262167, 1, 65538, 262168, 1, 65538, 262169, 1, 65538, 262170, 1, 65538, 262171, 1, 65538, 262172, 1, 65538, 262173, 1, 65538, 262174, 1, 65541, 262175, 1, 393218, 262176, 1, 393219, 327701, 1, 458753, 327702, 1, 458754, 327703, 1, 458754, 327704, 1, 458754, 327705, 1, 458754, 327706, 1, 458754, 327707, 1, 458754, 327708, 1, 458754, 327709, 1, 458754, 327710, 1, 5, 327711, 1, 393218, 327712, 1, 65540, 327713, 1, 65538, 327714, 1, 65539, 393246, 1, 458753, 393247, 1, 458754, 393248, 1, 458754, 393249, 1, 458754, 393250, 1, 458755 )

[node name="Player" parent="TileMap" instance=ExtResource( 2 )]
position = Vector2( -91, 23 )

[node name="Area2D" parent="TileMap" instance=ExtResource( 3 )]
position = Vector2( 80, -8 )
z_index = -1

[node name="Enemy" parent="." instance=ExtResource( 5 )]
position = Vector2( 275, 136 )

[node name="Ladder" parent="." instance=ExtResource( 6 )]
position = Vector2( 91, 42 )

[node name="Ladder2" parent="." instance=ExtResource( 6 )]
position = Vector2( 651, 168 )

[node name="Ladder3" parent="." instance=ExtResource( 6 )]
position = Vector2( 651, 150 )

[node name="Ladder8" parent="." instance=ExtResource( 6 )]
position = Vector2( 651, 132 )

[node name="Ladder9" parent="." instance=ExtResource( 6 )]
position = Vector2( 651, 97 )

[node name="Ladder10" parent="." instance=ExtResource( 6 )]
position = Vector2( 651, 115 )

[node name="MovingEnemy" parent="." instance=ExtResource( 7 )]
position = Vector2( 517, 128 )
             [gd_scene load_steps=3 format=2]

[ext_resource path="res://tilemap_packed.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 9, 9 )

[node name="block" type="StaticBody2D"]

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 126, 36, 18, 18 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @             �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
            [gd_scene format=2]

[node name="TileMap" type="TileMap"]
cell_size = Vector2( 9, 9 )
format = 1
               [gd_scene load_steps=3 format=2]

[ext_resource path="res://tilemap_packed.png" type="Texture" id=1]
[ext_resource path="res://Hitbox.tscn" type="PackedScene" id=2]

[node name="spike" type="Node2D"]
position = Vector2( 0, -10 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 144, 54, 18, 18 )

[node name="Hitbox" parent="." instance=ExtResource( 2 )]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Hitbox"]
polygon = PoolVector2Array( -7, 9, -7, 6, -5, 2, -3, 2, -1, 6, 1, 6, 3, 2, 5, 2, 7, 6, 7, 9 )
               GDST�   H             �  WEBPRIFF�  WEBPVP8L�  /���6�l5Z1��L1(�_2���cN�im�jt��c��&*�q*`;�j�V���_�Ѐ�$!���>�?Z ����I�T\~��V��"�6+�i/]��p��a�I� �<+ Q�vs��� �iXrU �࢑�1IRY<>��G3Q� �Y1Q� �f�Vp�ZC�{��P�8��$�n���6� �C9 �H]������k����J���(ɶMg�)I�q��/<Of�yy�z)���)��mj��������L"� ���G�<KR�5A����{�E�g��ڮ'�#b's]S�)��鹗��=�k���]�:+s]P�$��u�Q�P��9�LS�����u���&8ɴ>qo�g"�'�Mp�i}����fEf$������BQo./)�ެ�OJ+���:?(�P�������7��
�����{x�:�Pܛ懈�xxs�CiD����zs�DiD����vR �����	Pk��7��d������^���V���	x�O� ��g�u@��:0��o�܃Z����^`�V ��A3#3��6i��&�ԃIϟ������mܘ��n�c�d��?���4��r��欷ih���7�Sz6�|��v�����Mf����7�'?��3����?��3���I��SO��=WX��!�[�so�[�g�[�g�[��vg�
�������N���o���&��I����=Ϻ�G�U�\�lW|*ER�nnN��(�O������a����j�?��no�篟(_���۰7bY���{��u]#�����M�m���&�M�o��áa!�Z!kB��)����a!_[!k�޼?�,ئa![!kb�A��	���m7��@o&��+<�{
��L�ׯxh��)z3a?�y�m�ǰ=	m�<��ՠ
��yLA�VC7(m�<��g���6pSг����V/�<�����,�`�¾�W�m0��/���>��8k�M���s�I�_5H݋6�#��,l��g� ���#w�^)!o��y��Xr�S�S2Dv����K��$B�*���u �h."����}Jh�H�����B��D���v��L(ڴŖx��č��xzSEޞc�'(��p�D�8�]a^�z������.�)��l�x&|������{L��7�o��N�x�B�~и��:K�ۻw�H�{��@�7�o"�+s��>EL!� }��7�����H��=\���Js��O��;~�,�]��@T�qE�O��N@=�7�b]m<��}�͈xsx��V�z��-����Mq��x���Fu�6i�8�o�P�ta��g�� ��F�$�Q�ט7o�P���1� �J����JH��z5mL�Ơ����ao��X��[fm���)��}"޲$n@�[�s���C��CB[�*�}6#Q4�-�����jt�.�;�G-�� �s�d.ρN)��j!�h��7b��Ȓ&捸��\�Q�/��;[{~?�Y�,��7�FG��7 �����4�#��& .�f�Ŀ߹}<؍�٢�CE��	�����,���M�x���yLA�V�l��hb*R�x�6F�(�B�_)w����r�B�舽�}�@��ǳ��tx�)�>�BJ�H��#�ç��`�RR��w��j0[P��$�Y�/�~��|�����b�/#�+Ly0ĽY*��?US��\�3+Cԛ����?��@����C�_PGy��aQ1���"5�:���o$�Q��'@%��2P�>0US��F%�uB�0�#z�
Y�\��\�y�B��qZ!�3��izT�F���u����7�52IƛW����BZ�*z��+�2ZϜ7��k�eG�����J�����K�V�V�V��:\��l休$z��ZS�3�F��0.bx�Cg��䵲7��qeV{^��<`zr�����n����O��xz}j�5�Q�`U��|oyR���r�����Y�*��闔:�"s�Я��̡����9벊,z���{0�v�0��cZg>�.�Ӌ�*�~��H*\�:y�g;�k�PT=*Dw�x������mY��,��X��72�ؿ�֧������۲�D�F�J�����3�RC���e92}b�[[Τ	H�zی�q�{D�a Y���dH�B���%ԧ5	�Op�5`�d��JG��Kڸ���Y��7�P��Z [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tilemap-characters_packed.png-b34ca4ad7c3919d52e7a7362602005a5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tilemap-characters_packed.png"
dest_files=[ "res://.import/tilemap-characters_packed.png-b34ca4ad7c3919d52e7a7362602005a5.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
             GDSTh  �             
  WEBPRIFF�  WEBPVP8L�  /gA(_�6�m%�[?FB��
b2w��i�im�M^
��Fq#�0�IP�x���]G��D�;�.!��J0$�	��+ (�� ���}������p������Г��˷Ā�y�@es ��
�&`/�!��x5. ���^h@~���L���qޮm��F�6��Ul�y6��+-W�2��`�q�'N�5�1��%I
b�|��^��P��Z��-E�WW{D�&׊�6���}I���ƺ7�H������r�p���H��χї���l�:���2A&Y��U�:R8�𳣿�q�5E�?��{k��Kd׌�$d�H�ŬA���!w\�q/���A'�(�D�.�:�	��l���y]������/r����3���B�t�-k������5LN�b��h�L��["���,9ą������: e����Y�lOO��I�A:�xP4���6�S� �r�nB��`�:f ;I�O����R�_^�,<5I'p�����8a�����7@vd�oȐĚ�;ɽ/�AF��
����	<��#XS�!�K�����MPʼ}���.�<%�}d#ܸ�4w<QH>�x1���塿F茨�q>�$^��f��G��I��U�*ĺ l���_=J�,
����]��t8%�|I����Y�i����S�/�� f���[���5:����� ;�x�1E�Z�%K+L�N=�a`��$�0��A9�0,��i���#8>�=�
YN^]�z���p�8�}�[~9�~����;�$����D���Y��S�j$G��sR���L�׉��h��F���c���y������}��;��ҭ3��)\�)�ʓT��4G�e��٫bu�gG��q�6�R���ŜԻ�r�i�v�e9<b�9��6�GS���q��푒�^z�}o�F�/&23���8����>j<:����Y��;���DNx��V4���G/mN�uo�U��������ۃ����q읝4o����%�X�Y� �V.����`�4//u�Cޅ:'�k�*�)�u� v�x�6��U�#�P� ǉu'�fQ�w����>������|�&���Nr��'T`��V���VP#Z@��.Y��9��%�{��~*`�}�0�*���_�cN2�0�c��h.G�r�ֱ�Dd�l=P�yy!�k"���@���������A%� ��Ϻƾ���9���Ũ�1r2#BJ���$��/�t��,��T#P�a&\�-��>�e`�e�x�m�Y�eI�qˠ��n�;Z�!χ޿:�z/��GSzބ��N�c3x< o),�e(d>�쑜��9	<h
Ǻ�W��)��9ʉ�NQl���?J��9��SB:p:���.��y�ס�i����������+;����ꩳ���]בF�)i#`l����������#ݿb'��s�"�I��5������r��)�Ӽ+���1��OG�NP�S�2���/P��-HR�ݪ���q��H�CӃ��k��WJ�:ey�D���!m����&�#@�0��|h�6�}y�{�!&¹���0	zd���v�FO*E;I3`��ku i(��"5m�X���CA$��-$_���?Cl �(d�-��!���q�u(�~�iv���Z=�ј�X�xi�����	�ѷ5Tv8T�I̮[uZ����=���"Xg�8��$�H���L`�4��na�H��">p�s�'\E� 0�(���IY�CvRw"���@NN�������f>fĠ��	�I��ԝ:�HV���<������,i��b�(��9`�쥖��P!��q^^2xd��p��dc��a.�UC@G0V����_�E��,f����`	#N������t�r� J8���x#X�p�g��H�&e�S�Gw�K�B��\rn]3��1��H�T��d)O�����\
:����|��q(�*�q�ɢz4�������Tq��:?8��0A�:�>��c�����<�ˋ��1~�qf,����p��l�� :Y4�zx�@gL����"���;\.�Ѕ<h'��c�{Cܤ��!CNv��i�뵛%H�{�+��B6���,�:���������}�l�Z�F�%���Cr��r�	�E�Y&�o�!N6[�����A^��1e}��"/t���0��I�h'i��7�"����9������d������1F�_���N�H;H</�L�(h�c���s��I,�G��Q�U0f��@Y�|�w=�+��B�x[4�zJ`V!e�p9��}1�snǊcP$7c=zRl�)���K��	�@��c��9X|���օ�2��;~�Uw��#��F�i�H$�^�ڏ�d߈����6������m�;om���N��N2;kL�"d��#��0P���(�ʘ9!h�E�J�u�%ݭ��	��0�G&z�+��A�q��H5� ޥ>kSgm�;T�}��ҹ�Cn�������c�E����d#�D�EPV7�av����Iq�RU;g�&rmzA^���2�Fxv�	���s�#N��V�y�1�H'ǉ� v����?Pl�����@��h�p�<k?6�A�$�'��%�H6�:�KϜ^&B�~��׉�1�d��Uk�)�1xm����������}j�>>�ju�Z̾c5��_��'R��.��8�5<���K@��0���P9���վg8Qg8҉�f�&!��׷����Ad��AW�R�u�&��+���'=+�[�����PD��>N�N�F���F4`�!4q���kkZq��3NM(��?V(�1J��F9���
�{���\.���M�"r�P�����Tҷ�on�dR�c�	|�'���4��y}4&�6G�r
]/M����?������8w8�D)
�t�an SS���0�aƘ�xd�L
�C��s��TK�\�qkP`8tde�gY �v��b�Q,R����`�,`a�	��H'��٘�F�lӘ��uʻ��cZ��.�l�G���8�\�Ň����M�Q�&���0�y�=����$�� ���f8�z������d<'-rЂ8�#f|��[X��FY�+�Yu:�p��(�}X�M�K ��pv'��{���pX�!'���g8I��<hO=huGx�������[��������d�	��7�C��$y�)����)�F��r1!�>��$Q4��91SpkwDPҜ��³\{>�zߋ�P�aA����B�A�����Q9a�����wBB�_�P�+r�b�	��ґ�c���4�qkݏ�>��#�a:-�8�14hF5)C@�W�Q8��L|#A��� HŒ���{:���l�?���qr:��Xx>����,��"q2'���~	�5�>k*��8)T8�!� '�_I	;���V&�,�y�1��Qr���'G��	��'����è%�4}���Ā���\5�bsٹy��"g� �X�{5ѐ	+)����ׯ�Y�of��~��G�W��z��Q�c}�;���hD?�l�|���	������O|���&��k�kd�s\z{t��*��Y|H���E�������`%V 6$P���Ɓp5�#��7��AD�?Lg�i>��zՀ��%�g������)��a���x2��^��-fԜВȻ9�X�בN@�1'y�������Qo�?(�p ԁc&�t+���0G��,"#���6%��QL�D�a��(�WqԷ(Jdt*�3����@�R�k��q���3�@7�`�c9X�����Y1�OA7j�=vpf��x�F4kR��*ȕ��\V��އ��[ݏ�z��	2��c�j�+&�|��Xz�Ÿv"NNN�Td�\�¨�y��,�C6��t(���ǽ�/�M¢J�T����S������b�&n�D�ʉ����Av�E��*9��5��σD[��=PV7javU��H�P�9ʙ /=�R�FG�*�K�Q�2^gp�V�y9�E�w^�-D���Ĭ�"T���V�3Y��,�� �&��ܚ$|����t�� MC�=���xH�ޛ�tr�.n�6�AU����O�vЧO�Vl]#�VVTd�'2܄�c\�#N/�d�(5̭	�w����Xl.l2?Lȡ���I�пl�������;��'�n]��S7�.�������n2���|~z��.�����L�B�i�(�����;�Ϗ���� �/�(�)���!0F�s�s�{�i|�����)�X2TA����ӝ�x\�0����}�و�i��F?c9�\]8Nf��j3!"yY���k�KpY�{�A��4gHoi�^�PeK������t�d${7��htX��!�x�| Z,�k Z��ϔ�.�K]�QJ� zpE2� ���G�d�b���h��"�$ֈ��0Щ��_A-M/M�+#u8�v��V'ԇ*�����P�3�A��#��xD��.�"Y�� o������'��χ��w���a�0�.�dƾ��a$8�	pW�� 緷7;wt[��t4<G�."v���B�eu�v	�Sb��P�p^p�,�':|`p2{M������@ �p��դ����#���%@/��7e�Y�lk��D��b	�vg59�����{��G1���Ă�7/���F:��q�hN\��ڔ34�_�=TX�I�B����0'� p&t;9rL4�b�m���X.l�����C�߿"��t�L�f�n�r9о7s�����D8�; S0� �{�T���Cf������q(R�V/��p���}U�*+�g�O��뙓��@uu(�~�Γ���*���O?�JN�I�Z?}�_ԸA��p����׿^I��NB#\�G%�8qO��.$ 3�R�#���/�ʎ�*�תn�MG�;��K��4A�I���0+�
� b�.���8]39Յ���s)h"
���T�������w���D
�}\��w���z+ hA2��yf;`�m�ش*�;=�JP�<3ҷ��;�Lc�'H&�"(�$�>�1�2'�zb��u<'V*���5��e�R�;
�^��(�?7��g��H������S��Q,�kl���%wtJ���3���tE���;��S�K�(�5��*��j�����ԫ�N)���p�E?G6yO�t���E&�Mf@���	EA�Iz�M��"F��������az%Dsuo��x��)���
���S��-�U�o�h�:{"�������Ì�����3�U(��^�p��hxt@�V�J))��`��'���9�N�ù]�!a�F��ux�Y�]�`��{x�(��3�n��|:A�e��i; �u���,��3�������Z�'��z�v��iVH^�X�#�A0�<������k��oM�"��ut�劣]�cc�ya�ur�}����y�Jaby��J�D�bH�sĸ�KY1�|�_�z06�4�!~G&�)!W�����X��0���QA����������X�#t�﯎"A�B��;���C�w�y���#!e4��e�3�3���܎� �.`�&9ɨP)�N����_k��".qk���6��|�̖i$��o_�+��y"'�բ��s�ļ�un�'�����������7t2�X��u�9	�����x:9NƢ���<�!Z�'�� �7	i�'���h+a��u�Q�&9�3��S�a"5�䈔⡚j��_bN�jT�n�ԨLgJԉnM	�M��>��!o��2JI�V&�V��!o~��(��S�q&�I����R����0�m5<��Fz���B����xM&8����}�y��ˠLJ&��#���$�?�
{s�8J�Q�l-c��R�ۓ�
�5�u�J�BM�&���W��@�"��(>Qo~C�a�JA�DM!�,�)�m�F����@c�������`�N��\�9'QS��q��8�V�1Ȩ��Ac�6�jt
���R)D�����A          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tilemap_packed.png-7b301e6705a57389d2cd02d385b33920.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tilemap_packed.png"
dest_files=[ "res://.import/tilemap_packed.png-7b301e6705a57389d2cd02d385b33920.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
              [remap]

path="res://Enemy.gdc"
[remap]

path="res://Hitbox.gdc"
               [remap]

path="res://Ladder.gdc"
               [remap]

path="res://Player.gdc"
               [remap]

path="res://World.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes                     class         Ladder        language      GDScript      path      res://Ladder.gd       base      Area2D              class         Player        language      GDScript      path      res://Player.gd       base      KinematicBody2D    _global_script_class_icons8               Ladder               Player            application/config/name         Godot      application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png     display/window/size/width      @     display/window/size/height      �      display/window/size/test_width            display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep+   gui/common/drop_mouse_on_gui_input_disabled            importer_defaults/texture�              compress/bptc_ldr                compress/hdr_mode                compress/lossy_quality    ffffff�?      compress/mode                compress/normal_map           	   detect_3d                flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat          
   flags/srgb              process/HDR_as_SRGB              process/fix_alpha_border            process/invert_color             process/normal_map_invert_y              process/premult_alpha             
   size_limit               stream            	   svg/scale        �?   layer_names/2d_physics/layer_1         World      layer_names/2d_physics/layer_2      
   Characters  )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres    
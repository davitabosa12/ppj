GDPC                                                                             !   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�V      �      �p��<f��r�g��.�@   res://.import/shell.png-3f1fd60968df623c4055312ee6946f4a.stex   �~            ���ٍ�ױ�f	��f<   res://.import/tank.png-df5e9fed772773b995fab2b58735640c.stexp�     5'      )�����Ȼ�x���A�   res://Bullet.gd.remap    �     !       טdZ�=���B!��q'5   res://Bullet.gdc0      r      �B��>��j넫��]   res://Bullet.tscn   �      j      ���~��Rkt(`I   res://BulletSpawner.gd.remapP�     (       ��&��tf���[�
L   res://BulletSpawner.gdc        �       �4_^|Hw���7�A�   res://Enemy.tscn�      x      �JW/��O�d��Ƌ_   res://Game.tscn p      0      ����b�R����A�   res://Lobby.gd.remap��             )�Y�9R�� ������   res://Lobby.gdc �      N
      ��'��O���QS@��   res://Lobby.tscn�#      	      Z�!��Af���{�   res://NetworkGame.tscn   -      =       �`�쐮�:�q��    res://Properties/AssemblyInfo.cs@-              ��ُ ��	���B~   res://Tank.gd.remap ��            ��9����~����   res://Tank.gdc  @-      Z      $�^7��}8��4G��   res://Tank.tscn �8      	       ?�7�l��ƆN !���   res://default_env.tres  �=      �       um�`�N��<*ỳ�8   res://gamestate.gd.remap��     $       �����,�ϵ#g   res://gamestate.gdc `>      �      dPtQ6�d���C�#�   res://gamestate.tscn V      �       �^)<<:J�m��%l &[   res://icon.png  @�     i      ����󈘥Ey��
�   res://icon.png.import   `d      �      �����%��(#AB�   res://label.gd.remap�             qj53�.+�0w��ܳ�	   res://label.gdc �f            �跄��EE��GL3h�   res://montserrat.otf h      �     +� �fQU:�]}3��   res://project.binary��     �      ��*{�cpo��{9��E   res://shell.png.import  ��     �      Fj�����})
��   res://tank.png.import   ��     �      � A#4'��C   res://win_message.gd.remap  �     &       �R�ә��C��(�~��   res://win_message.gdc   0�     �      �쏡�ð>�'JT�R   res://world.tscn�     7       3��:ͽGw����"y�            GDSC         '   �      ���ׄ�   ���������ڶ�   ��ڶ   ����Ҷ��   ��ٶ   ���������Ŷ�   �����϶�   �������ض���   ���������������Ŷ���   ����׶��   ����������������Ķ��   ������Ҷ   �������ض���   ���¶���   ��ն   ����������ж   ���������Ӷ�   ����������������������Ҷ   ���׶���   ����������Ӷ          �            
   puppet_pos     
   puppet_ttl        kill_myself       die                          
                           	       
   !      '      +      /      6      >      ?      @      D      W      ^      e      h      l      p      q      w      |      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YYYH;�  Y;�  �  Y;�  �  Y;�  YYH;�  �  PQYY0�  PQV�  �  �  �  �  �  Y0�  P�	  QV�  &P�
  PQQV�  �  �  �  �  �  �  �  PR�  QT�  P�  Q�  �	  �  �  P�  R�  Q�  �  P�  R�  Q�  (V�  �  �  �  �  �  �  �  &�  	V�  �  P�  QYI0�  PQV�  �  PQYY0�  P�  QV�  ;�  �  T�  �  &P�  �  QV�  .�  (V�  �  T�  P�  R�  R�  Q�  �  P�  QYY`              [gd_scene load_steps=4 format=2]

[ext_resource path="res://Bullet.gd" type="Script" id=1]
[ext_resource path="res://shell.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 1.28107, 1.3207 )

[node name="Bullet" type="Area2D" groups=[
"bullet",
]]
scale = Vector2( 2, 2 )
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.01, 0.01 )
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
[connection signal="area_entered" from="." to="." method="_on_Bullet_area_entered"]
      GDSC         
         ���ӄ�   �����¶�   �����϶�      res://Bullet.tscn                                                       	      
   3YYYYY;�  �E  PQYY0�  PQV�  -Y`   [gd_scene load_steps=3 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 31.7136, 31.8714 )

[node name="Area2D" type="Area2D"]

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
        [gd_scene load_steps=5 format=2]

[ext_resource path="res://BulletSpawner.gd" type="Script" id=1]
[ext_resource path="res://montserrat.otf" type="DynamicFontData" id=2]
[ext_resource path="res://win_message.gd" type="Script" id=3]

[sub_resource type="DynamicFont" id=1]
size = 45
font_data = ExtResource( 2 )

[node name="World" type="Node2D"]

[node name="Bullets" type="Node2D" parent="."]
script = ExtResource( 1 )

[node name="container" type="Node2D" parent="Bullets"]

[node name="spawn_points" type="Node2D" parent="."]
editor/display_folded = true

[node name="0" type="Position2D" parent="spawn_points"]
position = Vector2( 240, 121.5 )

[node name="1" type="Position2D" parent="spawn_points"]
position = Vector2( 904.403, 117.265 )

[node name="2" type="Position2D" parent="spawn_points"]
position = Vector2( 380.724, 358.474 )

[node name="3" type="Position2D" parent="spawn_points"]
position = Vector2( 894.959, 468.959 )

[node name="4" type="Position2D" parent="spawn_points"]
position = Vector2( 110.857, 509.699 )

[node name="5" type="Position2D" parent="spawn_points"]
position = Vector2( 549.041, 539.77 )

[node name="6" type="Position2D" parent="spawn_points"]
position = Vector2( 259.066, 559.102 )

[node name="7" type="Position2D" parent="spawn_points"]
position = Vector2( 583.408, 99.4386 )

[node name="8" type="Position2D" parent="spawn_points"]
position = Vector2( 776.724, 546.214 )

[node name="9" type="Position2D" parent="spawn_points"]
position = Vector2( 72.194, 84.4029 )

[node name="10" type="Position2D" parent="spawn_points"]
position = Vector2( 201.071, 301.347 )

[node name="11" type="Position2D" parent="spawn_points"]
position = Vector2( 705.842, 333.566 )

[node name="players" type="Node2D" parent="."]

[node name="Control" type="Control" parent="."]
margin_right = 1022.0
margin_bottom = 601.0

[node name="win_message" type="Label" parent="Control"]
visible = false
margin_left = 1.0
margin_right = 1022.0
margin_bottom = 601.0
custom_fonts/font = SubResource( 1 )
text = "WINNER"
align = 1
valign = 1
uppercase = true
script = ExtResource( 3 )
GDSC   !      F   �     ������ڶ   �����϶�   ��������Ӷ��   ������¶   �������������Ҷ�   ��������   �������Ӷ���   ���¶���   ���Ӷ���   �������������Ķ�   �����¶�   ����������¶   ���������������������Ӷ�   ���������������������Ŷ�   ����������������Ҷ��   ���������Ӷ�   ���������������Ҷ���   ���Ӷ���   ��������Ӷ��   �����������϶���   �������������Ҷ�   ��������������¶   ���¶���   ����Ķ��   �������۶���   ��������������Ӷ   �����Ķ�   �������Ҷ���   �������Ӷ���   ����������������Ķ��   ���������������Ҷ���   �ƶ�   ��������Ӷ��      connection_failed         _on_connection_failed         connection_succeeded      _on_connection_success        player_list_changed       update_lobby   
   game_ended        _on_game_ended     
   game_error        _on_game_error     
   game ended        form      form/error_label             players       error         connection success        form/NickLineEdit         Nome invalido!        players/player_list        (Voce)       players/Button        form/IpLineEdit                                            	   	      
               &      1      <      G      I      J      K      Q      V      Z      c      l      u      v      }      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0      1   	  2     3     4     5   -  6   .  7   4  8   >  9   ?  :   O  ;   P  <   V  =   c  >   l  ?   n  @   w  A   �  B   �  C   �  D   �  E   �  F   �  G   Y3YYYYYYY0�  PQV�  �  �  T�  PRR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�	  Q�  -YYY0�  PQV�  �8  P�
  Q�  �  PQ�  �  P�  QT�  PQ�  �  P�  QT�  �  �  �  P�  QT�  PQ�  Y0�	  P�
  QV�  �  P�  QT�  �
  �  �  P�  QT�  PQYY0�  PQV�  �8  P�  QYY0�  PQV�  �  T�  PQSYYY0�  PQV�  &P�  P�  QT�  �  QV�  �  P�  QT�  �  �  .�  �  P�  QT�  PQ�  �  P�  QT�  PQ�  �  P�  QT�  �  �  ;�  �  P�  QT�  �  �  T�  P�  Q�  �  PQYY0�  PQV�  ;�  �  T�  PQ�  �  T�  PQ�  �  P�  QT�  PQ�  �  P�  Q�  �  P�  QT�  P�  T�  PQ�  Q�  �  )�  �  V�  �  P�  QT�  P�  Q�  �  �  P�  QT�  �  PQT�  PQYY0�  PQV�  &P�  P�  QT�  �  QV�  �  P�  QT�  �  �  .�  �  P�  QT�  PQ�  �  P�  QT�  PQ�  �  P�  QT�  �  �  ;�  �  P�  QT�  �  ;�  �  P�  QT�  �  �  T�   P�  R�  Q�  �  PQY`  [gd_scene load_steps=2 format=2]

[ext_resource path="res://Lobby.gd" type="Script" id=1]

[node name="lobby" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )

[node name="players" type="Panel" parent="."]
editor/display_folded = true
visible = false
margin_left = 420.0
margin_top = 50.0
margin_right = 670.0
margin_bottom = 540.0

[node name="player_list" type="ItemList" parent="players"]
margin_top = 30.0
margin_right = 250.0
margin_bottom = 410.0

[node name="Button" type="Button" parent="players"]
margin_left = 60.0
margin_top = 430.0
margin_right = 180.0
margin_bottom = 470.0
text = "START"

[node name="Label" type="Label" parent="players"]
margin_top = 10.0
margin_right = 94.0
margin_bottom = 24.0
text = "Players joined:"

[node name="form" type="Panel" parent="."]
margin_left = 300.0
margin_top = 140.0
margin_right = 790.0
margin_bottom = 460.0

[node name="host" type="Button" parent="form"]
margin_left = 140.0
margin_top = 240.0
margin_right = 240.0
margin_bottom = 270.0
text = "HOST"

[node name="join" type="Button" parent="form"]
margin_left = 260.0
margin_top = 240.0
margin_right = 350.0
margin_bottom = 270.0
text = "JOIN"

[node name="NickLineEdit" type="LineEdit" parent="form"]
margin_left = 140.0
margin_top = 70.0
margin_right = 350.0
margin_bottom = 110.0

[node name="IpLineEdit" type="LineEdit" parent="form"]
margin_left = 140.0
margin_top = 160.0
margin_right = 350.0
margin_bottom = 200.0
text = "localhost"

[node name="Label" type="Label" parent="form"]
margin_left = 140.0
margin_top = 50.0
margin_right = 190.0
margin_bottom = 64.0
text = "Nick"

[node name="Label2" type="Label" parent="form"]
margin_left = 140.0
margin_top = 140.0
margin_right = 180.0
margin_bottom = 154.0
text = "IP"

[node name="error_label" type="Label" parent="form"]
margin_left = 214.0
margin_top = 290.0
margin_right = 254.0
margin_bottom = 304.0
custom_colors/font_color = Color( 0.721569, 0.105882, 0.105882, 1 )
align = 1

[node name="error" type="AcceptDialog" parent="."]
margin_right = 83.0
margin_bottom = 58.0
[connection signal="pressed" from="players/Button" to="." method="_on_Start_pressed"]
[connection signal="pressed" from="form/host" to="." method="_on_host_pressed"]
[connection signal="pressed" from="form/join" to="." method="_on_join_pressed"]
   [gd_scene format=2]

[node name="NetworkGame" type="Node2D"]
   GDSC   2      R   �     ���ׄ�   ����Ҷ��   �����������Ҷ���   �����¶�   ���Ӷ���   ����������Ӷ   ����������Ӷ   ����Ӷ��   �����������Ӷ���   ����������������������Ŷ   ���������Ŷ�   ��������������Ӷ   ���Ӷ���   �������Ӷ���   ���¶���   ��������������Ӷ   �����϶�   ����������������¶��   ���Ӷ���   �������ض���   ������¶   ���������¶�   ���������������Ŷ���   ����׶��   �������϶���   ����������������Ķ��   ����¶��   ����������������Ҷ��   ���������������Ŷ���   ������Ҷ   �������ض���   ���������������������Ҷ�   ����¶��   ζ��   ϶��   ���¶���   ��ն   ��������������¶   �������������Ӷ�   �������Ӷ���   ��ٶ   ��������Ҷ��   ��Ӷ   ���Ӷ���   �������������ӄ򶶶�   �������Ҷ���   ��������Ӷ��   ����������������Ķ��   �������Ӷ���   ��������������������Ҷ��   d      �         res://Bullet.tscn                      Label         fire      Bullets       _on_TANK_fire         ui_right      ui_left       ui_down             ui_up         ui_fire    
   puppet_pos        puppet_rotation_degrees       fire_the_bullet        fired        ../../Bullets/container                                                            	      
          #      (      /      0      6      >      ?      @      G      P      T      U      [      ^      _      `      f      n      r      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /     0   	  1     2   +  3   2  4   9  5   <  6   @  7   D  8   E  9   I  :   R  ;   V  <   Y  =   [  >   \  ?   ]  @   ^  A   e  B   j  C   n  D   o  E   v  F   }  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   3YYYYY8;�  Y8;�  �  Y;�  ?P�  QYB�  Y;�  Y;�  Y;�  �  YH;�  �  SYYH;�	  �  YH;�
  �  PQYYY0�  P�  QV�  �  P�  QT�  �  �  �  �  YY0�  PQV�  .�  YYY0�  PQV�  �  �  PQT�  �  �
  �  �  �  P�  R�  PQT�  PQT�  P�  QR�  Q�  -YYY0�  P�  QV�  �  ;�  �  PQ�  &P�  QV�  &P�  PQQV�  &�  T�  P�	  QV�  �  �  �  �  &�  T�  P�
  QV�  �  �  �  �  &�  T�  P�  QV�  �  �  P�  R�  QT�  P�  Q�  �  �  &�  T�  P�  QV�  �  �  P�  R�  QT�  P�  Q�  �  �  &�  T�  P�  QV�  �   PQ�  �  T�!  �/  P�  T�!  R�  R�  T�!  Q�  �  T�"  �/  P�  T�"  R�  R�  T�"  Q�  �#  P�  R�  Q�  �#  P�  R�  Q�  (V�  �  �
  �  �  �	  �  �  �  �  �  &P�  PQQV�  �
  �  �  (V�  -�  YYYF0�   PQV�  �$  P�  Q�  �%  PQYYH0�%  PQV�  �8  P�  �  Q�  ;�&  �  T�'  PQ�  �&  T�(  �  �  �&  T�  �  �  �&  T�  �  �  �  �  P�  QT�)  P�&  QYYI0�*  P�  R�(  QV�  �+  PQ�  �  �  �  W�,  T�-  �  �  �.  T�/  P�  R�(  R�0  PQT�1  PQQ`      [gd_scene load_steps=6 format=2]

[ext_resource path="res://Tank.gd" type="Script" id=1]
[ext_resource path="res://tank.png" type="Texture" id=2]
[ext_resource path="res://BulletSpawner.gd" type="Script" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 120.952, 167.741 )

[sub_resource type="GDScript" id=2]
script/source = "extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = \"text\"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_as_toplevel(true)
	
	
"

[node name="Area2D" type="Area2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
scale = Vector2( 0.108789, 0.108789 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.108789, 0.108789 )
texture = ExtResource( 2 )

[node name="Bullets" type="Node2D" parent="."]
script = ExtResource( 3 )

[node name="container" type="Node2D" parent="Bullets"]

[node name="Label" type="Label" parent="."]
margin_left = -18.8333
margin_top = -45.9883
margin_right = 21.1667
margin_bottom = -31.9883
align = 1
script = SubResource( 2 )
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC   P   '   �   *     ���Ӷ���   �����������ⶶ��   ��������嶶�   ����������Ӷ   ������Ŷ   ������������������Ҷ   ����������������Ҷ��   �������������������Ҷ���   ���������Ҷ�   ���������Ķ�   ���¶���   �����Ķ�   ����������������Ҷ��   �Ҷ�   �������������������Ҷ���   �������Ӷ���   ����������������Ķ��   �������Ӷ���   ����������ڶ   �������Ӷ���   ����������������Ķ��   ���Ҷ���   �����Ҷ�   ������������ݶ��   ��ն   ��������������������Ҷ��   �������������������Ҷ���   ��������������ڶ   ���������������Ķ���   ��������������Ķ   ��������������Ӷ   ����Ӷ��   �������������Ӷ�   �����������Ŷ���   ����Ҷ��   �������Ӷ���   �������¶���   ��������Ҷ��   �������Ӷ���   ���Ӷ���   �����������Ӷ���   ��������Ŷ��   �������ض���   �����Ķ�   �������Ӷ���   �����������������Ķ�   ��������������Ӷ   ���Ӷ���   ��������������Ӷ   ��������Ӷ��   ������������Ŷ��   �����Ҷ�   ƶ��   ������������϶��   �������������¶�   ��������Ӷ��   ���¶���   �����������������������¶���   ����   ������������Ķ��   ��������Ӷ��   �ƶ�   ������������¶��   ��������������¶   �����Ŷ�   ��������������Ӷ   ���������Ӷ�   ��������������ζ   ���������Ӷ�   ����Ķ��   �����϶�   ������¶   ����������������Ķ��   �����Ҷ�   �����Ķ�   ��������Ҷ��   �����Ӷ�   ���Ҷ���   ��ض   ����������Ӷ   G)              The Warrior       /root/world    
   game_error        Player         disconnected         unregister_player         register_player       connection_succeeded      Server disconnected           connection_failed               player_list_changed       res://Game.tscn       lobby         res://Tank.tscn       spawn_points/         players       ready_to_start                      post_start_game       pre_start_game     
   game_ended        network_peer_connected        _player_connected         network_peer_disconnected         _player_disconnected      connected_to_server       _connected_ok         _connected_fail       server_disconnected       _server_disconnected       got killed by        win       winner        winner                           	      
                     	      
                                  !      &      +      0      5      ;      A      B      C      J      K      L      N      O      P      W      c       l   !   z   "   ~   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?     @     A     B   !  C   "  D   )  E   .  F   /  G   7  H   >  I   C  J   D  K   L  L   M  M   Y  N   f  O   g  P   x  Q   y  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g     h     i     j     k   #  l   ,  m   3  n   9  o   @  p   A  q   G  r   M  s   N  t   V  u   a  v   b  w   k  x   r  y   s  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �   "  �   (  �   /  �   3  �   4  �   :  �   C  �   D  �   I  �   J  �   P  �   Y  �   Z  �   c  �   d  �   i  �   o  �   x  �   y  �     �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �   
  �     �     �     �     �     �   "  �   3YYY:�  YYY:�  �  YYY;�  �  YYY;�  NOYYYB�  PQYB�  PQYB�  PQYB�  PQYB�	  P�
  QYB�  P�  QYYY0�  P�  QV�  �  �  -YYY0�  P�  QV�  &P�  PQT�  PQQV�  &P�  P�  QQV�  �  P�  R�  �  L�  M�  Q�  �  PQ�  (V�  �  �  P�  Q�  )�  �  V�  �  �  P�  R�  R�  QYYY0�  PQV�  �  �  P�  R�  PQT�  PQR�  Q�  �  P�	  QYYY0�  PQV�  �  P�  R�
  Q�  �  PQYYY0�  PQV�  �  PQT�  P�  Q�  �  P�  QYYYYD0�  P�  R�  QV�  &P�  PQT�  PQQV�  �  �  P�  R�  R�  R�  Q�  )�  �  V�  �  P�  R�  R�  R�  L�  MQ�  �  P�  R�  R�  R�  QY�  �  L�  M�  �  �  P�  QYYD0�  P�  QV�  �  T�  P�  Q�  �  P�  QYYD0�   P�!  QV�  �  ;�"  �E  P�  QT�#  PQ�  �  PQT�$  PQT�%  P�"  QY�  �  PQT�$  PQT�&  P�  QT�'  PQY�  ;�(  �E  P�  QY�  )�  �!  V�  ;�)  �"  T�&  P�  �7  P�!  L�  MQQT�*  �  ;�+  �(  T�#  PQY�  �+  T�,  P�7  P�  QQ�  �+  T�*  �)  �  �+  T�-  P�  QY�  &P�  �  PQT�  PQQV�  �  �+  T�.  P�  Q�  (V�  �  �+  T�.  P�  L�  MQY�  �"  T�&  P�  QT�%  P�+  QY�  &P�  PQT�  PQQV�  �  �  P�  R�  R�  PQT�  PQQ�  '�  T�/  PQ�  V�  �0  PQYYD0�0  PQV�  �  PQT�1  P�  Q�  �2  T�3  P�  Q�  )�4  �  V�  �2  T�3  P�4  QYY;�2  LMY;�5  LMYYD0�6  P�  QV�  @P�  PQT�  PQQY�  &P�  �5  QV�  �5  T�3  P�  QY�  &P�5  T�/  PQ�  T�/  PQQV�  )�4  �  V�  �  P�4  R�  Q�  �0  PQYY0�7  P�  QV�  �  �  �  ;�8  �9  T�:  PQ�  �8  T�;  P�  R�  Q�  �  PQT�  P�8  QYY0�<  P�=  R�  QV�  �  �  �  ;�8  �9  T�:  PQ�  �8  T�>  P�=  R�  Q�  �  PQT�  P�8  QYY0�?  PQV�  .�  T�@  PQYY0�A  PQV�  .�  YY0�B  PQV�  @P�  PQT�  PQQY�  �  ;�!  NO�  �!  L�  M�  �  ;�C  �  �  )�4  �  V�  �!  L�4  M�C  �  �C  �  �  �  )�4  �  V�  �  P�4  R�  R�!  QY�  �   P�!  QYY0�  PQV�  &P�  P�  QQV�  �  �&  P�  QT�D  PQY�  �  P�  Q�  �  T�E  PQ�  �  PQT�  P�  QYY0�F  PQV�  �  PQT�G  P�  RR�  Q�  �  PQT�G  P�  RR�  Q�  �  PQT�G  P�  RR�  Q�  �  PQT�G  P�  RR�   Q�  �  PQT�G  P�!  RR�"  QYYY0�H  P�I  R�J  R�K  QV�  �8  P�I  �#  �J  Q�  &P�  PQT�  PQQV�  �2  T�L  P�2  T�M  P�K  QQ�  &P�2  T�/  PQ�  QV�  �  )�4  �  V�  �  P�4  R�$  R�J  Q�  �N  P�J  QY�  -�  YD0�N  P�O  QV�  �8  P�%  �O  Q�  �  P�&  R�O  Q`[gd_scene load_steps=2 format=2]

[ext_resource path="res://gamestate.gd" type="Script" id=1]

[node name="gamestate" type="Node2D"]
script = ExtResource( 1 )
 GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

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
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC            !      ����ڶ��   �����϶�   �������Ŷ���   ����׶��   ��������������ڶ                                                          	      
                                 3YYYYYYY0�  PQV�  -YYY0�  P�  QV�  �  PQ�  Y`          OTTO  �  @CFF JNP�  �  ��GDEF(�  ��   (GPOS�<  �h  jGSUB�ݝ�  ��  pOS/2jl�6  0   `cmap��ƕ  4  *head��O   �   6hhea~�     $hmtx")5�  �\  tmaxpP   (   nameۢ��  �  �post�� 2  `         A��Q__<� �    �Z�N    �Z�N������             ��  ������                 P    n    �X   K�X  ^ 2F    	                      UKWN @  ���  � �   �     �        V        H         
 H       
 R        \        {       H �        �        �      	  �        �        �       �       �  	   ��  	  *P  	  z  	  >�  	  *P  	  ��  	  (V  	  "~  	 	 "~  	  2�  	  2�  	  �  	  4�  	  &  	  :Copyright (c) 2011-2015, Julieta Ulanovsky (julieta.ulanovsky@gmail.com)MontserratExtra Bold3.001;UKWN;Montserrat-ExtraBoldMontserrat Extra BoldVersion 3.001;PS 003.001;hotconv 1.0.70;makeotf.lib2.5.58329 DEVELOPMENTMontserrat-ExtraBoldJulieta Ulanovskyhttp://www.zkysky.com.ar/This Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: http://scripts.sil.org/OFLhttp://scripts.sil.org/OFL C o p y r i g h t   ( c )   2 0 1 1 - 2 0 1 5 ,   J u l i e t a   U l a n o v s k y   ( j u l i e t a . u l a n o v s k y @ g m a i l . c o m ) M o n t s e r r a t   E x t r a   B o l d R e g u l a r 3 . 0 0 1 ; U K W N ; M o n t s e r r a t - E x t r a B o l d V e r s i o n   3 . 0 0 1 ; P S   0 0 3 . 0 0 1 ; h o t c o n v   1 . 0 . 7 0 ; m a k e o t f . l i b 2 . 5 . 5 8 3 2 9   D E V E L O P M E N T M o n t s e r r a t - E x t r a B o l d J u l i e t a   U l a n o v s k y h t t p : / / w w w . z k y s k y . c o m . a r / T h i s   F o n t   S o f t w a r e   i s   l i c e n s e d   u n d e r   t h e   S I L   O p e n   F o n t   L i c e n s e ,   V e r s i o n   1 . 1 .   T h i s   l i c e n s e   i s   a v a i l a b l e   w i t h   a   F A Q   a t :   h t t p : / / s c r i p t s . s i l . o r g / O F L h t t p : / / s c r i p t s . s i l . o r g / O F L M o n t s e r r a t E x t r a   B o l d                   �   	 ��      �                                    �������������������������������     ! 5 7 A D Z ] _ e g s ~ � � � � � � � � � ����� � � � � � �&'-9;<@GQ\]ghr����   	   # q w � � � � � � � � � � � �,.2016RVTU���F�  {�����������~� �5������  ����   | }7��������n �����z|����  )  + / H L N R t v   x � � �    V @   / 9 ~H~�7���&�����    " & 0 : D �!!"!.!^"""""""+"H"`"e%����     0 : �J�7���&�����      & 0 9 D �!!"!.!["""""""+"H"`"d%����  T       Q  ��  �S  ��������      ��    �����T�6�������A����  ��  ����ߞߕ  �4    V   r �J  �  �  �        ���  ��                      �  �        �  �  ���������������������     ! 5 7 A D Z ] _ e g s ~ � � � � � � � � � ����� � � � � � �&'-9;<@GQ\]ghr���������� ~��������������     	    / # ) + R H L N  q x t v | w� { � � � � � F � � � � � � � � � � � � �,2.061�5VRTUj:n  �  �  �  �  �  �  �  �   � 1 � % � - � 3 � ' � ; 9 ?	 = C B X T J V P F \ ^ `! b# a" c$ d% i( m* k) o+ z4 u/ y3 }7 �= �? �> �A �D �C �B �M �K �I �[ �X �S �Z �W �Y �a �l � �t �x �v �E �O �e �_ �c �p������������z|         �� 2                      Montserrat-ExtraBold &�Q �R�S�T������f���  ٨:     ! , 2 > I O _ e k w } � � � � � � � � � � � � �	$0?JNXco���������������
!,<FQWeoz�������������'-8JP[ahs������������� *5=CNTZepv|�����������$/:>HQW]lr}������������"-4:@LRX_kq}��������������%+5;APValp{���������������&.9DJU[kw�����������������					(	3	;	E	R	a	j	v	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�



*
5
=
M
U
^
f
q
z
�
�
�
�
�
�
�
�
�
�
�
�
�
�'18AJR[dk���EmacronA.ss01Emacron.ss01EogonekAacute.ss01AbreveEogonek.ss01Abreve.ss01F.ss01Acircumflex.ss01LcaronG.ss01LcommaaccentGbreveLdotGbreve.ss01Adieresis.ss01GcircumflexM.ss01Agrave.ss01Gcircumflex.ss01AmacronN.ss01Amacron.ss01GcommaaccentNacuteAogonekGcommaaccent.ss01Nacute.ss01GdotaccentNcaronAogonek.ss01Gdotaccent.ss01Ncaron.ss01HbarAring.ss01HcircumflexNcommaaccentNcommaaccent.ss01Atilde.ss01I.ss01EngTcaron.ss01IJEng.ss01TcedillaIJ.ss01Tcedilla.ss01TcommaaccentIacute.ss01Ntilde.ss01CacuteTcommaaccent.ss01IbreveCcaronIbreve.ss01U.ss01ObreveCcircumflexIcircumflex.ss01CdotaccentUacute.ss01UbreveIdieresis.ss01IdotaccentUbreve.ss01OhungarumlautDcaronIdotaccent.ss01OmacronDcroatUcircumflex.ss01Igrave.ss01E.ss01ImacronUdieresis.ss01Imacron.ss01Eacute.ss01IogonekUgrave.ss01EbreveIogonek.ss01UhungarumlautItildeEbreve.ss01Uhungarumlaut.ss01Q.ss01Itilde.ss01EcaronUmacronEcaron.ss01Umacron.ss01RacuteJ.ss01UogonekJcircumflexRcaronEcircumflex.ss01Uogonek.ss01RcommaaccentUringKcommaaccentUring.ss01Edieresis.ss01SacuteUtildeLacuteEdotaccentUtilde.ss01Edotaccent.ss01Ygrave.ss01ScedillaZ.ss01Egrave.ss01ZacuteW.ss01ScircumflexZacute.ss01WacuteecaronScommaaccentWacute.ss01Zcaron.ss01ecaron.ss01WcircumflexZdotaccentT.ss01Wcircumflex.ss01Zdotaccent.ss01ecircumflex.ss01Wdieresisa.ss01Wdieresis.ss01Wgraveedieresis.ss01Wgrave.ss01aacute.ss01TbaredotaccentTbar.ss01abreveTcaronedotaccent.ss01Y.ss01abreve.ss01lacuteYacute.ss01egrave.ss01lcaronYcircumflexacircumflex.ss01emacronlcommaaccentYcircumflex.ss01emacron.ss01ldotadieresis.ss01eogonekYdieresis.ss01eogonek.ss01Ygraveagrave.ss01amacronf.ss01nacuteamacron.ss01ncaronubreveaogonekncommaaccentg.ss01aogonek.ss01enggbrevearing.ss01uhungarumlautgbreve.ss01umacronatilde.ss01gcircumflexuogonekobrevegcircumflex.ss01gcommaaccentae.ss01uringohungarumlautgcommaaccent.ss01utildeomacroncacutegdotaccentccaronw.ss01gdotaccent.ss01wacutewacute.ss01ccircumflexhbarwcircumflexoe.ss01cdotaccenthcircumflexwcircumflex.ss01wdieresisibrevewdieresis.ss01racutewgravercaronwgrave.ss01dcaronrcommaaccentdcroatijsacutey.ss01imacrone.ss01iogonekyacute.ss01scedillaeacute.ss01ycircumflexitildescircumflexebreveycircumflex.ss01scommaaccentebreve.ss01dotlessjjcircumflexydieresis.ss01Omegaygravet.ss01kcommaaccentygrave.ss01kgreenlandictbarpil.ss01z.ss01tbar.ss01zacutetcaronzacute.ss01seven.numrtcaron.ss01eight.numrzcaron.ss01tcedillazdotaccenttcedilla.ss01zdotaccent.ss01nine.numrtcommaaccenttcommaaccent.ss01fi.ss01zero.ss01fl.ss01one.ss01two.ss01eurothree.ss01four.ss01Deltafive.ss01six.ss01approxequalseven.ss01bulletoperatoreight.ss01nine.ss01divisionslashgreaterequalcommaaccentinfinityfirsttonechineseintegrallessequalnotequalpartialdiffzero.dnomone.dnomtwo.dnomthree.dnomfour.dnomsofthyphenfive.dnomguillemetleftproductguillemetrightradicalsix.dnomsummationseven.dnomlozengeeight.dnomnine.dnomzero.numrone.numrtwo.numrthree.numrnbspacefour.numrfive.numrsix.numrestimatedliterSign003.001Copyright (c) 2011-2015, Julieta Ulanovsky (julieta.ulanovsky@gmail.com)Montserrat Extra BoldExtraBold    "� ���� �� �� ������ �� �� � # $�� ��� % ��� &� ������ �� ���� ������ '� (��������� )�� *��� ���� �� ���� �������� +�� ,� -���� � .� /��������� �� 0 �� � � ��� � � � 1 � 2� 3��� 4� ���� 5����� 6� ���� �� �� ������������ 7 8�� 	 9 : �  �%'� ;��� � B
 � � �# �(),/2 �5 �9 �? C DEG �LP E �Z\ Fa �eil� � � �!$& G* H147:=>BFI IMQ J � �T � � �]`bg Kmn Lsu Mx" � N O+-03 � P �< � � �AD � � �O Q � R SVX[ T^ �dhk � Urvz|���� V �. � � �68;@C W XHJKNRSUWY Y Z_ �cfj �oqt [y{} ���� m� n� � ��p �w          ���������� c � � �@ABC�����������������~�� � � �  = r t   y  `     {  h   @ \ ^ < > 	 
 � o ��� k l v i w A  u � a g � e b d� _� ��  ��� � � � ���  z  ����� ] � !  s � � f � ��� ? p q } � � � ~ � � | � � � � ��  N � �$�c�%�e�p�]�F�Q�		`	�
'
��l��h�+�-xW�Q�M���v����L�E�b�u� N��
6��M��#l�&W��� ' k �!!k!�""J"�"�#/#M#y#�$$?$w$�%%%R%�%�&!&m&�'"'�'�(>(�)2))�*S*�+@+�,,l,�-�-�.$.k.�/;/�/�0N0�1(1�22�3%3�3�44I4�4�505�5�6L6�6�737}7�858�8�9X9�:O:�:�;B;�;�<6<�==�=�>t>�??a?�@@�@�AfA�B�B�CGC�C�DDXD�EE�FF�F�GTG~G�HHeH�IIZI�J2J�KK�L0L�M[M�N�OO�PP�QQ�R>R�S�TIT�U�V[V�WWcW�XHX�Y!Y}Y�ZzZ�[D[�\\|]]�^"^�__�``�a"a�bb~b�c]c�dyd�ee�f
f�ghh�iKi�j�kkek�l3lml�l�l�m2m�m�n8n`n�o=o�o�p-pdp�qq#q\q�q�rr:rmr�ssss�tEt�uLu�u�vvv�waw�x$x�yy�zVz�{W{�||L|�|�}]}�~ ~�'��%���ց�f���!����|���h��������m�Ç&�{��p��4�v�ϊ"����_�֌h���$�^�����P������	����X���ǒ�U�����@���%����~�ޖ�G�����N������`����T�z��k���ԛ#�u����i���������r������s�7�y����2�n����0����J�d����6���ݧ������P���Ө���/�h�����X�߫ �d�ʫ��N�i���ܭ:�^������� �8�P���Ʈ��e�Ű'�Q������������%���$�p�δF�������5�\���	�h���Ķ���/�v�߸��j���ι��#�Y�����Ż���R�߽o�
�X����}������!�]��������?�Y��������[�[�������$�����P�������>����� ���>�����^�>���>������>���>���v��,�Iw���������r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B��d���d��Y�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���v��,�Iw����P�����C� �H�����r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B��d���d�����C� �H�(V`�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���v��,�Iw��;�o��� ���������k�wunnw����%��J������r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B��;��dY���X�d ��E�.k�wunnw����%��J�������F�i�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���v��,�Iw��1����������8��	�1�0�	�1���!���r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B��1��d���d�����	�1�0�	�1����8PR�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���v��,�Iw��?�c�@��@����������g�YYghYY�g���^�����g�YYghYY�g���#���r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B��?��dM�@��@L�d ����>YghYY�g������g�Y��^YghYY�g������g�Y�#�y�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���v��,�Iw��������( �H�CQ�������r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B��d���d�v�� �H�CQ���`�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���v��,�Iw�����������������5���r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B����dw��v�d �����������"?�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ����_�=v�tv��,�Iw����c�|�����Q�j���Q�j��z�����qdxdcI�x�������Y�x~}����������A����y��y��_�=v�tv�2�,�u�B��d���d�X�~��Y�]���N�'�d�2���2�qdxdcI�x�������Y�x}}���������~��'�N���`��B׼W;.���ۻ���v��,��������������r���I������Q�ABQQBp�s�v���H�j���)�O��wppvwppv����������>��yɠv�2�,�u�B������d���ٌ�d  � ��fGTUGG�U������T�G>��wrrwwrrw������䀈�T�]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���v��,�Iw��?�<�?�c����������`�֯����p�~xro�O@fT��������C�R���r���Q�j���Q�j���x�,�>��yɠv�2�,�u�B��?�<�?��dM���L�d����E�@fT��� ������`�֯���� p�~x�ro�O����]���N�'�d�2���2�d�'�N���`��B׼W;.���ۻ���@��4p�*�4��4���d����4�����4�����4�F��Q�lX���w����X�����*�������/��"��0��c�U�i�V�l���Q�Q���<� ���T�5��Ԡ���� "��8��0���ugfqsb��"����sebjqV����J���A��i� �W�m�4�+�`�c�1�.�i�������Z[JkU,C��������fS���"�D��!���J���A��i�����C� �H�(_^�m�4�+�`�c�1�.�i�������Z[JkU,C��������fS���"�D��!���J���A��@��i�@�/��@�>��@�+N0N���l�m�4�+�`�c�1�.�i�������Z[JkU,C��������fS���"�D��!�����7v���A��i�#��#�A,C��������fS���"�D��!�m�4�+�`�Q��$�Lse>�������}vw|}s{z��g9w��~����ͱq�b���������Z[JkU���J���A��1��i�����	�1�0�	�1����8ZP�m�4�+�`�c�1�.�i�������Z[JkU,C��������fS���"�D��!���J���A��d��i��d��TN``NN�`�ȶ���`�N����m�4�+�`�c�1�.�i�������Z[JkU,C��������fS���"�D��!ʋ�7�
�8��d���h��Q�Q���{�-� �g�g�*��w(�8���@��KA,"��7�� ��8��d���i��Q��*� ������{�.� �g�g�+��v'����� �����@��KA,ʋ�7�
�8��@��d���h��/��@�>��@�+N0N��y�r�Q���{�-� �g�g�*��w(�8���@��KA,"ʋ�7�
�8����dR����h �����������+7�Q���{�-� �g�g�*��w(�8���@��KA,"{��4��4��4��d����4���Q���4�����4���@��<��-��<��k�D�X����Z��8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,�T%�2{��4��4��4��d�����C� �H�(�~�g�4���Q���4�����4���@��<��-��<��k�D�X������C� �H�(va��8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,�T%�2{��4��4��4��;��d,�����#�.k�wun�nw����%��J��������4����Q���4�����4���@��<��-��<��;��k�D�X�������.k�wun�nw����%��J������&�h��8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,�T%�2{��4��4��4��@��d��/��@�>��@�+N0N�����4���Q���4�����4���@��<��-��<��@��k�D�X���/��@�>��@�+N0N���i��8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,��T%�2{��4��4��4��1��d�����	�1�0�	�1����8�y�u�4���Q���4�����4���@��<��-��<��1��k�D�X������	�1�0�	�1����8pS��8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,��T%�2{��4��4��4��?��d �@��@ ����>YghYY�g������g�Y��^YghYY�g������g�Y�L�!�4���Q���4�����4���@��<��-��<��?��k�D�X��@��@��h�>YghYY�g������g�Y��^YghYY�g������g�YC�x�8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,��T%�2{��4��4��4��d��ds�d ����TN``NN�`�ȶ���`�N���7�4����Q���4�����4���@��<��-��<��d��k�D�XT�d����TN``NN�`�ȶ���`�N�����8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,�T%�2{��4��4��4��d�U�� �H�CQ�����g�4���Q���4�����4���@��<��-��<��k�D�X��2�� �H�CQ���a��8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,�T%�2{��4��4��4����dJ�� ����������B���4����Q���4�����4���@��<��-��<����k�D�X*����]�������C@��8�A�J�N�q�<pXD<��<�@� ����=�*ti9jGP\�������B�-��Bgs�����ƻ�}t���,�T%�2}�_�=v�_�2��2��3��d�7�~����3���Q�3qdydcI�x�������X�x�}}�����������2�����2���@�_�=v�V�<�"v���-��<��k�D�X��  ���k#���������������=�*ti9jGP\�������B�-]��Bgs�����ƻ�}t���,�T%�2�8�A�J�N�qn�<pXD<��<�@�����sfyedI�x��������Y���x}};�v���4� �4��d�����4���Q�d�����4��� ��v���4��B��e������xr���?�M&�,�9!(�,�_�e�����4����������B��A!w��i���G������?zed�n%>��������m]���
�#��A�� �v�9�,�a�b�4�-�m����������B�9���v���A!w��i���G V�����'jm_v]-D��������m]���
�#��@�	�� �r�9�,�a�b�*�-�a�Ǡ��6]�,V����B��A!w�B�;��i~���W�G ���������k�wunnw����%��J�����?zed�n%>��������m]���
�#��A�� �v�9�,�a�b�4�-�m����������B�9���v���A!w�B�;��ii���l�G  ���	�������k�wunnw����%��J�V@�$��@�'jm_v]-D��������m]��@�
�#�@�@�	�� �r�9�,�a�b�*�-�a�Ǡ��6@]�,V@����B��A!w�M�1��i���G��������8��	�1�0�	�1���'�?zed�n%>��������m]���
�#��A�� �v�9�,�a�b�4�-�m����������B�9���v���A!w�M�1��i���G��������8��	�1�0�	�1W���$��'jm_v]-D��������m]���
�#��@�	�� �r�9�,�a�b�*�-�a�Ǡ��7]�,W���Jv�V�B��A!w��i��P��G������?zed�n%>��������m]���
�#��A�� �v�9�,�a�b�4�-�m�����������$TceTn�q�y[�	���	������_�Z��Jv�V�B�9���v���A!w��i��P��G  �����ˀ�'jm_v]-D��������m]�ǀ�
�#ˀ�@�	�� �r�9�,�a�b�*�-�a�Ǡ����]�,������'TceTn�q�y[�	���	������_�Z���B��A!w�?�d��i��d��G ����ȶ���`�NN``NN�`�����?zed�n%>��������m]���
�#��A�� �v�9�,�a�b�4�-�m����������B�9���v���A!w�?�d��i��d��G���	��ȶ���`�NN``NN�`�W��$����'jm_v]-D��������m]����
�#���@�	�� �r�9�,�a�b�*�-�a�Ǡ��7�]�,W��ߠv���5��w��d���d�h�Q�d�������d�Q�d�������D�v���5����S��d���d�������9���d�;�����d�;9������d�������d���d3���ߠv���5��w��1��d���d�����	�1�0�	�1����8�����Q�d�������d�Q�d�������	�v�Qw��d���Q�d�Q�K��4��4�.�d������4�C�4����4�C�4��I��C�%v���:��d���fx���Q�d�Q���Q�T�:�����\sseeS��V,�A��`��0���-���CI�4��:�4�4�.�d�X�el�m�Q�C\�4����4�C�4�������4�T�:���"\rseeS��V,�A��`��0���-�	�v�Qw��d�����C� �H�(����Q�d�Q�K��4��4�.�d�������C� �H�^�g��4�C�4����4�C�4��	�v�Qw��;�W�dW� ��k�.k�wunnw����%��J������D�.�Q�d�Q�K��4��4��;��W�dW� ����������k�wunnw����%��J����j��4�C�4����4�C�4��	�v�Qw��1��d�����	�1�0�	�1����8����Q�d�Q�K��4��4��1�.�d�^�����8��	�1�0�	�1���u��4�C�4����4�C�4��	�v�Qw��?s�@2�d2�@���>�YghYY�g�软���g�Y�^YghYY�g�佯���g�Y��>�Q�d�Q�K��4��4��?��@2�d2�@ ��1�������g�YYghYY�g���^�����g�YYghYY�g�Ȏ�v��4�C�4����4�C�4��	�v�Qw��d��d�7�TN``NN�`�ȶ���`�N��T�Q�d�Q�K��4��4��d�.�d����ȶ���`�NN``NN�`���g��4�C�4����4�C�4��	�v�Qw��d���� �H�CQ���+���Q�d�Q�K��4��4�.�d�g���( �H�CQ������4�C�4����4�C�4��	�v�Qw����d�������������Q�d�Q�K��4��4��������d ��'�������������4�C�4����4�C�4��	�_��v�Qw��d ���Bx~|�����������Q�d�Q�qdxdcI�x�������K�_�=v�_�4��4�.�d"�x������4�C�4����4t��rfwbcI�x�������Y�x}}�����������4x��	�v�Qw��?�<�?s�c�dd����E�@fT���䦓����`��֯����p�~x�ro�O�G�E�Q�d�Q�K��4��4��?�<�?��c�dd� ��p����`�֯����p�~xro�O@fT��ꦓ����"����4�C�4����4�C�4��%��C��:���f���Q�T�:����\sseeS��V,�A��`��0���-�%��C�i�:���e���Q�T�:���"\rseeS��V,�A��`��0���-�%��C��:��1���f�o���	�1�0�	�1����8�?J�T�:����\sseeS��V,�A��`��0���-ɠv�Qw��d�������4������������d�Q�d�<����Jv�tv�Qw��d��P������4������������d�Q�d�<���7����fTceTn�q�y[�	���	������_�Z���B��w��d���B���d�Q���B���B��w��d�����C� �H�(������d�Q���B���B��w��d��P���B�����d�Q���f����	������_�ZTcdTo�p�z��Jv�_�B��w��dL�P����B�����d�Q�����fTceTn�q�y[�	���	������_�Z���B�r�O�
w��d��O���B���d�Q���B��-UddUS�e�²���d�T"��B�w�Ew��d���B���[�>�i��c�Y�d��$m��ϟ�����_�v�Qw��K��� � �� ���Q�s�=��=��s�Q�K�3�!����!���3�i�v���O�&w��d�k�g�l�g���Q�&�=Uc0��j@�(4�Ec_F��d�Q�d�ں�όʰ[C��g�ں�όʱ[C��g�O�00��ߠv�Qw��S���R�h�Q�R�����F�Q�S����ˠv���O��d���g�r�Q/�Bb]C��d�Q�d�۾�ٌ͵[C��g�O�0-��#ߠv�Qw��S���R�����C� �H�(�����Q�R�����F�Q�S����ˠv���O��d���g�T�����C� �H�FX/�Bb]C��d�Q�d�۾�ٌ͵[C��g�O�0-��#ߠv�Qw��@��S���R�C�/��@�>��@�+N0N��"�/�Q�R�����F�Q�S����ˠv���O��@��d���g�����>��@�+N0N��+���r/�Bb]C��d�Q�d�۾�ٌ͵[C��g�O�0-��#��Jv�tv�Qw��S��P��R�h�Q�R�����F�Q�S�����E��fTceTn�q�y[�	���	������_�Z��Jv�tv���O��d��P��g��r�Q/�Bb]C��d�Q�d�۾�ٌ͵[C��g�O�0-��#�2�vTceTn�q�y[�	���	������_�Z��p�C�v�Qw��S���R�h�Q�R�����F�Q�S����d�twdpf��cD�0l��z��)������p�C�v���O��d���g�r�Q/�Bb]C��d�Q�d�۾�ٌ͵[C�dwwgrj��gG�0l��z��(�����O�0-��#ߠv�Qw��?�<�?��S^���^�R����E�@fT��榓����`�֯����p�~x�ro�O�+�E�Q�R�����F�Q�S����ˠv���O��?�<�?��dS���:�g �������`�֯����p�~xro�O@fT���榓����
�/�Bb]C��d�Q�d�۾�ٌ͵[C��g�O�0-��#��B��B��i���i�%�W�p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;��������B��B��i���i�����C� �H�(a^�p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;��������B��B��;��i|�����i ��P�.k�wunnw����%��J�������:�k�p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;��������B��B��1��i���i�����	�1�0�	�1����8\P�p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;��������B��B��?��ip�@��@��i ����>YghYY�g������g�Y��^YghYY�g������g�Y�/�{�p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;��������B��B��i���i���� �H�CQ���^�p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;��������B��B��i���i�J��)�5�I�%����)�5�I�%�0^�p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;��������B��B����i�����i ����������.=��p�6�*�b�c�6�-�p�p�6�.�b��a�6�+�p��B��>!!A<//;�������3v��B�'v���B�w��i���i������f$��vv�u�p�6�*�b�&���QZ����և�����p�6�.�b�(7��������������h�t���1�L�
���j�WN!A</��B��B��?�<�?��ip�����i����E�@fT��榓����`�֯����p�~x�ro�O����p�6�*�b�c�6�-�p�p�6�.�b�a�6�+�p��B��>!!A<//;�������:��4�4�:��4��=�4�4��i���d����4�����4�����4�2�p�5�+�]�^�7�'�n�<v���;*�+C�������{�v�Q�4�T�4��d�Z�Y��Q�Q�d�Q��I���;�3#��I��4�ɯiNLgiM'��v��2�P�3�w��d�T�j������d�Q�d���J���4�+���J����P�ĭhROigR��@�-���B��i���i�}�la_xmps��x�����,�a�6�+�p�p�6�*�b�\�+�)�e�'��K��ު�����P������>!!A<//;���v�v���B��i����i|�����a�6�+�p�p�6�*�b�L��"�Ln����|�P���$�N��\��Q�b��������>!9_ILr��v�Q�4�T�4��d�m�Z�j���"�y׶����3� ��P���Q�d�Q���4�T�ɯiNLgiM��v�Q�4�T�4��d�m�Z�7�����C� �H�[�����"�y׶����3� ��P���Q�d�Q���4�T�ɯiNLgiM��v�Q�4�T�4��@��d�m�Z�����>��@�+N0N��+���.���"�y׶����3� ��P���Q�d�Q���4�T�ɯiNLgiM��Jv�tv�Q�4�T�4��d��P��Z��V�"�y׶����3� ��P���Q�d�Q���Q�_���T�ɯiNLgiM�w�TceTn�q�y[�	���	������_�Z_��6��7��k�+�k���Z�C�5�����!ko|_C�	��C=�2F��a��1���)���N�������fb���4�?�� _��6��7��k�+�k�����C� �H�(Ua�C�5�����!ko|_C�	��C=�2F��a��1���)���N�������fb���4�?�� _��6��7��@��k�+�k��/��@�>��@�+N0N���i�C�5�����!ko|_C�	��C=�2F��a��1���)���N�������fb���4�?�� _����8v���7��k��k�k�����������fb���4�?�� �C�5�����!ko|_C�	��C=�2��O� c�d=�������}vw|}s{z��g9w��~����ͱq�b������������N�_��6��7��1��k�+�k�����	�1�0�	�1����8OS�C�5�����!ko|_C�	��C=�2F��a��1���)���N�������fb���4�?�� _�Jv�Y�6��7��kv�P{�k�����������fb���4�?�� �C�5�����!ko|_C�	��C=�2F��a��1���)���N�����TceTn�q�y[�	���	������_�ZD�v���:�e�e����:���:�_���e����v�Zw���d�9��*�����nV,��0��şʕ���d��Ɂ�x�pD�v���:���L�����e ��n�������J���:���:��_���e����v�Zw���a�����d ����������l�2�*�����nV,��0迥şʕ���d��Ɂ�x�pD�v���:��@�e�e��/��@�>��@�+N0N�����:���:�_���e����v�Zw��@���d�����>��@�+N0N��+�����*�����nV,��0��şʕ���d��Ɂ�x�pD����<v���:�e�e��Q���:�_���b9�������}vw|}s{z��g9w��~����ͱq�b�������`�����<v�Zw���d����9��*�����nV,��0��şʕ���b9�������}vw|}s{z��g9w��~�����ͱq�b�����Ɂ�x�pD�Jv�tv���:�e�e�`�P���Q���:�_���e���`�����TceTn�q�y[�	����	������_�Z��Jv�tv�Zw���d�b�P��9��*�����nV,��0��şʕ���d��Ɂ�x�p�����TceTn�q�y[�	����	������_�ZÂ�B��w��d���d�W�Q�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��g���d�T�Q�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w��d���d�����C� �H�(��X�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��g���d�E�����C� �H�7X�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w��;��dV���U�d ��B�.k�wunnw����%��J�������.�q�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��;��gX���M�d ���������k�wunnw����%��J����U�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w��1��d���d�����	�1�0�	�1����8��K�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��1��g���d�������8��	�1�0�	�1��J�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w��?��dJ�@��@I�d ����>YghYY�g������g�Y�^�YghYY�g�򽯯��g�Y��x���d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��?��gL�@��@A�d ����������g�YYghYY�g��^�����g�Y�YghY�Y�g���pI�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w��d���d�t�� �H�CQ���X�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��g���d�����( �H�CQ���A�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w��d���d�<��)�5�I�%����)�5�I�%�8Y�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��g���d�������)�5�I�e�%���)��k�|�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w����d���d���������n7�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w����g���d���������f7�d�;XU=�Ia����g�O�0�%�#�Դ����d��_�=v�V�B��w��d���e~�X�Q�e�)9ZZFET���)�d�)�N���]��tg{ffI�x�������X�x�}}�������������� ��_�=v�_�O��w��g���d�_� ��&Bx}}���������|��Q�d�;XU=�Ia����g�O�0�%�#�Դ���z�rfwbcI�x������Â�B��w������d���ى�d ���fGTUGG�U������T�G>��wrrwwrrw����������\�d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w������g���ف�d ���r�����T�GGTUGG�U��;��wrrwwrrw����������\�d�;XU=�Ia����g�O�0�%�#�Դ����dÂ�B��w��?�<�?��d�O�I�d����E@fT��즓����`�֯����p�~x�ro�O�(���d�)9ZZFET���)�d�)�N���]�\���Nˋ�O��w��?�<�?��g�Q�A�d �������`�֯����p�~xro�O@fT��즓�������d�;XU=�Ia����g�O�0�%�#�Դ����d��v�Qw����u���Q�i�4�y�4�y�r���Q�(��l�Wv�Qw���p��z�Q�i��	�y��y�_��	�x��y�r�x�Q�j��S��S�`��B��w��d�p�d�o�e���Q�e�8Ga[KKZ���8�d�8G�^[LK\���8�d�8�=���9��ҺD��X��7���=�(��l�Wv�Qw���p�J���C� �H�(�����z�Q�i��	�y��y�_��	�x��y�r�x�Q�j��S��S�`��B��w��d�p�d�o�e�����C� �H�(�vX�e�8Ga[KKZ���8�d�8G�^[LK\���8�d�8�=���9��ҺD��X��7���=�(��l�Wv�Qw��1���x�U���	�1�0�	�1����8�����z�Q�i��	�y��y�_��	�x��y�r�x�Q�j��S��S�`��B��w��1��d�p�d�o�e�����	�1�0�	�1����8�pJ�e�8Ga[KKZ���8�d�8G�^[LK\���8�d�8�=���9��ҺD��X��7���=�(��l�Wv�Qw��?���@��@x�-�>YghYY�g������g�Y|�^YghYY�g������g�Y���>�z�Q�i��	�y��y�_��	�x��y�r�x�Q�j��S��S�`��B��w��?��d��@2�d2�@��e��s�>�YghYY�g�������g�Y�^YghYY�g�󽯯���g�Y�C���e�8Ga[KKZ���8�d�8G�^[LK\���8�d�8�=���9��ҺD��X��7���=�(��l�Wv�Qw���p���� �H�CQ���4���z�Q�i��	�y��y�_��	�x��y�r�x�Q�j��S��S�`��B��w��d�p�d�o�e�=�� �H�CQ����X�e�8Ga[KKZ���8�d�8G�^[LK\���8�d�8�=���9��ҺD��X��7���=Ġv�Qw�������y�����	�K��K���|����������\��\����v�Qw���d�]�r���s�c�)���-���d���w�n�d���BTv�8�F�w��d�}�d��M�Q�d��AZZDF_�����d���6� �&�ϱͶN<MW/K<��T|;��P��d��]���I��v�Qw���d�&�����C� �H�_�����s�c�)���-���d���w�n�d���BTv�8�F�w��d�}�d��;�����C� �H�:X�d��AZZDF_�����d���6� �&�ϱͶN<MW/K<��T|;��P��d��]���I��v�Qw��1���d�������8��	�1�0�	�1�������s�c�)���-���d���w�n�d���BTv�8�F�w��1��d�}�d��������8��	�1�0�	�1��J�d��AZZDF_�����d���6� �&�ϱͶN<MW/K<��T~;��P��d��]���I��v�Qw��?�8�@4�d0�@ ����������g�YYghYY�g���^�����g�YYghYY�g�������s�c�)���-���d���w�n�d���BTv�8�F�w��?��dD�@��@E�d  �����������g�YYghYY�g�� �^�����g�YYghYY�g����tI�d��AZZDF_�����d���6� �&�ϱͶN<MW/K<��T|�;���P��d��]���I��v�Qw���d�����( �H�CQ��� ���s�c�)���-���d���w�n�d���BTv�8�F�w��d�}�d������( �H�CQ���A�d��AZZDF_�����d���6� �&�ϱͶN<MW/K<��T|;��P��d��]���Iw��6��6���������6�����,���6��w��6������6����$�6������#�k��1����6���+��/���"�:��w��6��6�������C� �H�(���K����6�����,���6��w��6������6���������C� �H�1��������#�k��1����6���+��/���"�:��w��6��6��@��� �.��@�>��@�+N0N���������6�����,���6��w��6������6��@��������>��@�+N0N��+����������#�k��1����6���+��/���"�:��w��6��6��d���d���TN``NN�`�ȶ���`�N�������6�����,���6��w��6������6��d���d�����ȶ���`�NN``NN�`�����������#�k��1����6���+��/���"�:��/��������+��R�-�Z|����63wg2����Ș�ɫp^����BQ"�%�F������|O�Z���0��-]�Adu�������Zi|gub{��/�(�(���-�-�4��`�Y�^ �����^�L�eV�K�)*��;�?���,ɾ���TM�^����(Od��Ӳ��ƲZCBdZP/��������+��R�-�Z|�������C� �H�`63wg2����Ș�ɫp^����BQ"�%�F������|O�Z���0��-]�Adu�������Zi|gub{��/�(�(���-�-�4��`�Y�^�������C� �H��X�^�L�eV�K�)*��;�?���,ɾ���TM�^����(Od��Ӳ��ƲZCBdZP/��������+����;��R:�����Zy@����u������y�k�wunu@nw����y@%��J��]63wg2����Ș�ɫp^���@��BQ"%�F������y@O�Z���0��-z@]�Adu�������Zi|gub{��/�(�(���-�-�4����;��`M���0�^�@�������������k�wun�@nw�����@%��J��@��U�^�@L�eV�K�)*��;�?���,ɾ���Y@M�^�@���(Od��Ӳ��ƲZCBdZP/��������+��1��R�-�Z~�������8��	�1�0�	�1�dS63wg2����Ș�ɫp^����BQ"�%�F������~O�Z���0��-]�Adu�������Zi|gub{��/�(�(���-�-�4��1��`�Y�^��������8��	�1�0�	�1��uK�^�L�eV�K�)*��;�?���,ɾ���ZM�^����(Od��Ӳ��ƲZCBdZP/��������+��?��R.�@��@��Zz��_�������g�YYghYY�g�{ �^�����g�YYghYY�g���3Q63wg2����Ș�ɫp^����BQ"%�F������z�O�Z�����0��-|�]�Adu�������Zi|gub{��/�(�(���-�-�4��?��`A�@��@$�^����������g�YYghYY�g�� �^�����g�YYghYY�g����MI�^��L�eV�K�)*��;�?���,ɾ���Z�M�^�����(Od��Ӳ��ƲZCBdZP/��������+��R�-�Z|�����( �H�CQ�U�963wg2����Ș�ɫp^����BQ"�%�F������|O�Z���0��-]�Adu�������Zi|gub{��/�(�(���-�-�4��`�Y�^������( �H�CQ��f�A�^�L�eV�K�)*��;�?���,ɾ���TM�^����(Od��Ӳ��ƲZCBdZP/��������+����RX��5�Z z�U�������2?63wg2����Ș�ɫp^����BQ"%�F������yO�Z����0��-}]�Adu�������Zi|gub{��/�(�(���-�-�4����`k��N�^��u��������C7�^�L�eV�K�)*��;�?���,ɾ���YM�^����(Od��Ӳ��ƲZCBdZP4�_�=v�U�%v�x���+��R�1�Z�M�_ ����63wg1����Ș�Ȭq_�����AQ"o %�E�	�¤��_ N�qewccI�x��������X�x~}���������_ ����0��0���o Yj{eucct������{�_�=v�X�/�v��-�-�4��`�Y�^�S�  ����Bx}}���������Y ����^g L�eV�K�)*��;�?���,ɾ���U M�rfwbcI�x������g ����Od��Ӳ��ƲZCBdZP/��������+������Rn���K�Z  }����������T�GGTUGG�U��;��wrrwwrrw�������@��T63wg2����Ș�ɫp^����BQ"%�F������q@O�Z���@�0��-r@]�Adu�������Zi|gub{��/�(�(���-�-�4������`����d�^  �����������T�GGTUGG�U��;��wrrwwrrw�������@���\�^�@L�eV�K�)*��;�?���,ɾ���T@M�^�@���(Od��Ӳ��ƲZCBdZP/��������+����3�cw��R.���Z�T�  r`���%x ��`�r֯���qp�~xro�Ot`@fT��r`�������"63wg2����Ș�ɫp^����BQ"%�F������q O�Z�����0��-q�]�Adu�������Zi|gub{��/�(�(���-�-�4����3�cw��`A���$�^  �P���%���`�� ֯���� p�~xro�O�P@fT���P���������^��L�eV�K�)*��;�?���,ɾ���QM�^�����(Od��Ӳ��ƲZCBdZP������)����+����R���^n�$��KTzka��aO�@:/wh1����˙�ɫp^����@S"%�F��ճеnH��d��ݮ��"�jhax`Vc��|��X����N3�y�����dU���h�^dt�������Veuhyf������)����+����Rl�<�"`i��y����9�&��;GRyk`��aN�>63wg1����Ș�ʫp^�����AP$$�E��ֳѴlG��d�������dd^t`z����vY��Aeϑ�������ct�������[h|eub���4�-�-���0�Sw��^�Y�`��5��NWr^g���^|�z�^��^��r��*���;�>'��,X�"Qc��ӳ��ǲZCCdZO���4�~�8��`�����@���=�;���?����1�bzmxdUg��Я����wi��/��]0�����4�~�8��`�t�a�C� �H�(a_�@���=�;���?����1�bzmxdUg��Я����wi��/��]0�����4�~�8��@��`�����@�>��@�+N0N���j�@���=�;���?����1�bzmxdUg��Я����wi��/��]0�������8v��8��`���#�ibzmxdUg��Я����wi��/��]0���@���=�*�"�#xd=�������}vw|}s{z��g9w��~����ͱq�b����Ϻ�����4�~�8��1��`����	�1�0�	�1����8[R�@���=�;���?����1�bzmxdUg��Я����wi��/��]0�����4�~�8��d��`l�d �����N``NN�`�ȶ���`�N�����@���=�;���?����1�bzmxdUg��Я����wi��/���]0�����/�(�(���4�Sw��`�Y�^���z�^���fV�K�))��;�?���,ɾ���|M�^����(Od��Ӳ��ƲZCBdZP3��:�0��-w�w�w��U�<�l����m��(X[�R�L��:�w�s�q�d�0�=ŵa�^�`�kO�O�24��#�/�8�O���L�a�A��M�AYj��������l\[jmW�
��/�(�(���4�Sw��`�Y�^��P��8�z���fV�K�))��;�?���,ɾ���~M�^�z�UTcdTo�p�zZ�
���	������_�Z��K��Od��Ӳ��ƲZCBdZP���/�(�(���4��$�3��`�Y�^��A����L���^�S=�$�%�fV�K�))��;�?���,ɾ���jM�^������GOd��Ӳ��ƲZCBdZP1��)������[ ������@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�����a���"^i��y����9����<�D����=�:���H������cd^t`y����t_��9f͒���1��)������:����8)�[��������C� �H��_�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�����a�������C� �H��Y^i��y����9����<�D����=�:���H������cd^t`y����t_��9f͒���1��)��������;����4�[ ������������k�wun�nw�����%��J��\�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�������;��a0��� ������������k�wun�nw�����%��J���\^i��y����9����<�D����=�:���H������cd^t`y����t_��9f͒���1��)������@��:����8)�[��h���>��@�+N0N��+��q�j�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�����@��a�m���>��@�+N0N��+���^i��y����9����<�D����=�:���H������cd^t`y����t_��9f͒���1��)������1��:����8)�[��������8��	�1�0�	�1��[R�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�����1��a�������8��	�1�0�	�1�p�f^i��y����9����<�D����=�:���H������cd^t`y����t_��9f͒���1��)������?��@��@(�[��]�������g�YYghYY�g���^�����g�YYghYY�g��*P�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�����?��a$�@��@ ��c�������g�YYghYY�g���^�����g�YYghYY�g�?�h^i��y����9����<�D����=�:���H������cd^t`y����t_��9f͒���1��)������d�Z�d{�[�����ȶ���`�NN``NN�`��_�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�����d��aw�d �����ȶ���`�NN``NN�`���Y^i��y����9����<��D����=�:���H�������cd^t`�y����t_��9f͒���1��)������:����8)�[������( �H�CQ��L�:�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�����a�����( �H�CQ�b��^i��y����9����<�D����=�:���H������cd^t`y����t_��9f͒���1��)�������1��R�[��S�������)>�@���>�;���J�ݮ��"�jgbx`We��{��\�#��S4�y�����eU�6��)�������aM����X������?�z^i��y����9����<��D����=�:���H�������cd^t`�y����t_��9f͒���1�_�=v�X�)������\��W�[ }�����C����<�;���I~�����mbv_aH�x�������Y�x|������߳�"�jh`xaWe��{}���] ��P�����eU��?�����6�_�=v�X�)�����a��|�Z�Vjh_xa^i��y����9����<�D����=�:���H�����mav``I�x�������Y�x~}������޳�������t_��9f͒������v����1dw�w��\ ��������~�����_J�Q��2E�YA����\�����������v����1dw�w��] ��������~�����`J�Q��2E����]���������[�_�1��%�v�"�"�)��Q�M�\������\�P�hX�K�.%�/�3�#�ɼ���TV`iBSL��[H�d��k��F���-���Tf���ϰ��ð^F�Hf^SZ�_�1��%�u�#�#�)��Q�L�]������]�P�hZ�O�1%�.�3�#�"ĺ���TV_iGNR��`3� �?�`��L���-���Tf���ϰ��ï_F�Hg^S[�_�1��%�v�"�"�)����;��QR���� �\  �@�����������k�wun�@nw�����@%��J��@��U�\�@P�hX�K�.%�/�3�#�ɼ���TV`iBSL��[H�d��k��F���-���Tf���@ϰ��ð^F�@Hf^SZ�_�1��%�u�#�#�)����;��QK���%�]�@�����������k�wun�@nw�����@%��J���U�]�@P�hZ�O�1%�.�3�#�"ĺ���TV_iGNR��`3� �?�`��L���-���Tf���@ϰ��ï_F�@Hg^S[�_�1��%�v�"�"�)��1��Q�M�\��������8��	�1�0�	�1�bK�\�P�hX�K�.%�/�3�#�ɼ���TV`iBSL��[H�d��k��F���-���Tf���ϰ��ð^F�Hf^SZ�_�1��%�u�#�#�)��1��Q�L�]��������8��	�1�0�	�1�iK�]�P�hZ�O�1%�.�3�#�"ĺ���TV_iGNR��`3� �?�`��L���-���Tf���ϰ��ï_F�Hg^S[�_�1��%�v�"�"�)��Q��Pv�\ �����³�¨�s���	-:�	|v�snO�k����f�\�P�hX�K�.%�/�3�#�ɼ���TV`iBSL��[H�d��k��F���-���Tf���ϰ��ð^F�Hf^Sg�_�1��%�u�#�#�)��Q��P{�] �����³�¨�r���
-:�	|u�soO�j����g�]�P�hZ�O�1%�.�3�#�"ĺ���TV_iGNR��`3� �?�`��L���-���Tf���ϰ��ï_F�Hg^S[�_�1��%�v�"�"�)��d��Q��df�\ �����ȶ���`�NN``NN�`����X�\�P�hX�K�.%�/�3�#�ɼ���TV`iBSL��[H�d��k��F���-���Tf���ϰ��ð^F�Hf^SZ�_�1��%�u�#�#�)��d��Q��dl�] �����ȶ���`�NN``NN�`����X�]�P�hZ�O�1%�.�3�#�"ĺ���TV_iGNR��`3� �?�`��L���-���Tf���ϰ��ï_F�Hg^S{�v��E�w�fw��^�;�^��M��?PkOe���^�z�^���ɭ���iU���^����<��	��v��E�w�� � �A��^�;�^ ��M��?PkOe����� !���^�J>�� ����^���ɭ���iU���^����<��	{�v��E�w�fw��1��^�;�^�������8��	�1�0�	�1�n��?PkOe���^�z�^���ɭ���iU���^����<��	��v��w��d��d�b�^ ��7��N``NN�`�ȶ���`�N�������^����v��w��^�����^����v��w��^���a�C� �H�(������^����v��w����;�Y�^[� ��k���k�wun�nw�����%��J�������@�����^����v��w��1��^�����	�1�0�	�1����8������^����v��w��?s�@4�^6�@�����YghYY�g�软���g�Y�^YghYY�g�佯���g�Y������^����v��w��^���� �H�CQ���'�����^��c�^�1�v�sv��w��d��d�b�^��t�i�^  } �7��N``NN�`�ȶ���`�N��I]`NN�`�͹���]�I���w�����^�������^��hyzmxx��w\� u��������	��v��w����^�������������^���!�_�=v�tv��w��d��e�b�^ |�,��N_`NN�`�ȶ���`�Nz������^���qdxdcI�x�������Y�x}}�����������v��w������?��cwr�f�^g�  Ȁ���� @fT�Ѐ�Ā��������`��@֯����@p�~xȀro�O�D�����^��� �^�1�v�~w��d��t�i�^ x�:��I]`NN�`�͹���]�I�����^��hyzmxx��w\� u��������	�
�^�1�v�~w��^p�����^���dyxk�wx��w^�u���������
�^�1�v�~w��1��^x�����	�1�0�	�1����8�K�^���dyxk�wx��w^�u��������X�v��w�nw��^���Q��Q���\���[�f�x�*�7���^�z�^�&X����<v��w�nw��^������Q��Q���\���[�f�x�*�7���^�z��b<�������~uu�z|r|z���g9w�������ίp�c�����&Q�v��w��^�M���[�f�y�(�6�6�^���^�'����P��� �v�zw��^���z�^�z���B�-v��w��^p���z�^���+�F�������}�:�zz�{pw��� �v�zw��^���'�C� �H�(����z�^�z���v�zw��^��P���z�z�^�z��FTcdTo�p�zZ�
���	������_�Z� �Jv�tv�zw��^���z�^�z�^.fTceTn�q�y[�	���	������_�Z���v�p�O��w��^��O����z�^�z����+SeeST�e�±���e�T�ݠv��w�nw��^�����i�?u�p�^���f������^��v��=�=�E��^�5�^�4�^�����6Ka?h�nJ�6AQkPf���^���^���ɬ�����iU���^��ɬ�����iU���^���=��v�v��=�w��^�;�^��H��?PkOe���^���^��ɭ���iU���^����;��v�v��=�w��^�;�^��,�����C� �H�D`?PkOe���^���^��ɭ���iU���^����;��v�v��=�w��@��^�;�^������>��@�+N0N��+���i?PkOe���^���^��ɭ���iU���^����;��v�Jv�tv��=�w��^��P|�^��H��?PkOe���^���^��ɭ���iU���^����;���7��TceTn�q�y[�	���	������_�Zv�^�1�v�sv��=�w��^�;�^n�H��?PkOe���^���^��ɭ���iU��hxznxx��w\� u���������n�;��v�v��=�w����3�cw��^.�����^  �����%� ��`��@֯����@p�~xro�O� @fT����������� �	"?PkOe� ��^���^��ɭ���iU���^��� �;��S��0���4��`�Y�`�����K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S��0���4��`�Y�`���a�C� �H�(Y_�K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S��0���4����;��`?���>�` ��
���k�wun�nw�����%��J��������C�j�K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S��0���4��1��`�Y�`�����	�1�0�	�1����8SR�K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S��0���4��?��`3�@��@2�` ��q��YghYY�g������g�Y��^YghYY�g������g�Y�&�z�K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S��0���4��`�Y�`�;�� �H�CQ���_�K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S��0���4��`�Y�`��h�)�5�I�%����)�5�I�%�9`�K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S��0���4����`]��\�` ��g�������%>�K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ��S���v�/�$w��w��S�t�RV���6;Nb�V�{z�y�K���=��-�dY�-����������K���<�H�������f޷���;���s�~��������s�f]7^UHS��0���4������?��cw��`3���2�`  � ����Р@fT��Ġ����� ��`��@֯����@p�~x� ro�O� ����K���=�<���K�K���<�=���K�4ƲZCBd[POd��Ӳ���Ʉ�)�)�0����4����`���^n�Q��;MnXa�_J�5�K���=�<���K�̨��Y��n��ޮ���"�jgax`Uc��{�
n�X����N1�y�����dU��d�AOd��vӲ��ƲZCnBd[P�ф�)�)�0���4����` ��s�"^i��y����9����<8�Jm`W�`H�4�K���=h�<���K�Ω��U��m��������cd^t`Xy����t_��9f͒������Od��hӲ��ƲZCXBd[P��Av�O�4���)�)�0��^�Y�`��5��NWr^g���^�v�^��^��r��*���;��>'��,X�"Qc��ӳ��ǲZCCdZO��Av�O�4���0�Sw��^�Y�`�5��NWr^g���^�<�^��^��r��*���;�>'��,X�"Qc��ӳ��ǲZCCdZO��Av�O�/���-�-�4��`�Y�^ �����^�L�fV�K�))��;�?���,ɾ������^����Od��Ӳ��ƲZCBdZP���v�tB�� ��q��TB�� ��q��^������^���^���η�~��JAPiOe���v�tB�� ��q��TB�� ��q��^��������C� �H�X�^���^���η�~��JAPiOe���v�tB�� ��q��TB�� ��q��@��^��&���>��@�+N0N��+���q�^���^���η�~��JAPiOe���Jv�tv�tB�� ��q��TB�� ��q��^�V�P������^���^���η�~��JAPiOe�(��TceTn�q�y[�	���	������_�Z�8�������M��S�����,G��N���Mzy�pOF��GM�X��q��"����N��p�������xe����A8�9�8�������M��S�d�a�C� �H�(Qa�,G��N���Mzy�pOF��GM�X��q��"����N��p�������xe����A8�9�8�������@��M��S�����@�>��@�+N0N���h�,G��N���Mzy�pOF��GM�X��q��"����N��p�������xe����A8�9�8����5v�<���M��K�S��u�������xe����A8�9�,G��N���Mzy�pOF��GM���`�qڅf@�������}vw|}s{z��g9w��~����ͱq�b���������N��p��8�������1��M��S�n���	�1�0�	�1����8LT�,G��N���Mzy�pOF��GM�X��q��"����N��p�������xe����A8�9�8�Jv�V������M\�P[�S��u�������xe����A8�9�,G��N���Mzy�pOF��GM�X��q��"����N��p���@TceTn�q�y[�	���	������_�Zk��"�+�"�:�*��^�,�X�-�X������>�'�1���^��Ȧ����oTTmoO�"��ձsYYhpDl�"��A����W�>�������� ��8����2�����] ��!�9�su�{oy���N����+�]�+@���m��H���Ř������2�����] ����9�tt�}mz���J����+�]����E���Ř������2������] ��!�9�su�{oy�����������+�]�+@��N@��I��H���Ř������2������] ����9�tt�}mz�����������+�]����E���Ř������2�v� �����]��P|�A��TcdTo�p�zZ�
���	������_�Z�-�Zoy���N����+�]�+@���m��H���Ř��g��su�{����2�v� �����]��P|�@��TcdTo�p�zZ�
���	������_�Z���Zmz���J����+�]����E���Ř��g��tt�}������8v����]x�p��������g��su�{oy���N����+�]�+@���m,�M�z�d=�������}vw|}s{z��g9w��~����ͱq�b�������5v�v����]d� X���������g��tt�}mz���J����+�]��82�M�t�b9�������}vw|}s{z��g9w��~����ͱq�b����Jv�V�2�v� ���]��P�����Ř���g��su�{oy���N����+�]�+@���m���H����oTceTn�q�y[�	���	������_�Z���Jv�V�2�v� ���]��P�����Ř���g��tt�}mz���J����+�]�����E���ooTceTn�q�y[�	���	������_�Zl��=�1v��w��^�1�^x�����^���Mk`W�_n�����^��x��:��īŰ�:�^l��=�1v��w��^�1�^x������C� �H�X�^���Mk`W�_n�����^��x��:��īŰ�:�^l��=�1v��w����;��^-���(�^  r�����m �����u k�wunj�nw����r�%��J�����U�^��Mk`W�_n�����^��t���:��īŰ��:�^l��=�1v��w��1��^�1�^|�������8��	�1�0�	�1�mK�^���Mk`W�_n�����^��|��:��īŰ�:�^l��=�1v��w��?��^!�@��@��^ u�x�������g�YYghYY�g�z�^�����g�YYghYY�g���EI�^��Mk`W�_n�����^��y��:��īŰ�:�^l��=�1v��w��^�1�^x�����( �H�CQ�_�A�^���Mk`W�_n�����^��x��:��īŰ�:�^l��=�1v��w��^�1�^x�������)�5�I�e�%���)��@�{�^���Mk`W�_n�����^��x��:��īŰ�:�^l��=�1v��w����^�1�^|�m������<7�^���Mk`W�_n�����^��|��:��īŰ�:�^i�_�=v�V�F�(v��w��^�9�]�S�^�����]��n�OjcV�\m�����^����:�	�ƫǰ^8]�qdxdcI�x�������Y�x}}���������l��=�1v��w������^`���]�^  { ���������T�GGTUGG�U��;��wrrwwrrw�����������\�^��Mk`W�_n�����^��|���:��īŰ��:�^l��=�1v��w����3�cw��^ �����^  d����%q ��`�e@֯���c@p�~xro�Oi @fT�h��d������ ����^��Mk`W�_n�����^��c ��:��īŰ� :�^"�v��w����$�_���^&��'���d�^������Y�Dv��w��dp���Z���X�+��*���R-��)���a�Z���[����������C�w��[�'�[�(�\�?���\��Ynka]l�����[��Ynk`^m�����[���)�(�%�ߵʴL��a��#���)����Y�Dv��w��dp�-�a�C� �H�(�����Z���X�+��*���R-��)���a�Z���[����������C�w��[�'�[�(�\�9�a�C� �H�(� X�\��Ynka]l�����[��Ynk`^m�����[���)�(�%�ߵʴL��a��#���)����Y�Dv��w��1��dx�7���	�1�0�	�1����8�~���Z���X�+��*���R-��)���a�Z���[����������C�w��1��[�'�[�(�\�C���	�1�0�	�1����8�K�\��Ynka]l�����[��Ynk`^m�����[���)�(�%�ߵʴL��a��#���)����Y�Dv��w��?���@��@x���YghYY�g������g�Y|�^YghYY�g������g�Y�Q���Z���X�+��*���R-��)���a�Z���[����������C�w��?��[��@6�[7�@��\ ����YghYY�g������g�Y��^YghYY�g������g�Y�����\��Ynka�]l�����[��Ynk`^m�����[���)�(�%�ߵʴL��a��#���)����Y�Dv��w��dp���� �H�CQ�������Z���X�+��*���R-��)���a�Z���[����������C�w��[�'�[�(�\���� �H�CQ����X�\��Ynka]l�����[��Ynk`^m�����[���)�(�%�ߵʴL��a��#���)I�v��w�����'@�!�|�?���J���r��.��.�|�J���>���p-�_�8��w{�	�����]&������c�u���xsw�ppv��r7�b��x��ս��q�^�1��F��w��^�;�]�����]�jJiaT\l���~�^����:�	�ȭǱ;M[aFWA��W[�d��n��@����+-�_�8��w{�	�{�a�C� �H�(��X�]&������c�u���xsw�ppv��r7�b��x��ս��q�^�1��F��w��^�;�]������C� �H�X�]�jJiaT\l���~�^����:�	�ȭǱ;M[aFWA��W[�d��n��@����+-�_�8��w��1{�	�����	�1�0�	�1����8��K�]&������c�u���xsw�ppv��r7�b��x��ս��q�^�1��F��w��1��^�;�]�������8��	�1�0�	�1�tK�]�jJiaT\l���~�^����:�	�ȭǱ;M[aFWA��W[�d��n��@����+-�_�8��w��?��@��@��^��YghYY�g������g�Y��^YghYY�g������g�Y�e���]&������c�u���xsw�ppv��r7�b��x��ս��q�^�1��F��w��?��^#�@��@$�] ��z�������g�YYghYY�g���^�����g�YYghYY�g���LI�]�jJiaT\l���~�^����:�	�ȭǱ;M[aFWA��W[�d��n��@����+-�_�8��w{�	�(�� �H�CQ����X�]&������c�u���xsw�ppv��r7�b��x��ս��q�^�1��F��w��^�;�]�����( �H�CQ�f�A�]�jJiaT\l���~�^����:�	�ȭǱ;M[aFWA��W[�d��n��@����+���+���,������<��|�,�~��������+�����+��.���,�������+������1�K����|�,�~�TN�0#�*� ������+���,����e�a�C� �H�(�X�?��|�,�~��������+�����+��.���,�����������C� �H���P������1�K����|�,�~�TN�0#�*� ������+���,��@��������@�>��@�+N0N�������|�,�~��������+�����+��.���,��@�����R���>��@�+N0N��+�n��������1�K����|�,�~�TN�0#�*� ������+���,��d�E�d����N``NN�`�ȶ���`�N�����|�,�~��������+�����+��.���,��d�E�d�����ȶ���`�NN``NN�`����P������1�K����|�,�~�TN�0#�*� �����v����*��2�0�dWw��\�>�d�b�^  � ����ȶ���`�NN``NN�`��nDA������\��Ҁ�����������~�����4�oa�d��1F�	�u���^����v����1��2�0�dWw��]�?�e�b�^  � ����ȷ���_�NN``NN�`��p���]��Ҁ�����������~�����4�oa�e��1F�	�u���^����v����1�w�w��\�H�^����A����\��������������~���4�oa�e��5B�����A�^�z�^���B�-v�v�����1�� Ȁ � �� �] �����yz�{pw���4�!��@�F�B�
?A��~���\�����0����������sd�8�+�F���������^��ȱ������c��XOxQ�3�������}s�94�]iKM�bԸ����f��h،O�(n��u��������my~x�v���Z������ ��d���	@J$&�I�	�	����?��	#��qdduqkjv��������*��w��������Q�j���Q���*������$��6��>������L�~�����L��9�[�d�,��O=�-�V��2�6���)�F�Y��������C'�>Y.FZ�*���6�1�������O�,��e��Av�V�=�1v��w��^�1�^�����^���Mk`X�^n�����^�v�^��Mώ�����:�^��v�'�!x�0���:���'���!�� >H0�^�R�_�������������b�'�:��'��'�:���+�/�+��i�b�j���W�a���y�z���a�^���z�y���^�+ԨT�*�*nSB@n��*�*������v���:��e���Q���:���-��6��=���m ����Z!(bH,��*��Э���zloqcjh��������6����������"��!���/�#�.���`���9�5�5�	�t�.���#�"��ũsZ[�lqRMP��V8�2V��g��;����G�-�Z�v�#�-�)w���U�����[�)�[�h�8����#�U�#��-/�!�U�!,��0�&�/��6��S��t�����6�p�.�����Ūs]Z�kpQLP��W9�1T��g��D���)� ��9^�Q��:�0�,��4��[�P�U��Z�_��%�s�k�	��V�5� ��*�2��CXqflꊼ����{m���&�O/�8n�!��pZVmpURo������/�v���6��K�����!�����K��,�����pZ��*�,�(����X�3�C�<�C�3�X ����Z�0%B�S�R�h�=jYE>��;�H�H����]�C���������	%��2��¨t_antTTn���������̮pYZhqJJh������Q��4��,�0�:��U�P�[����_��%�s�k�	��V�5� ,�*��.�Ӿ���,�ZV'UY��d<�&g��s���!Vn������ħk][lmS���,���,��i�b�j�����S���L�N���S�S���N�L���S�,ʲQ+*dQLKc��������v�G�:��e�������:��G�(��5���;���n �����)1hO3��*��Ǫ����zxwots�j�j��w�5�l���Ϳ���+�����/�#�.���`�����5�5�	�t�.���#�"��ĩsZ[mqRMP��V8�2V��g��<����G�-�Z<v�#�-�)w���U���X�[�)�[�h�8����#�U�#��-/�!�U�!,��0�&�/��6��R��t���K��6�o�.�����Ūs]ZlpQLP��W9�2T��g��D���)� ��9^�Q��:�0�,��4��[�P�U��Z�_��%�s�k�	��V�5� ��*�2��CXqflꊼ����{m���&�O/�8n�!��pZVmpURo������/<v���6��K���`�!�����K��,�����pZ��*�,�(����X�3�C�<�C�3�X ����Z�0%B�S�R�h�=jYE>��;�H�H����]�C���������	%��2��¨t_antTTn���������̮pYZhqJJh������Q��4��,�0�:��U�P�[����_��%�s�k�	��V�5� ,�*��.�Ӿ���,�ZV'UY��d<�&g��s���!Vn������ħk][lmS�Ƞv�Qw���=���Q���Q�P����g��<� ��!�����/�(�����!�8�n� �����Q���Q�P�H��GKrbM�*��������|||uyx��-�+6����5���������H�1�i��F+��3� ��!�������!�8�n� �����Q���Q�P�'��K����x���2�c�9�x����S������F+�������������;����Q���Q�P��:�����)��(6=D���~rr{~kef��kS$i��u������a�S�����K����]���2�c�9�]����S���w��Dv�?����<� ��!�����
��
��� ����!�8�n� �}�����Q���Q�P�%��(J_Gj�h�v�@[wma^A�Z��ռ׷o�`��������}��J�&�3��~t��u{lmz��}������@�:��}qpxfgx����������Dv�?��d����������~���
��
��  oH��Q���Q�P��:�����)���(6=D���~rr{~kef��kS$i��u������a�S�����"(J_Gj�h�v��[wma^A�Z��ռ׷o�`��Ч�������J�&�3��~tu{lmz���������:��}qpxfgx����������Dv�?��d��������,�w���
��
�����E���C�������ً���~tqz~kdg��kS#k��t������G�"�}���O�n���Q���Q�P�%��(J_Gj�h�v��[wma^A�Z��ռ׷o�`��������O��J�&�3��~t��u{lmz��O��������:��}qpxfgx����������Dv�?�����7#����=���
��
��� �{���-������ �7�v����&������Q���Q�P�&��(J_Gj�h�v� [wma^A�Z��ռ׷o�`��@�����v��J�&�3��~t��u{lmz��v������ �:��}qpxfgx�����������i����'��y�;�=8���8������=�� ��bJIob^]o��̧���6�v�����!��!�7�n ��ǋ��g�����/�( ��c�=GKrbM�*��������|||uyx��-�+6����5����������H�1�݅���������� ���������*��(6<D���rq{~kef��kS$j��u������a�S�����F+��x���x�FK����`���2�c�9�`����S���ǅ��������,�E���C��������tpz~kdg��kS#j��u������G�"u���� �����������=�74���9������S�5`l}xy��������y����fO�Vw����~ro|~ml|�������Ġv������{�-������7����&��������������
��
�� ��e�=(J_Gj�h�v�[wma^A�Z��ռ׷o�`���������J�&�3��~tu{lmz��������:��}qpxfgx�������������� �����B������@��$GR18�S෪���Z�msQhm��tU,t��}����n|��������}qq|~l����� �i����'��y�T�=9���7������=��!��bJIob^]o��̧���6��� ��!����!�8�n� �������g�����/�( ��c�VGKsbM�)��������|||uyx��-�,6����5���������H�1�������������� p��������)��(6=D���~rr{~kef��kS$i��u������a�S��������w�x��x�`K�������2�c9����S���������������,�E���C�������ً���~tqz~kdg��kS#k��t������G�"�}������������������V�74���9������S�5`l}yy��������x����fO�Vw����}rp|~ml|�����������7#���`�{���-�������7�`���&���������������
��
�� ��e�V(J_Gj�i�v�[vma^A�Z��ռضo�`���������J�&�3��su{�lmz��������:��}qqx~fgx��������������� �����B�������@��$GR19�S෪���Y�msQhm��tU-t��|����n|��������~qq|~l�6��� ��!����!�8�n� �������g�����/�( ��c�VGKsbM�)��������|||uyx��-�,6����5���������H�1�������������� p��������)��(6=D���~rr{~kef��kS$i��u������a�S�����w�(����a�[��9�ݶY�=\��'�/=�Y3�`:^�6ں�/���5v\������=���'�>�Q�Y�O��O��UddUS�e�ñ���e�S�������B�99PQ87�Q������Q�7�Q��P��P��Q��qTdeTS�d�ò���d�S��TdeTS�d�ò���d�S�Q8v��P��HTcdTo�p�zZ�
���	������_�Z���O��O��N��N��GUddUS�e�ñ���e�S�|TedUS�e�±���e�T�{TedUS�e�±���e�T�;��P��Q�O�T������J�T�J�����JETdeTS�d�ò���d�S�;���Q��T�O�Q��%��²���d�TSddST�d��'���I�T�Ig�����v�&����.w��g���-������.�%x�.���.�$x�.�|��{��z��y�&�$��&�y�&�%��&������{�����P��P��Q��HTdeTS�d�ò���d�S�i��P��3��/{�P�;�+h�N��1�dġ����{g�4��,�+���+��(�7���*31�-���|��TeeTS�d�ò���d�S�i�8�3��Q��NX�Q�@�*��/�����²���d�TSddST�d�����Q�vp`fw�������+�*���,s�(��J� �)���-��q�/����+��+�g�/���+�������+���@�/����+�g�/���+���P8v��P��Q���ò���d�STdeTS�d���TcdTo�p�zZ�
���	������_�Z��5v_��� ���'�=���' �`�������`��������)�e�-�f�)��H���������)<�\e��An��sa�-����n�A��f���)G{����s�H�Κ�������)�e�-�f�)��H�
�as����A�\��<�)ϛ{^*>�g�|H{sg?*^{{G�)������A���������)���)��G�����)�������)�������)���)�B�H���z���)�
���
�)�����zw��R�L�z7�\�-�5�5��-���IB�Z�-�5�5��-�����zw��R��z����-�5�5Z�-B��I����-�5�5\�-7�C�h�����h������h���-�-�h��-����������������������������������A������>����Q�6��Q��R�6��R��Q�7��Q��R�7�?��������!�Q�6��Q��R�6���R!�Q�6��Q��R�6�4������>����Q�6��Q��R�6�1�������� �Q�7��Q��R�7��#����P��P ���HTcdTo�p�zZ�
���	������_�Z��`TcdTo�p�zZ�
���	������_�Z���6���
�
�w��P��P0�r�R-:�	�|u�soO�j�³��P��r����
-X:�	�|u�soO�j�³��X��r����5���w��P��P`��QTcdTo�p�z�Z�
���	�����`�_�Zp�`TcdTo�p�z�Z�
���	�����p�_�Z�Q�Rw��P�r�R-:�	|v�snO�j�³�¨�s��Q�Qw��P��QTcdTn�q�z[�
���	������_�Z�Q8v��P��HTcdTo�p�zZ�
���	������_�Z�t�t��v��w�Kw��`��,��#�i�bzmxdUg��Я����wi��/��i�P�A��;�,�7��q7$�&��$�%�r�3�,�7ٞƸ�����2�Z�0nw��1�]�0��������z�����))؞hb�`�`c�xg*����)zi�db`�b�g%&����z����������#��$��������)T^���¸��¹^T�U]_T_�v�Sw�w��kt�+��k �����������fb���4�L�3�2��+�+��2��pB?� ����!ko|_C�	��C=�2��Y�g�{�7�+�1����������N�ق�J������A��k�{�AR[��m�f��������������%����h�������fS���"�D��"�E�'�'])<������������%8;��*��$�B�������Z\JkU���_�1����1��� �������~����dN�Q��1C}�~#A{��c�܆hxum�zu��{Y�s��|����ә���������Տ��������0����B��e���0��7��7�������va���-�R;�8�3/3�.OC���C�0���0|��q@�����w���d������N���d�)���-���d�O���A�-�U�Ix@�K��&�dx�&�9���9�����L��P�L�P��O�K�O���%�\�A��8dO������l��\�ݲ���n�}w\nj�H�8dN���������\�ݲ���n�}w\nj�H�L�{�O�K�O���%�p�A�:8dO���������\�ݲ���n�}wpnj�H�������B�99PQ87�Q������Q�7�L��?����?�8�?����YhhYX�h������h�X�����Y��nlYhhYY�g������h�X��5v_��� ���'�=���'�L�0�����Y�x�
��Y��Y�n��Y��L�����Y��d�!�Y�M�5�Y�M�!����L����Y�����Y�E�.�Y�E������7��Y��$���A����������(UULa�`V�+�2.���-����ʵL��U������3�����al������ưf[�YjgeO�Pf��j�������gYYlf`���$��f� ��(��'��C���eo�g��(RC�O�7���0<smMwx��nt�v�����)���P��p���բ�ƞ�����L�����Y�x�T�!�Y�M�5�Y�M�!����L����Y�x����Y�E�-�Y�E�������/��Y�������$���K������H�$�L�����Y�x����Y��L��.��.������1�����21�����1�������L�0�����Y���
� �'���,a��]��5n/���_��+���e��=Q��:�0�,��5��U�Q�Z���Z5,oaL��&������V(��oZ�E�"..��)� ,�5�V�	��q�m��"�Z��!ênZ\olRUm���������9v��� F��C��w���'��S��'����y�T�=9�����7��������=��W�\�T�Q���Q�P���R$��bJIob^]o��̧�������C�=8���8������=�� ��bJIob^]o��̧������9v��� F��C��w���'��S��'����'����y�T�=9�# ��7��������=��E \�T�Q���Q�P+ �R$��bJIob^]o��̧�������C�=8���8������=���\�=8���8������=���\ ��bJIob^]o��̧���\��bJIob^]o��̧���L����8w�W��x����7�8��8�8��8�8��8�L���w��W��x�g�7�0��0�8��8�0��0�7�Y�w��Y���Av���2��^�l�^�;�V�<� �<�^���l������3��w��x���2���3���2�k����U�H�S;��B���B��������B���'���������#���B���l���l���b�v��[�n���w���x���w��/������.��6v��*�|!��*��!����v������*p�|�_���*���*������*���Q�'���@��x�������"�H���߀�V�O���S�Q�����I�E����Z�`SBxR�G���K�M�'�+�I�]��&�N/eKew}�����]��\�@�> �����0� �������߀W��t�����(���H�H��v��īZN��KlUSVl��߀ƫ����� �f���85�1��2���h��'裮������e}hzlh�m�r�ܵۿ��3����:G Z�]�Q�DcMW/��5�#�͢����a�u������wkbko^qv������)Wd��������f�a�X{qo�ol6v�t��v�)��)��!����KF��8���;��1�)�t��t������9�������������E�S�(�0�M�M�'�.�R�S�)�0�M�N�(�-�R0�� ���� ��!� ���� �� �5'BF-,�E������T�uun}r_j��������zq����kW�[����R��������
��������E�S�(�0�M�M�'�.�R�S�)�0�M�N�(�-�R���� ���� �� �� ���� ��!�#���[�8� ���߹�7�K�������H[���{oo{{o�2�gv�����J�"�K��P�'�Ot���Jl�!4E)e�o�o�Mog]M�E���M|z�hSF��CtT��W��q��&����y�g�jŧ����E��|�������xe���t�;9�=rp����zrzwaYd�������k�����%�"���������������%������9�21�e2�e�2�9��k��B���B�k������������a��IUUII�V������U�I?��wsswxssw������������������>��x����;�*��M�M�*��;�:�*��M�����ZOX=d5:A��X������8�����9������4�����6�������ӭ���jW�������s���|��� �aH� �������Z-;D�8nf�w7Q�<��2��U��װ��S�gmec\cu�Җ���)��3�^�;�'��yr=M8`\��ᙡ��!�!�����9�!�!�M��5�M��!���!���4�U�]����\�]�\�B�4�B���]���H�4!��4�0�4�U�]����H�4�H�\�]�\�B�4�B�0�B�4�B�e�]�e�H�4�H���H������a�C� �H�(�����;���� P�w���k�wun`nw�����%��J�P�������@f�<f����@�>��@�+N0N�������G� �����Z)�������}vw|}s{z��g9w��~����ͱq�b����1w�����	�1�0�	�1����8�����?��?��?����YhhYX�h������h�X��^YghYX�h������h�Y���d��d�C��N``NN�`�ȶ���`�N���H������� �H�CQ�����I\�P�P�i�)�5�I�%����)�5�I�%�������������_�(�t�� `��k`o[[I�x�������Y�x}}����`���������������C��GTUGG�U������T�G>��wrrwwrrw�������������?��cw��� &���F@fT���������`�֯���p�~x&ro�O�O�Jv��P�fTceTn�q�y[�	���	������_�Z�������������������啪��`�ߕ�7�	��+
�^�+��]�^~���O �  ��� 0��� 0��� 0��� 0��� 0��� 0��� 0��� 0��� 0��� 0g��� ;� � � � � � � ;!  � ;� ;� ;p � ;p � ;p � ;p � ;p � ;p � ;p � ;p � ;p � ;p k ;: 0� � � � � � � � � �  ;k  ;F ; *p ;. *F ; *F�� *F�� *F�� *F ; *F�� *F  *F ; *F�� **��*��*��� ;� ;> ;> ;> ;> ;> ;R��� ;� ; ;� ; ;� ; ;� ; ;� ; ;� ; ;� ;" " " " " " " " " " a � ;� ;# " � ;� ;� ;� ;� � � � � � t � t � t � t � t � � 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0� 0���O��� 0O��� 0O��� 0O��� 0O��� 0������� 0���� 0���� 0���� 0���� 0� � � � � � � � _ � _ � _ � _ � _ � _ � _ � d � _ � _ � � � � B2 2 2 2 2 2 � c 1 � a f a f a f a f a f a f a f a f a f a f � m 3� � � � � � � � � � � B������D ;D =D =D��D��D��D��� ;D . /D��O��E��E��� B� � =O Bh 3O B� BO B� Br��
 =� =� =� =� =� =� =� � � � � � � � � � � � � B� B� � =� =� � 9      � 0� � 3� � 3� � 3� � 3� � 3� .� .� .� .� .� .� .� .� .� .� .R������ .���� .���� .���� .���� .y��]��� .]��� .]��� .]��� .]��� .1 2 1 2 1 2 1 2 � � 3�  � � ��K � B���� &� ] 7��� \ � &_ � � � &� ' 7��� \ � &_ � �  ���� � � � � � � �  � r � � � � � � �  � r � � � � � �  � r � ��� � !^ ! � ! � � ! + -� 	 � !� � � < < � l��P  r � #r ;� 8g 5m s  �  y 4y 4�� �� � � �  �  �  �  �   �  0 � � 	 ���2 ��� 3 3^ ! l��   K ���  K   5 �  �   � ;���k � : R: Rx � 6���� � 8 ���� U) F�  Q Q Q ^ "^  ^��^ ;^��f��^ G^ !^��^ ^ I^ 4^��   ^              y z} ~�      
 �� DFLT grek 2latn P     �� 
       ! ' - 3 9     �� 
      " ( . 4 :  CAT  0MOL  LROM  h  �� 
      # ) / 5 ;  ��   	     $ * 0 6 <  ��   
     % + 1 7 =  ��         & , 2 8 > ?aalt|aalt�aalt�aalt�aalt�aalt�dlig�dlig�dlig�dlig�dlig�dlig�dnom�dnom�dnom�dnom�dnom�dnom�frac�frac�fracfracfracfrac&liga0liga6liga<ligaBligaHligaNloclTloclZlocl`numrfnumrlnumrrnumrxnumr~numr�ordn�ordn�ordn�ordn�ordn�ordn�salt�salt�salt�salt�salt�salt�ss01�ss01�ss01�ss01�ss01�ss01�sups�sups�supssupssupssups                                                                                         	 
     	 
     	 
     	 
     	 
     	 
                                                                                                                                                              & . 6 > F P X ` h p x � � � � � � �    �    �     �     �     � �     �     �     �     �     �     � �     � �     �     �     �    �    �    � �  �     �� �        �� �     � / � & �  ��� � &  � �        � �        � �        � �       �     { }  �     z |  | �     
      " $ & ( * , . 0 2 4 6 8 : < > @ E G I K M O Q S U W Y [ f h j l n p r � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
 8HJLNP^`bdfikmoqsuwy{}���������� f �     
      " $ & ( * , . 0 2 4 6 8 : < > @ E G I K M O Q S U W Y [ f h j l n p r � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
 8HJLNP^`bdfikmoqsuwy{}���������� d �    
      " $ & ( * , . 0 2 4 6 8 : < > @ E G I K M O Q S U W Y [ f h j l n p r � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
 8EHJLP^`bdfikmoqsuwy{}����������� b  " ( . 4 : B L V ` h p x � � ~   � � ~ � ON ��� ���� ���� ���� ��� ��� ��� ��� ��� ��� �  
    c �  $ � � ~~����������   � �CM    �   _  ��    ��    �  �  ��    ��      �   s-   �  �     	      ! # % ' ) + - / 1 3 5 7 9 ; = ? D F H J L N P R T V X Z e g i k m o q � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	7GIKMO]_acehjlnprtvxz|����������  �    	      ! # % ' ) + - / 1 3 5 7 9 ; = ? D F H J L N P R T V X Z e g i k m o q s � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	-7CGIKO]_acehjlnprtvxz|�����������    � �M����������   _    s �-����������    
 �^ DFLT grek $latn 4     ��          ��      CAT  "MOL  .ROM  :  ��      ��   	   ��   
   ��     cpsp ncpsp tcpsp zcpsp �cpsp �cpsp �kern �kern �kern �kern �kern �kern �mark �mark �mark �mark �mark �mark �                                                                                            L�         
     p � � � �������������������� (6@JT^���(2<FPZdnx~����������������"(.4:@FLRX^djpv|��������������� $  ���  ���  ���  ���  Z��  Z�����  Z��  �� �� �� �� �� �� 7�� 8�� 9�� :�� ;�� <�� =�� >�� ?�� @�� s�� t�� u�� v�� w�� x�� y�� z�� {�� |�� }�� ��� ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z�� s��  Z�� s����  Z�� s��  Z�� s��  Z�� s��  Z�� s�� ! �� �� �� �� �� �� 7�� 8�� 9�� :�� ;�� <�� =�� >�� ?�� @�� Z�� \�� s�� t�� u�� v�� w�� x�� y�� z�� {�� |�� }�� ��� ����  ��  Z�� s��  Z�� s��  Z�� s��  Z�� s��  Z�� s  ������  Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z��  ���  Z��������  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z�� s    Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z��  Z�� \�����  Z��  Z��  Z��  Z�� ��� � � 9� M� � K� K� �  � E � T � ' � 8 �  �   ��� ��� ��� ��� ��� ����� 	�   ��    ��������������������                                      ����        ����                                              ��      ������                                      ��                                            ��      ��    ��                                          ��������    ��������������������������                         ��    ��                                  ��    ��    ��  ��                                    ����  ����  ������      ��                              ��        ��  ��������                ��                    ��                                            ��          ��                                        ��    ��    ��                                        [   ����   G   ����                  &      ��                                                   ������        ��  ����          ��    ��  ��    ��            ����              ��                            ��          ��                                              ��    ��          ��                              ��������      ����������  ����  ����    ��        ����������  ����  ��                                                ��  ������                                                ��                                           ��  ��      ��                                ��    ����  ��������������                             ��        ��  ��  ����                ��          ��      ��                                                          ��    ����      ��                              ����              ��                                  ����    ��        ��                       �   �� 
   ��      ��      ��      ��      ��      ������    ��    ��        ����  ��     |�      8 �8>>>>>>DJDJDJDJDJDJDJDJDJPVPVPVPVPV\\bbbbbhntntntntntntz������������������������������������������������������������������������������������������������  z      s   [   9   �   u   q   $   8   �   ~      g   S   .   K   m   "   2   4       �   =    �    �    �   Y   �    �   
    �      �  �� �  p      F Z \ ] s t u v w x y z { |  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �&'()*,-./012345689:\]_acehjlnp��������������  <              	 	                	    
 5 5  F F  Z Z  \ d  s | ! ~ � + � � D � � E � � F � � G � � H � � I � � J � � K � � L � � M � � N � � P � � Q � � R � � S � � T � � V � � W � � X � � Y � � Z � � n � � z � � { � � ~ � �  � � � � � � � � � � � � �!$ �&6 �8I �KX �Z] �__ �aa �cc �ee �g} ��� ��� �  
���������            ! 2  7 @  ] d # g r + } } 7 � � 8 � � L � � M � � N � � O � � P � � Q � � R � � S � � T � � U � � V � � W � � ] o% r', |88 �:: �<E �GP �  t             	 	                           5 5  F F  Z Z  \ \  ] ^  _ d  s |  ~ ~     � �  � �  � � 
 � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � � 
        	  !$ &* ++ ,, ;; <? @E FF GI KP QX Z[ \] __ aa cc ee gg 	hh ii jj kk ll mm nn oo pp qq ry z{ |} �� ��   �             	 	                           !  # #  % %  ' '  ) )  + +  - -  / /  1 1  3 3  5 5  7 @  A D  F F  H H  J J  L L  N N  P P  R R  T T  V V  X X  Z Z  \ \  ] e  g g  i i  k k  m m  o q  s }  ~   � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � � 	 � � 	 � � 	 � � 	 � � 	 � � 	 � � 	 � � 	 � � 	 � � 	 � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � � 
     !$ &* ++ ,, -8 99 :: ;; <? @E FF GH II KK L[ \] ^^ __ `` aa bb cc dd ee ff gg 
hh ii jj kk ll mm nn oo pp qq ry z} �� �� �� �� ��    	�� �� �� �� �� �� 	�� ��        7 @  Z Z  \ \  s }  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �               GDST              �  PNG �PNG

   IHDR         �?1  �IDATx���Yv9@R��3��hm�zAcˈ�Bev�)����q������2���Ns��Y���Q�M��+f���4W�_1����5B��Y�� �����П�������_�@�?��@�U �/*ED�~��T�@��X;Ų�ZVMH�`D�
��X� ����R,R �oi���@�{�=9�G��)����?�X���0i���
 �c�.H�dW �֤��fLz��fIT1�����5��7�\��g�G�zH�Ԧ߸���xo�!�x���k���m �_Ұc� ��9�Q�@c�W$r�@��5���8hc��w.�8Ac���g9z! �
0�Ow�cЧ �l��7
 �|�1� ���W0�@�y�K<�@��S��4*���Q㨴(���K��\^ ��f��� ��am�sa���D�H?U\�K
 �Tti���{ �~<���PU.��s���U� �ϥ��w �U+��?T�Y�H?��[�H?�U��w ��-��?]�
ީH?U��+ю���·�`��A���+ю�㟡�	�@����g@�c�� �ϰ����h;
����D� ��x�3��A���� �LdW\m ��] ���=�6 ��(��?��]�h�
���Զ� ��e�X��1��� ,���� �?����K<�Y̛H� DS �}/��Kzl�h
@�/p�aa��� �M��� ^ X�ϐ� DS �) ��/� B|��@4 �����0�oM�� DS �) ��D��| J���q�� DS �) ��h
 ��x� DS �) ��h
@4 �M�� DS �) ��h
@4 �M�� DS �) ��h�oPB��AAȦ DS �) ��h
@���i(d�H�|�+ ��h
@4 �����|�@4 ���x ķ�� DS �) ���k ��r�h
@4 ڗx`a��� ��{܂Xҫ`� DS ��R � �&�6 ��h��-�e��@���X��1��� D{W � ��%�6 ��(�%��6F� �������� D�T K��슫@�����ޠ� D�Q K����@�}�ֱp�� :�J\�X����X�L m �,�%� NF����;BW ��*�%@GU�wv� ]�
�+�*�������t�fꆭ�Hh�z̼�f,.uE�*o �"E��H��Py �%����8]�t�*�҅W ���@8�Mx.	�h��� ��L��Au��G���t�?�I�_�� �����~o�'2�^�_����c$�|Hx��n_��nĠ�A����5B :z�#��AF���r�4����6�q��P���{�7��`mC��b<x@�2�p�*�m�c�a�:��3ס5�b��4�����C� ���7�߸W��\��2E���7��D�\Úc<Y#�+K��i�#1�h&� OV�8&�P1k
5�k���]��Y` �Z���� OVAKkd�X� �\m��K�P�+���b�jP˪	)�-@�g���b�j�WB*��<i�{Qa(�
P��O�1(�	��/���CR�/�n�Y�� /�Q�}O6��f���6f����}%L����n����h��'J`	�$�    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/shell.png-3f1fd60968df623c4055312ee6946f4a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://shell.png"
dest_files=[ "res://.import/shell.png-3f1fd60968df623c4055312ee6946f4a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST�   O          '  PNG �PNG

   IHDR   �  O   ��    IDATx���oɵ�O79�6��њ�Y�Įn��z�-lby��˽O���1�>�
���@ �����F��!���CWP��r�D/5q��3��<yT�:]]=�c����h����:]}���Û��   O�>�� z����0�x���� ����G�ƣ��W�^��Ǐg5��������  `4=�\a��ۻs�N� �<y�6vvv�߿/��o����)4������/�eܕ�I�1���<x��y���X�nW�����v;�.�0�4�I`��cuJL��t�)S ���F��	��?�~�T�0T'�:`턂��NI��DjC� �wB*�~"����f[{{{ذ+���� `���?�
T� �>}�6�����]���t:�Î�B�ӹw�;+�(�d9���`�_�h4hĔ<8::�T�5�����~���L���]>_PhLu	�1�O�F�%#�r4A�Fv�����7����m4�ARc)؃ @��3cE[[[hd.��[>U�I�ȶ�n�݃ �5�XP�2Q��p?!�T;�'��]")[��x�H���}t����$�8��[���1��$?:�Z��z ��t��Θ)Cf 4 �(¬qw>1�0��|ʝ�tM4v:�4nmm�VH9�#n������7�,~������`�[|œ��R�r�᪷����~����>���?����P�d���� ��c��X�<~�d�yX���Ҝ��	^��GL�P�I�}x)PmL��iZ�?�W�<��6���uo=֮�'��q	5��7뫻k�%���:�y�����.P4D����S��H}����T�5,�B�<�z��Y
��_`(�}0��-���r�m�S�1UԯJ}�(�dnpKdQ	�h4�r���]t,A�a��L�� TK0�$�L�ay
����)�x&B��q�������� Y&�f�*:A]e�KA �xB���N����e�a����!�A���I�� ��%��0Y�'�qw^ᒍ�U�� T�NNN��)�ŵ��¹��H*g�LH#�;�'I�!����1��~�/;O����#}�<+���xA���3}�U?����*�����F�OX&�!G�5+~;Z�%|F�jnF|_V������v:����d��Q���5�����5mO[� č(�әf�$�.˟?��Oܡ����mq0�Q|9�4˄���F^
$���\���aj�	���'�>X`��B��	��~�� !����p&���U�jyp�����?�5��:Z����Σ�#g��,P���J�L0������nc�n��d���3o���b~B"�'�.~��(��
,��_H����\�	O��;���w*�U������_���FEћ7o
1v:&ܐF 899I2��cA���}0`��l���)0>)��o߾�/�T#V4i���O�<����*�  #�(�Ј=QI# �%� 0"�|@ܝ42��I5
����#<^���Tvn����`��\&�EF��q?�Fj����(��n����%�B�Gx����9�Ws/�u9�BD�U�7���!;L�xc���`����z'''��������C�5���㍋�n��w���	{��Ɲ�V���X���� �.�x=1�N�ջ�?����
B���ϱ����y#B���@�~R�KL����8<<�e��>����{�d��k7�FVdQ�P���.�����=���6���O�"�0|����~m��~�7�^����&�u:�[�����p#'��m�m�Oo�Ν;�U|<�v���~�!>����������U��*��h4�x�#�Q��0�N&����ˁ��{]?�l#�9#q8gy�_f��/g���ldm3
p��(�*�����R�E�>��Ϫ8���������_�.v�A/��Gk���Q�.7ӗԇ�?Mt����?�FR��O���������~�����h�J�c�DC�s��j�'jͮ��֐H��>��鴒ө����
�g��������ֈ��20�_&�c��>Ȃo�������Z[��^��o�x~~�n����O�J5]����ˍp��=mi�Y:��'?���_�~Ͷ��>kҦ�)v��{�. ������/ Obo͋'1 ��7[� ��w8�G����_�g,O `�zk����������V�������7o�G2cSw7�r	�.��w�$=a�ݮ,���aX��_��:s�={��?����,�z��|w ��[�,�W�֯�f(�7�����g?�3��\?y�d�A�FxQh��L�O2=a��ګ��)t�R�t�Q�ϵ�9P��	�����fϿ��1)�}�g�[�v�]4����i�O�-�����<�Y�&
�J�(��/�xD�ntHn���qQ3L3#����_v�?��,p�m� �����������-|��C=�ꀮ~���$�N����s�BX������21���(��5��	`����v1��U?Y���t�����sIs $�gϞ}���8'#���FAl�ۻ���h(c�~���D����)�(������A='����M?1M,I��'�Id��y[�o�����cv~�9L,,K'�>���U@���W��U?~#�((���i�">�U���#�E	��%�$���ã��I���}R���u����)D���~�䙓ڼ���O���I~'Q��V֓( E2�L#��������[ggg�T�l�4�a�	3~��Wş}���oq����@���c�Upww�m|��W�QH��2e�J����no��Ç՟J!DQ��������w���N�a��U9?}���O�/���'��o��8�v���o��8�v�����ֳK�+���2��q������y�����흮�*�%
�#>Է���^����mI� '�!����~��)`��!��������`�3:��D!�X������Ve|��,��<h���_Q=:��O��(;*Ck����0Ϸ��hZœ=��h��.��Qx�m���")��^�WWJ�i��'y�[����߅S��U�%1��+����I�~��D������g��F�a1Y&�ohv�;���w�b���]���:4]?!q�`#��]*d�4:��7>i��e�W&V|�'q��&��O�h��j�������Ċ��Q\��U�'e˼g�n|���K�*�.��O�8�y�7�iI]���ߍļg�C+�۵�2��ߺ���ϟ=}Z���B�_��\����AsՅ!�����b-VT��b	�+������N��
�n��ee��yo/ͮxM\�m-VTR�O�7=fӄ�7{�O= ��[$�m����~_�'}�b�<�w8����2L�ӹ���_H���$��F���7|�����FR������M��o����p=�$����c��/g���T^���o|�`{��¥�v>���Q��8����9۪�p�Zk�ok����$�X�ИO�ϸ	7��r�QWV��$m/��8�Q/I��r�'d39L��	���-~˟s}k4��%��,e���*�o��t�'8��kJ�Xq�M���֚���?4�l��5�� I�+��� �|:磔���%X�ߊ�K�
�ю��C|"ˑ']H����W�~bI�	{o�Ng ��E����'K��y4�9�BH�����i�"� r�SƋ���H�ڪ�|�Y�l�L���}+ⓦ�_�Y�Z�VeB�9���鱦����o�Re7Ϳ�*����5]Y'^�rR��ȬR0��"{��|:�]^Uv8�/���왆�\v�m��l�H��ՙ2��`52����������$)-����ή �.�� *���sq+�o���'��2g>�s��I̡��٪��S�~bV̯�����X��e����/��t2�����ĴR[L�����.�X|R�y&���r�q:%���h��L���n۱��_v\���{tR��2�Dj��7��īNqƗ�!�
��J� a��<�2ɗ�+�d�����z����R�����ࠂU�����̓������=|�pg{��}yp �/��s��ȉ�o��8�v���o��8�v��ʿ׃@󧤔���]�S�X�~Z,�b�*N��Ŏ^���2L�M�R�%���T�1��$����T.�S�X�~Z,7��U���N�է��ы:CE������1sg{{����U��E��]|R$^7oyơQ���Y�WpCW��N�%������]�B�'���k����w~�`a��S�[_�~������fz%�[��oŕ�K3�{]u�s���|�rL��u}�]����^Gn�U̶��HKPWǓF�R��U�J���=U�HݥV,QKp��0�z�'{�F+s���:���|E�YX1���Z}���0ݍIl(��P4��~���@�E��
 L
䋽� ��7�kS
����,���?���r�L��W5�!q,��'�+�#�"�)ҿ]H���~��ׇ�l�r4��̒)�	^I�A3���	��X�[�V�w�/+O�j���W���7�i%�*X�rJr�M¿����h��z�L�85�ȢU���\��7x���> ����`�N& ��o�;�{e7�z�ߎw��I�4�6�	[%敞i�c^T%�=����UT@Zr��	IM,��Q���+[��/g�sb����gO��x'��R������[���<`��N�{��^���t����M�Y�����+���&��f�h.?:��G��lt��L��Z.|�^��v��Cߩx�櫱��"ô��a6Y��5���H���cM���0�G.��ɢ�W�b##��0�/�������M)�z8����oّ�P��H��<�
�����ꭘFߩ��l����c�|5����l��S��@3��g��WC�<��߮�v���O��AR4�}0i-0O
$q���dLӿ5���'N�^.U~ʩW���w���1=L�Y���s�Dqkq���d}p0<{� ���p.,�FPߒ� ����dk��4�Gױ���h�> 0c�����~M��'&� �z-�l�ɧOg�� n6ّ����s�����l���M�F0Ւ��2n���W�dA��i��z"�R���I��ֈ{��%R ��o��Dsϼ�_3S�]�VБ+�Ғ��ݙ2V��k��Ŋ��D����i�P4}��?y�_����
�?���$����?$��x�Ѫ�� �!�_  ظ\�X��wF2=@jV�P$�QL_%V��rkssضڑ���.��v3�?҄n���_���O�}HJ�O��k{��d�  ��Q�^��;	$#}ED���n�ծ��'�{���a2V���}�lD�Ċ�;��U,y������Od��[.>q)W,m|����mq�wm� H�puwMH&�W�{.L��H�ٴ��$%���V=�����T�����P��񋚗[T��c	X�ek��ڶ*��2�U���k�e5��[K��2p�ɂ��\��S�����\�I�$�]��uY�<�<��o[�gQE,y&X��dk)�V�_=y~9��W�/�yk^<�Ʌ�3�]��2 �Y�+[b��EC�¿���T'Ul�Vn6���/�_��$�Lw���2�vuw-�
�6c�C*g���'�p�F�6�8�`}ыb3��F��$ۨII����z5X1?[6r|����g�����5����kh�:tѝ�ln�	�$ÿ���f��d�Z[c@��
���aQ�Q=ު��Vd;/�!S���?2�3����m��᫓������q@�۝�f��W����
 ��d�q������_羮tj��ЎOH��\�D������7���ￗ�o߾-�@��ϖ)<`Y���X��(͜q<)E
tT����Nƒ>9V��%u�	K�y+�����$��t�y��ܾ{���f���T�*A���W�r�I���l�>$
_�K����v�}����F�+��v��od;�����
B�Fe���2�Ƿ�UR�S���@���s�c�_�ո����ν{�����'�bI�����i|�qeB��r��SM[F~�">1����4�Ҏ{�
���.3Q�=���n�e:l|1�o�c��a�ާm��5I���U��X��q��'y:Zr�[���a���M��FX�d�ù�W`E�U��2wOk����JS"���<>!i9OKƼY�߅/����z�$-�iɃbi�+����v�/��Z�K[]g����'�����mUmq�`�`C-e��zђ��$�O"!�d�3u������g��w���-TB�l|,�Lq8�-�3r�µ
U�'�W'2�x/�+�"ɤ�d���-������w\C[7��V�N���������fa���������gZ_��'�B�?�5Ts6����g�f����ӫ�Ӣ/��p./E	�L����<g�+h�j�_
F��W��b�[�<*������t���5��~uˮ�o�+[�8���Ѩ����$���"ˠʘ�����["��<���+��DU��,!�\���-��{,��?!�����۞D����<�$��?��4gb���-1���u���Ls�w2ԟ}���Cl��9I��:=}-)�t����M��_��J���%��Ʌ�_Mn���3�'��z5�DbE|bɳ�!cE�*[��r�3+�W�B]�_.+�W���Z�X�ۖ��!A�'մ�u����HZ�u�'�z	�h�bCH�۩5O�\0�N@^Q�q-`i�k1����"� �?/J%x�?��Z��Z�>XY���okY�>XY��)�nh�M>��B��~>)ae4����
}0�m�{��a��)>in+��3/+�g���}��t��z�D�
���~S�
�Ge㋗����>(S�s�k��\��;�JXb_:�P��o��¿]�m-V��k����
��!�䔇sN� �Q*��S�FI�g�O������_��>5��������IC�0�b����L��86NT.��B�Ji�}��a~�!�N������ƣt �{x~~���E]��2>��W��|�j��W�2�����F�W}�p]%��j�ix~.��O�����v=�<������a2V��y͕C�j�v���yB�'�����{����%l=�vn}PA�ޜ�a2(��	�d�1iU���<~�n�׃ ��A�hIk�Xڅ��n���>�y*��W��V���\+�HHt�r,QZ�Y�]KZ�Y�������]���/e����bE�X����ۑF+oM���� r��C�i^ﴱ�w�t�rwh��v��Oj8�	J%:�v�,��C��G�N�X���K�K�_3+�j�U;JZV�<�R��b�p{]_���p�޸�RLs��b��
敞i��X o���{��8d\���!it-�F��d\�d����5�(�}���~�E�#gy�#�S��ɒ���U".�|t34��g�'+Vk[�ʗ�,U8#�I��z>���
��瑣��W�euAY��K�=ԫ��y�:���'�q�
j�a�����l��"5��0.�Qg�$�?�]���W����j]h@�NF�w�½����"�KI���>�w˿�ÿ���ѯ���Bn�{�!��=�LN_�N��!�x4��u��U���qciC���E�H@�RR��(��_�(�Ɲ��s��O&���a2ο&�L�&_�Y�w��%�a���w�?kF�Ʉ� E�.�h����J�F4�����@������24����F6>|����[���w��P ̗��F���p�޽�����v�y�Cٿ���|�_��ӹ���S�z�. ��?��O��P%�ܖ�K�� ����D�O�D��Fc��Z�\��h��Z �V V�/N�o�~˖�Ձl�M�����	{ua��Xȧ_�1Ϳլ�����b����{0��o��R�G%�[��u!�|���y�7���e�Ѽ������ο �Ey�o���_�s~�<�|�����cI�>Xw���\yn�j�b��3������Z��F턅���y� �������>.��_Ϩ�n���%�'�)�����cΧyߘ�21O��B?��,&ĸyN-��  �IDAT ������|J�#b>����'�~����t:mn�*+�;?e��b����y
WI8��̫���1�y��m��ipŷZ-��1�r�!�����[:�Li�|�Q<�bq�"2�v�&��aAr>A4*Z�� ����O�gn�S&��cϓF��t�6��6y�5��O�D�-�yu1%?X��p3���L'vu1ej7�����S�Af�9�I;��7)�~Iϯy��eI'Q6I�þ���Ϥ��<8hn�����l��R�:M���G*ο&���a��iο�@�7����� ��pC�/�/�; ��'e"�8����������7z�F�Nў��:��zttI�R�W/ Ց��U�Y�Ba�l���?y�xd��W���R�&kJa����^0nll��x�� ���G7WwttČ ���cٸ�� ���
��h���s�qoo�Ν;IF x��	���ٹ������S&}��^����3�/��υ+�����BA��,YA�Z�Z�y|����`|�NB�T�O���������wRGO��\6����I���d�\���� u�e���W��b� ������FO�>eƭ�-l���/^�`N��tR���ǂ��舵��v[0�mҸ���O�1����}�Jwwwe�ad�>o0A����ȷ���مRa���3� �$Y`w����7 ��ߦ^���X�����J==t��G.������Lk�����axvvƶ{�^���Ǽqggi>%�ƭ�-EЈ^+فx#������(�ɎEz3y�,%YJ��.6ͿoHL �TE0��}c&QE�JH����"�~"y�D_T!Kϰ�Ŧ}ߩ��G�~TP%�R`�W0���T�����)�R���Z?�v����l�W͘1^
dq�h4BՏY����c֜����8 0�`0`L���<�Km����ن�������{7˃�W*e�o0���?%��RA�ky�;����FQ����rrr"��`0`�v�-�����p���1[v��_��ǎ���N�-������>{4_����;C���E;��`d����t0%S�#��R>i$w�A_�F�Z��H#f+��4�V�
�\6���-`TK�Uꃚ��H���$�QA��5�����R��H	޿�����e�Ԓ/�$�ou���ӿyl�O��>Ȣ(z��32َm�ONNF��b����:)�6������]���E�W�������-�c����z��ǖ��f��N�#���v��� F�h�E�h �1���39eEh�w�|�x���<����X?-S�F�Xd�����ڎ�-�	�%�F�ߺ�wj�~�v:#;�I����.3A����5y'�=��*(|,��SbOC9O��h(�����F^���gR)e*��C��`0���	��k�g�9Z�m�W��2r���$�	�S����E�Ԯ�����냽^ϟ4�H���ѷ߾7x�2_�}�"���<�C>�	�>::J\m��u��z�����C���-�`_ŋ�zuh�K�1!�Jecc�ٳg�0�y�m��}L���k#�dM&�0Ĩ:� B���,1���O�ܝ?�Ȕ ���X��<lѿ��.vĘ���`�{xx�"�N��)���������YG  �����x�ƣ�#҈��`�}vv�0����A���9��AfR�o��'$K_\`��?������0Y�.����    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tank.png-df5e9fed772773b995fab2b58735640c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tank.png"
dest_files=[ "res://.import/tank.png-df5e9fed772773b995fab2b58735640c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC            2      ����ڶ��   �����϶�   ��������Ӷ��   ������¶   ��������ض��   ����������Ӷ   ���¶���   ��������      winner     	   _show_win      
   WINNER IS                                                       	      
               #      )      -      .      /      0      3YYYYYYY0�  PQV�  �  T�  PRR�  Q�  -YY0�  P�  QV�  �  �  �  �  �  PQYYYY`        [gd_scene format=2]

[node name="World" type="Node2D"]
         [remap]

path="res://Bullet.gdc"
               [remap]

path="res://BulletSpawner.gdc"
        [remap]

path="res://Lobby.gdc"
[remap]

path="res://Tank.gdc"
 [remap]

path="res://gamestate.gdc"
            [remap]

path="res://label.gdc"
[remap]

path="res://win_message.gdc"
          �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Tanks      application/run/main_scene         res://Lobby.tscn   application/config/icon         res://icon.png     autoload/gamestate         *res://gamestate.gd    input/ui_fired              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres   GDPC
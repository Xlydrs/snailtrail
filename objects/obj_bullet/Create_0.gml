/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67A5D3CC
/// @DnDInput : 3
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "expr_1" "obj_player.bullet_velocity"
/// @DnDArgument : "expr_2" "180 + obj_player.image_angle"
/// @DnDArgument : "var" "bullet_expire_time"
/// @DnDArgument : "var_1" "speed"
/// @DnDArgument : "var_2" "direction"
bullet_expire_time = 60;
speed = obj_player.bullet_velocity;
direction = 180 + obj_player.image_angle;
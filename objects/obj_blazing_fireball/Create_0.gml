/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4DBE3053
/// @DnDInput : 6
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "expr_2" "obj_player.image_angle + 180 + random_range(-40, 40)"
/// @DnDArgument : "expr_3" "direction"
/// @DnDArgument : "expr_4" "obj_player.fireball_size"
/// @DnDArgument : "expr_5" "obj_player.fireball_size"
/// @DnDArgument : "var" "degen_life"
/// @DnDArgument : "var_1" "current_degen"
/// @DnDArgument : "var_2" "direction"
/// @DnDArgument : "var_3" "image_angle"
/// @DnDArgument : "var_4" "image_xscale"
/// @DnDArgument : "var_5" "image_yscale"
degen_life = 100;
current_degen = 0;
direction = obj_player.image_angle + 180 + random_range(-40, 40);
image_angle = direction;
image_xscale = obj_player.fireball_size;
image_yscale = obj_player.fireball_size;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 114380B1
/// @DnDArgument : "speed" "20"
speed = 20;
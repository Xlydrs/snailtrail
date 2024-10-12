/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2FF8492B
/// @DnDInput : 4
/// @DnDArgument : "expr" "random(360)"
/// @DnDArgument : "expr_1" "direction"
/// @DnDArgument : "expr_2" "2"
/// @DnDArgument : "expr_3" "2"
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "var_1" "image_angle"
/// @DnDArgument : "var_2" "image_xscale"
/// @DnDArgument : "var_3" "image_yscale"
direction = random(360);
image_angle = direction;
image_xscale = 2;
image_yscale = 2;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 19181F74
/// @DnDArgument : "speed" "5"
speed = 5;
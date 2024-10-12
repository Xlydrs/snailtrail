/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 015B42E3
/// @DnDArgument : "expr" "random(360)"
/// @DnDArgument : "var" "image_angle"
image_angle = random(360);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11EBE9CA
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player.image_angle + 180 + random_range(-30, 30)"
/// @DnDArgument : "expr_1" "600"
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "var_1" "fuse_time"
direction = obj_player.image_angle + 180 + random_range(-30, 30);
fuse_time = 600;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0B1554F5
/// @DnDArgument : "speed" "3 + 0.1 * irandom(20)"
speed = 3 + 0.1 * irandom(20);
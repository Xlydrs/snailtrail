/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D750AB4
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "var" "image_angle"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E751178
/// @DnDInput : 2
/// @DnDArgument : "expr" "instance_nearest(x, y, obj_swamer_ciliate).x"
/// @DnDArgument : "expr_1" "instance_nearest(x, y, obj_swamer_ciliate).y"
/// @DnDArgument : "var" "target_x"
/// @DnDArgument : "var_1" "target_y"
target_x = instance_nearest(x, y, obj_swamer_ciliate).x;
target_y = instance_nearest(x, y, obj_swamer_ciliate).y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54E04D4B
/// @DnDArgument : "expr" "point_direction(x, y, target_x, target_y)"
/// @DnDArgument : "var" "direction"
direction = point_direction(x, y, target_x, target_y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5419B9F2
/// @DnDArgument : "speed" "10"
speed = 10;
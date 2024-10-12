/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 466CAE4A
/// @DnDInput : 3
/// @DnDArgument : "expr" "60 * obj_player.slime_linger"
/// @DnDArgument : "expr_1" "start_duration"
/// @DnDArgument : "expr_2" "obj_player.direction"
/// @DnDArgument : "var" "start_duration"
/// @DnDArgument : "var_1" "current_duration"
/// @DnDArgument : "var_2" "direction"
start_duration = 60 * obj_player.slime_linger;
current_duration = start_duration;
direction = obj_player.direction;
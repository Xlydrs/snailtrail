/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7CA4985A
/// @DnDInput : 2
/// @DnDArgument : "expr" "- obj_player.fireball_damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "obj_player.ignite_duration"
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "var_1" "ignite_remaining"
current_health += - obj_player.fireball_damage;
ignite_remaining = obj_player.ignite_duration;
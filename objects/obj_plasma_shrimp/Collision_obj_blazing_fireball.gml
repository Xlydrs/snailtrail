/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 203D66FB
/// @DnDArgument : "var" "plasma_shield_points"
/// @DnDArgument : "op" "2"
if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EA4E6F1
	/// @DnDParent : 203D66FB
	/// @DnDArgument : "expr" "- obj_player.fireball_damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "plasma_shield_points"
	plasma_shield_points += - obj_player.fireball_damage;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 640286F5
/// @DnDInput : 2
/// @DnDArgument : "expr" "- obj_player.fireball_damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "obj_player.ignite_duration"
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "var_1" "ignite_remaining"
current_health += - obj_player.fireball_damage;
ignite_remaining = obj_player.ignite_duration;
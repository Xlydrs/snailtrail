/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 741599AA
/// @DnDArgument : "var" "plasma_shield_points"
/// @DnDArgument : "op" "2"
if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5048C8F2
	/// @DnDParent : 741599AA
	/// @DnDArgument : "expr" " obj_player.bullet_damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "plasma_shield_points"
	plasma_shield_points +=  obj_player.bullet_damage;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0D75E774
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B838F47
	/// @DnDParent : 0D75E774
	/// @DnDArgument : "expr" " obj_player.bullet_damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "current_health"
	current_health +=  obj_player.bullet_damage;}
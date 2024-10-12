/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E0629F7
/// @DnDArgument : "var" "plasma_shield_points"
/// @DnDArgument : "op" "2"
if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08477C2B
	/// @DnDParent : 1E0629F7
	/// @DnDArgument : "expr" "  - obj_player.spore_damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "plasma_shield_points"
	plasma_shield_points +=   - obj_player.spore_damage;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F8723FC
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D60C13D
	/// @DnDParent : 6F8723FC
	/// @DnDArgument : "expr" "current_health - obj_player.spore_damage"
	/// @DnDArgument : "var" "current_health"
	current_health = current_health - obj_player.spore_damage;}
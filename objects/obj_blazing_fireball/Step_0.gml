/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EE6A6B9
/// @DnDInput : 4
/// @DnDArgument : "expr" "+ obj_player.fireball_degen_rate"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "image_alpha -  0.01 * current_degen"
/// @DnDArgument : "expr_2" "- 0.01 * current_degen"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "expr_3" "- 0.01 * current_degen"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "var" "current_degen"
/// @DnDArgument : "var_1" "image_alpha"
/// @DnDArgument : "var_2" "image_xscale"
/// @DnDArgument : "var_3" "image_yscale"
current_degen += + obj_player.fireball_degen_rate;
image_alpha = image_alpha -  0.01 * current_degen;
image_xscale += - 0.01 * current_degen;
image_yscale += - 0.01 * current_degen;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53188703
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "0.1"
if(speed > 0.1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E61F6D7
	/// @DnDParent : 53188703
	/// @DnDArgument : "expr" "speed  * 0.9"
	/// @DnDArgument : "var" "speed"
	speed = speed  * 0.9;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21DEE7E6
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.01"
if(image_alpha < 0.01)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 124344FE
	/// @DnDParent : 21DEE7E6
	instance_destroy();
}
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26823E51
/// @DnDArgument : "expr" "-0.05"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_alpha"
image_alpha += -0.05;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A981986
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.1"
if(speed < 0.1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EAE0F9C
	/// @DnDParent : 0A981986
	/// @DnDArgument : "expr" "-0.1"
	/// @DnDArgument : "var" "speed"
	speed = -0.1;
}
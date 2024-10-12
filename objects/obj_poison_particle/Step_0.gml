/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 21EAF27E
/// @DnDArgument : "speed" "speed * 0.9"
speed = speed * 0.9;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16FED50B
/// @DnDArgument : "expr" "-0.1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_alpha"
image_alpha += -0.1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01900F47
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.1"
if(image_alpha < 0.1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C1DB698
	/// @DnDParent : 01900F47
	instance_destroy();
}
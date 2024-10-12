/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F35845A
/// @DnDArgument : "expr" "- 1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "fuse_time"
fuse_time += - 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B1825E6
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
if(speed > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 17A0E10B
	/// @DnDParent : 2B1825E6
	/// @DnDArgument : "speed" "speed - 0.1"
	speed = speed - 0.1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2249A6EE
/// @DnDArgument : "var" "fuse_time"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(fuse_time < 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 426E9586
	/// @DnDParent : 2249A6EE
	instance_destroy();
}
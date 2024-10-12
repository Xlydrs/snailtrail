/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AC7F23F
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "time_remaining"
time_remaining += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50AFE180
/// @DnDArgument : "var" "time_remaining"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(time_remaining < 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72F333AC
	/// @DnDParent : 50AFE180
	instance_destroy();
}
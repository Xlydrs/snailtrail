/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AC7F23F
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "+ 0.02"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "time_remaining"
/// @DnDArgument : "var_1" "image_alpha"
time_remaining += -1;
image_alpha += + 0.02;

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
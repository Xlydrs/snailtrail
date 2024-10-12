/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08B35335
/// @DnDInput : 2
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "expr_1" "rotation_speed"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "var_1" "direction"
image_angle = direction;
direction += rotation_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4CDE6CBD
/// @DnDInput : 2
/// @DnDArgument : "expr" "image_xscale * 0.98"
/// @DnDArgument : "expr_1" "image_yscale * 0.98"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
image_xscale = image_xscale * 0.98;
image_yscale = image_yscale * 0.98;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23B46ACA
/// @DnDArgument : "expr" "image_alpha * 0.98"
/// @DnDArgument : "var" "image_alpha"
image_alpha = image_alpha * 0.98;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06CDC32C
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.01"
if(image_alpha < 0.01)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1FAB526C
	/// @DnDParent : 06CDC32C
	instance_destroy();
}
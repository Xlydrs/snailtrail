/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 087F4719
/// @DnDInput : 2
/// @DnDArgument : "expr" "+0.01"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "direction"
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "var_1" "image_angle"
image_alpha += +0.01;
image_angle = direction;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D103E41
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "projectile_lifetime"
projectile_lifetime += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6469A8F9
/// @DnDArgument : "var" "projectile_lifetime"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(projectile_lifetime < 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F2F9BE2
	/// @DnDParent : 6469A8F9
	instance_destroy();
}
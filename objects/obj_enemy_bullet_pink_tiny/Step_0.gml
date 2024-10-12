/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C3549B9
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "projectile_lifetime"
projectile_lifetime += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DD848E1
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "var" "image_angle"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40F47012
/// @DnDArgument : "var" "time_offscreen"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "300"
if(time_offscreen >= 300)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30FE6385
	/// @DnDParent : 40F47012
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1789E354
/// @DnDArgument : "var" "projectile_lifetime"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(projectile_lifetime < 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7AD788F0
	/// @DnDParent : 1789E354
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FCB9F39
/// @DnDArgument : "var" "projectile_lifetime"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "60"
if(projectile_lifetime < 60)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52E57649
	/// @DnDInput : 2
	/// @DnDParent : 5FCB9F39
	/// @DnDArgument : "expr" "- 0.017"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-0.017"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "var_1" "image_yscale"
	image_xscale += - 0.017;
	image_yscale += -0.017;
}
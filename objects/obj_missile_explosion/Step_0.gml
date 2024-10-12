/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DF316BB
/// @DnDArgument : "expr" "- 0.025"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_alpha"
image_alpha += - 0.025;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 314185DA
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "6"
if(image_xscale < 6)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BD2DC3F
	/// @DnDParent : 314185DA
	/// @DnDArgument : "expr" "+0.2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale += +0.2;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A15DEC6
/// @DnDArgument : "var" "image_yscale"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "6"
if(image_yscale < 6)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 127E266E
	/// @DnDParent : 4A15DEC6
	/// @DnDArgument : "expr" "+0.2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_yscale"
	image_yscale += +0.2;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37EBC8AA
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 56E672D4
	/// @DnDParent : 37EBC8AA
	instance_destroy();
}
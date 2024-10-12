/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C20F334
/// @DnDInput : 3
/// @DnDArgument : "expr" "obj_player.x"
/// @DnDArgument : "expr_1" "obj_player.y"
/// @DnDArgument : "expr_2" "+6"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
/// @DnDArgument : "var_2" "image_angle"
x = obj_player.x;
y = obj_player.y;
image_angle += +6;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52A97FDE
/// @DnDArgument : "var" "aura_growing"
/// @DnDArgument : "value" "true"
if(aura_growing == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63EB10BE
	/// @DnDInput : 2
	/// @DnDParent : 52A97FDE
	/// @DnDArgument : "expr" "+ 0.0025 * obj_player.freeze_aura_size"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "+ 0.0025 * obj_player.freeze_aura_size"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "var_1" "image_yscale"
	image_xscale += + 0.0025 * obj_player.freeze_aura_size;
	image_yscale += + 0.0025 * obj_player.freeze_aura_size;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19EB6570
	/// @DnDParent : 52A97FDE
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "aura_max_size"
	if(image_xscale > aura_max_size)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D899F10
		/// @DnDInput : 2
		/// @DnDParent : 19EB6570
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "aura_growing"
		/// @DnDArgument : "var_1" "aura_shrinking"
		aura_growing = false;
		aura_shrinking = true;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44668781
/// @DnDArgument : "var" "aura_shrinking"
/// @DnDArgument : "value" "true"
if(aura_shrinking == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 339F1275
	/// @DnDInput : 2
	/// @DnDParent : 44668781
	/// @DnDArgument : "expr" "- 0.0025 * obj_player.freeze_aura_size"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "- 0.0025 * obj_player.freeze_aura_size"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "var_1" "image_yscale"
	image_xscale += - 0.0025 * obj_player.freeze_aura_size;
	image_yscale += - 0.0025 * obj_player.freeze_aura_size;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 305BF44E
	/// @DnDParent : 44668781
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "aura_min_size"
	if(image_xscale < aura_min_size)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 180322D8
		/// @DnDInput : 2
		/// @DnDParent : 305BF44E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "var" "aura_growing"
		/// @DnDArgument : "var_1" "aura_shrinking"
		aura_growing = true;
		aura_shrinking = false;
	}
}
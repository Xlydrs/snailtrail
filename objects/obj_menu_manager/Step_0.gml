/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E045396
/// @DnDInput : 5
/// @DnDArgument : "var" "_up"
/// @DnDArgument : "value" "keyboard_check_pressed(ord("W"))"
/// @DnDArgument : "var_1" "_down"
/// @DnDArgument : "value_1" "keyboard_check_pressed(ord("S"))"
/// @DnDArgument : "var_2" "_right"
/// @DnDArgument : "value_2" "keyboard_check_pressed(ord("D"))"
/// @DnDArgument : "var_3" "_left"
/// @DnDArgument : "value_3" "keyboard_check_pressed(ord("A"))"
/// @DnDArgument : "var_4" "_select"
/// @DnDArgument : "value_4" "keyboard_check_pressed(vk_enter)"
var _up = keyboard_check_pressed(ord("W"));
var _down = keyboard_check_pressed(ord("S"));
var _right = keyboard_check_pressed(ord("D"));
var _left = keyboard_check_pressed(ord("A"));
var _select = keyboard_check_pressed(vk_enter);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 527A2D0C
/// @DnDArgument : "var" "_move"
/// @DnDArgument : "value" "_down - _up"
var _move = _down - _up;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18528060
/// @DnDArgument : "var" "_move"
/// @DnDArgument : "not" "1"
if(!(_move == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D272D0C
	/// @DnDParent : 18528060
	/// @DnDArgument : "expr" "+ _move"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "index"
	index += + _move;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DA2E375
	/// @DnDParent : 18528060
	/// @DnDArgument : "var" "_size"
	/// @DnDArgument : "value" "array_length_1d(menu)"
	var _size = array_length_1d(menu);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FC9BC73
	/// @DnDParent : 18528060
	/// @DnDArgument : "var" "index"
	/// @DnDArgument : "op" "1"
	if(index < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B1A73D0
		/// @DnDParent : 5FC9BC73
		/// @DnDArgument : "expr" "_size - 1"
		/// @DnDArgument : "var" "index"
		index = _size - 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 41C0DB69
	/// @DnDParent : 18528060
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41C15A06
		/// @DnDParent : 41C0DB69
		/// @DnDArgument : "var" "index"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "_size"
		if(index >= _size)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11EF713A
			/// @DnDParent : 41C15A06
			/// @DnDArgument : "var" "index"
			index = 0;
		}
	}
}
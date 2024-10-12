/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 66F410EF
/// @DnDDisabled : 1
/// @DnDArgument : "var" "enemy_count"
/// @DnDArgument : "object" "obj_swamer_ciliate"
/// @DnDSaveInfo : "object" "obj_swamer_ciliate"


/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 305A2D0A
/// @DnDDisabled : 1
/// @DnDArgument : "object" "obj_orb_cell_medium"
/// @DnDSaveInfo : "object" "obj_orb_cell_medium"


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 50776FD6
/// @DnDArgument : "key" "vk_control"
var l50776FD6_0;
l50776FD6_0 = keyboard_check_pressed(vk_control);
if (l50776FD6_0)
{
	/// @DnDAction : YoYo Games.Miscellaneous.Set_Window_State
	/// @DnDVersion : 1
	/// @DnDHash : 1FF02746
	/// @DnDParent : 50776FD6
	window_set_fullscreen(!window_get_fullscreen());
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DF3D91C
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player.x"
/// @DnDArgument : "expr_1" "obj_player.y"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = obj_player.x;
y = obj_player.y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B4C211F
/// @DnDArgument : "var" "paused"
/// @DnDArgument : "value" "false"
if(paused == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AD0A6C4
	/// @DnDParent : 6B4C211F
	/// @DnDArgument : "expr" "frame_counter -1"
	/// @DnDArgument : "var" "frame_counter"
	frame_counter = frame_counter -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B278892
	/// @DnDParent : 6B4C211F
	/// @DnDArgument : "var" "frame_counter"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(frame_counter < 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CE9C84A
		/// @DnDInput : 3
		/// @DnDParent : 6B278892
		/// @DnDArgument : "expr" "+ 1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "60"
		/// @DnDArgument : "expr_2" "+1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "game_time"
		/// @DnDArgument : "var_1" "frame_counter"
		/// @DnDArgument : "var_2" "wave_counter"
		game_time += + 1;
		frame_counter = 60;
		wave_counter += +1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E1B8101
/// @DnDArgument : "var" "wave_counter"
/// @DnDArgument : "value" "to_next_wave"
if(wave_counter == to_next_wave)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0553B3EC
	/// @DnDInput : 3
	/// @DnDParent : 6E1B8101
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "+ 30"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "5 + 2 * current_wave"
	/// @DnDArgument : "var" "current_wave"
	/// @DnDArgument : "var_1" "to_next_wave"
	/// @DnDArgument : "var_2" "obj_spawner.spawn_value"
	current_wave += +1;
	to_next_wave += + 30;
	obj_spawner.spawn_value = 5 + 2 * current_wave;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 10BE360E
/// @DnDArgument : "key" "vk_escape"
var l10BE360E_0;
l10BE360E_0 = keyboard_check_pressed(vk_escape);
if (l10BE360E_0)
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 246A6AE0
	/// @DnDParent : 10BE360E
	game_end();
}
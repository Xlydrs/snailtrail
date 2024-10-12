/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02F620B0
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "main_menu_active"
/// @DnDArgument : "var_1" "evolution_menu_active"
main_menu_active = false;
evolution_menu_active = false;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D3F0DAD
/// @DnDArgument : "var" "main_menu_active"
/// @DnDArgument : "value" "true"
if(main_menu_active == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BC54A1B
	/// @DnDInput : 3
	/// @DnDParent : 2D3F0DAD
	/// @DnDArgument : "expr" ""start""
	/// @DnDArgument : "expr_1" ""options""
	/// @DnDArgument : "expr_2" ""exit""
	/// @DnDArgument : "var" "menu[0]"
	/// @DnDArgument : "var_1" "menu[1]"
	/// @DnDArgument : "var_2" "menu[2]"
	menu[0] = "start";
	menu[1] = "options";
	menu[2] = "exit";
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74FED1D2
/// @DnDArgument : "var" "evolution_menu_active"
/// @DnDArgument : "value" "true"
if(evolution_menu_active == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C6C83DB
	/// @DnDInput : 4
	/// @DnDParent : 74FED1D2
	/// @DnDArgument : "expr" ""HEAD""
	/// @DnDArgument : "expr_1" ""BODY""
	/// @DnDArgument : "expr_2" ""SHELL""
	/// @DnDArgument : "expr_3" ""FOOT""
	/// @DnDArgument : "var" "menu[0]"
	/// @DnDArgument : "var_1" "menu[1]"
	/// @DnDArgument : "var_2" "menu[2]"
	/// @DnDArgument : "var_3" "menu[4]"
	menu[0] = "HEAD";
	menu[1] = "BODY";
	menu[2] = "SHELL";
	menu[4] = "FOOT";
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06012F4E
/// @DnDArgument : "var" "index"
index = 0;
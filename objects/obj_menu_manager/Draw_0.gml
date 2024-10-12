/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0F1183BC
/// @DnDArgument : "font" "fnt_menu"
/// @DnDSaveInfo : "font" "fnt_menu"
draw_set_font(fnt_menu);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CBA4F79
/// @DnDArgument : "var" "main_menu_active"
/// @DnDArgument : "value" "true"
if(main_menu_active == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 223F6AF7
	/// @DnDParent : 6CBA4F79
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" ""
	draw_set_halign(fa_center);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6733AD2E
	/// @DnDParent : 6CBA4F79
	/// @DnDArgument : "var" "_gap"
	/// @DnDArgument : "value" "40"
	var _gap = 40;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2B83B6D7
	/// @DnDParent : 6CBA4F79
	/// @DnDArgument : "cond" "i < array_length_1d(menu)"
	for(i = 0; i < array_length_1d(menu); i += 1) {
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 42EA380E
		/// @DnDParent : 2B83B6D7
		/// @DnDArgument : "color" "$FFB8FF21"
		draw_set_colour($FFB8FF21 & $ffffff);
		var l42EA380E_0=($FFB8FF21 >> 24);
		draw_set_alpha(l42EA380E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2CBEC123
		/// @DnDParent : 2B83B6D7
		/// @DnDArgument : "var" "i"
		/// @DnDArgument : "value" "index"
		if(i == index)
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 6E4B55BB
			/// @DnDParent : 2CBEC123
			/// @DnDArgument : "color" "$FF9849FF"
			draw_set_colour($FF9849FF & $ffffff);
			var l6E4B55BB_0=($FF9849FF >> 24);
			draw_set_alpha(l6E4B55BB_0 / $ff);
		}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 45FF4AE7
		/// @DnDParent : 2B83B6D7
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "room_height * 0.4 + _gap * i"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "menu[i]"
		draw_text(room_width/2, room_height * 0.4 + _gap * i,  + string(menu[i]));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 723D8CBB
/// @DnDArgument : "var" "evolution_menu_active"
/// @DnDArgument : "value" "true"
if(evolution_menu_active == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 2AF43BE6
	/// @DnDParent : 723D8CBB
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33150119
	/// @DnDParent : 723D8CBB
	/// @DnDArgument : "var" "_gap"
	/// @DnDArgument : "value" "300"
	var _gap = 300;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2BC8149E
	/// @DnDParent : 723D8CBB
	/// @DnDArgument : "cond" "i < array_length_1d(menu)"
	for(i = 0; i < array_length_1d(menu); i += 1) {
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5EB315CE
		/// @DnDParent : 2BC8149E
		/// @DnDArgument : "color" "$FFB8FF21"
		draw_set_colour($FFB8FF21 & $ffffff);
		var l5EB315CE_0=($FFB8FF21 >> 24);
		draw_set_alpha(l5EB315CE_0 / $ff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FF53C9A
		/// @DnDParent : 2BC8149E
		/// @DnDArgument : "var" "i"
		/// @DnDArgument : "value" "index"
		if(i == index)
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 217D729C
			/// @DnDParent : 2FF53C9A
			/// @DnDArgument : "color" "$FF9849FF"
			draw_set_colour($FF9849FF & $ffffff);
			var l217D729C_0=($FF9849FF >> 24);
			draw_set_alpha(l217D729C_0 / $ff);
		}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7335AC91
		/// @DnDParent : 2BC8149E
		/// @DnDArgument : "x" "room_width * 0.4  + _gap * i"
		/// @DnDArgument : "y" "room_height /2"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "menu[i]"
		draw_text(room_width * 0.4  + _gap * i, room_height /2,  + string(menu[i]));
	}
}
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F4E46F4
/// @DnDComment : countdown variables
/// @DnDInput : 3
/// @DnDArgument : "expr" "roll_timer - 1"
/// @DnDArgument : "expr_1" "health_delay_timer - 1"
/// @DnDArgument : "expr_2" "+ shell_regrow_rate"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "var" "roll_timer"
/// @DnDArgument : "var_1" "health_delay_timer"
/// @DnDArgument : "var_2" "shell_regrowth"
roll_timer = roll_timer - 1;
health_delay_timer = health_delay_timer - 1;
shell_regrowth += + shell_regrow_rate;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2411CCFA
/// @DnDArgument : "var" "rolling"
/// @DnDArgument : "value" "false"
if(rolling == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 566D31DE
	/// @DnDParent : 2411CCFA
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "energy_delay_timer"
	energy_delay_timer += -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C08682C
/// @DnDArgument : "var" "energy_delay_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(energy_delay_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A814F19
	/// @DnDParent : 6C08682C
	/// @DnDArgument : "var" "current_energy"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "max_energy"
	if(current_energy < max_energy){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C1E7556
		/// @DnDParent : 1A814F19
		/// @DnDArgument : "expr" "current_energy + energy_regen/60"
		/// @DnDArgument : "var" "current_energy"
		current_energy = current_energy + energy_regen/60;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BE2340F
/// @DnDArgument : "var" "shell_broken"
/// @DnDArgument : "value" "true"
if(shell_broken == true){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2188AD64
	/// @DnDParent : 6BE2340F
	/// @DnDArgument : "spriteind" "spr_player_without_shell"
	/// @DnDSaveInfo : "spriteind" "spr_player_without_shell"
	sprite_index = spr_player_without_shell;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1E5B59F0
else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0CAB8D3B
	/// @DnDParent : 1E5B59F0
	/// @DnDArgument : "spriteind" "spr_player"
	/// @DnDSaveInfo : "spriteind" "spr_player"
	sprite_index = spr_player;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45EBAB5A
	/// @DnDParent : 1E5B59F0
	/// @DnDArgument : "var" "shell_regrowth"
	shell_regrowth = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A6EAF63
/// @DnDArgument : "var" "shell_regrowth"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
if(shell_regrowth >= 100){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16A318C5
	/// @DnDParent : 3A6EAF63
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "shell_broken"
	shell_broken = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38106049
	/// @DnDParent : 3A6EAF63
	/// @DnDArgument : "expr" "basic_shell_points"
	/// @DnDArgument : "var" "current_shell_points"
	current_shell_points = basic_shell_points;}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5691B2AF
/// @DnDInput : 4
/// @DnDArgument : "var" "_left"
/// @DnDArgument : "value" "0"
/// @DnDArgument : "var_1" "_right"
/// @DnDArgument : "value_1" "0"
/// @DnDArgument : "var_2" "_up"
/// @DnDArgument : "value_2" "0"
/// @DnDArgument : "var_3" "_down"
/// @DnDArgument : "value_3" "0"
var _left = 0;
var _right = 0;
var _up = 0;
var _down = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7451587D
/// @DnDComment : Check if playewr isnt moving
/// @DnDArgument : "key" "ord("A")"
/// @DnDArgument : "not" "1"
var l7451587D_0;l7451587D_0 = keyboard_check(ord("A"));if (!l7451587D_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 713DA539
	/// @DnDParent : 7451587D
	/// @DnDArgument : "key" "ord("W")"
	/// @DnDArgument : "not" "1"
	var l713DA539_0;l713DA539_0 = keyboard_check(ord("W"));if (!l713DA539_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 68CBC72D
		/// @DnDParent : 713DA539
		/// @DnDArgument : "key" "ord("S")"
		/// @DnDArgument : "not" "1"
		var l68CBC72D_0;l68CBC72D_0 = keyboard_check(ord("S"));if (!l68CBC72D_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 5BC67430
			/// @DnDParent : 68CBC72D
			/// @DnDArgument : "key" "ord("D")"
			/// @DnDArgument : "not" "1"
			var l5BC67430_0;l5BC67430_0 = keyboard_check(ord("D"));if (!l5BC67430_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 45EC48FD
				/// @DnDParent : 5BC67430
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "player_moving"
				player_moving = false;}}}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 299A274F
/// @DnDComment : basic controls
/// @DnDArgument : "key" "ord("W")"
var l299A274F_0;l299A274F_0 = keyboard_check(ord("W"));if (l299A274F_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DA8854C
	/// @DnDParent : 299A274F
	/// @DnDArgument : "var" "_up"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(_up < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39FE4576
		/// @DnDInput : 2
		/// @DnDParent : 1DA8854C
		/// @DnDArgument : "expr" "+ 0.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "_up"
		/// @DnDArgument : "var_1" "player_moving"
		_up += + 0.1;
		player_moving = true;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5533CB15
/// @DnDArgument : "key" "ord("A")"
var l5533CB15_0;l5533CB15_0 = keyboard_check(ord("A"));if (l5533CB15_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3ABD5464
	/// @DnDParent : 5533CB15
	/// @DnDArgument : "var" "_left"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(_left < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E12F41D
		/// @DnDInput : 2
		/// @DnDParent : 3ABD5464
		/// @DnDArgument : "expr" "+ 0.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "_left"
		/// @DnDArgument : "var_1" "player_moving"
		_left += + 0.1;
		player_moving = true;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 76D5B9C2
/// @DnDArgument : "key" "ord("S")"
var l76D5B9C2_0;l76D5B9C2_0 = keyboard_check(ord("S"));if (l76D5B9C2_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F4BDA54
	/// @DnDParent : 76D5B9C2
	/// @DnDArgument : "var" "_down"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(_down < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69268316
		/// @DnDInput : 2
		/// @DnDParent : 3F4BDA54
		/// @DnDArgument : "expr" "+0.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "_down"
		/// @DnDArgument : "var_1" "player_moving"
		_down += +0.1;
		player_moving = true;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1DF0A391
/// @DnDArgument : "key" "ord("D")"
var l1DF0A391_0;l1DF0A391_0 = keyboard_check(ord("D"));if (l1DF0A391_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48445321
	/// @DnDParent : 1DF0A391
	/// @DnDArgument : "var" "_right"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(_right < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 275C1A43
		/// @DnDInput : 2
		/// @DnDParent : 48445321
		/// @DnDArgument : "expr" "+0.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "_right"
		/// @DnDArgument : "var_1" "player_moving"
		_right += +0.1;
		player_moving = true;}}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EF17180
/// @DnDInput : 2
/// @DnDArgument : "var" "_hspd"
/// @DnDArgument : "value" "_right - _left"
/// @DnDArgument : "var_1" "_vspd"
/// @DnDArgument : "value_1" "_down - _up"
var _hspd = _right - _left;
var _vspd = _down - _up;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FE159AD
/// @DnDArgument : "var" "rolling"
/// @DnDArgument : "value" "false"
if(rolling == false){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 47591CE2
	/// @DnDParent : 5FE159AD
	/// @DnDArgument : "expr" "_hspd != 0 || _vspd != 0"
	/// @DnDArgument : "not" "1"
	if(!(_hspd != 0 || _vspd != 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D6CDECB
		/// @DnDParent : 47591CE2
		/// @DnDArgument : "var" "current_speed"
		current_speed = 0;}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 07D5FF02
/// @DnDArgument : "expr" "_hspd != 0 || _vspd != 0"
if(_hspd != 0 || _vspd != 0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FF02841
	/// @DnDParent : 07D5FF02
	/// @DnDArgument : "var" "_spd"
	/// @DnDArgument : "value" "current_speed"
	var _spd = current_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10ACC3A8
	/// @DnDParent : 07D5FF02
	/// @DnDArgument : "expr" "base_speed"
	/// @DnDArgument : "var" "current_speed"
	current_speed = base_speed;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 361D2203
	/// @DnDInput : 4
	/// @DnDParent : 07D5FF02
	/// @DnDArgument : "var" "_dir"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "point_direction"
	/// @DnDArgument : "arg" "0"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "_hspd"
	/// @DnDArgument : "arg_3" "_vspd"
	var _dir = point_direction(0, 0, _hspd, _vspd);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 29168794
	/// @DnDInput : 2
	/// @DnDParent : 07D5FF02
	/// @DnDArgument : "var" "_xadd"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "lengthdir_x"
	/// @DnDArgument : "arg" "_spd"
	/// @DnDArgument : "arg_1" "_dir"
	var _xadd = lengthdir_x(_spd, _dir);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4BC6F2AC
	/// @DnDInput : 2
	/// @DnDParent : 07D5FF02
	/// @DnDArgument : "var" "_yadd"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "lengthdir_y"
	/// @DnDArgument : "arg" "_spd"
	/// @DnDArgument : "arg_1" "_dir"
	var _yadd = lengthdir_y(_spd, _dir);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7CA83046
	/// @DnDInput : 2
	/// @DnDParent : 07D5FF02
	/// @DnDArgument : "value" "_xadd"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" "_yadd"
	/// @DnDArgument : "value_relative_1" "1"
	/// @DnDArgument : "instvar_1" "1"
	x += _xadd;
	y += _yadd;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CE92633
	/// @DnDParent : 07D5FF02
	/// @DnDArgument : "var" "rolling"
	/// @DnDArgument : "value" "false"
	if(rolling == false){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 3A8E47FA
		/// @DnDParent : 3CE92633
		/// @DnDArgument : "value" "_dir"
		/// @DnDArgument : "instvar" "12"
		image_angle = _dir;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F51FF0E
/// @DnDArgument : "var" "shell_broken"
/// @DnDArgument : "value" "false"
if(shell_broken == false){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 1300A2CA
	/// @DnDComment : Rolling
	/// @DnDParent : 5F51FF0E
	var l1300A2CA_0;l1300A2CA_0 = keyboard_check_pressed(vk_space);if (l1300A2CA_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 08F559BC
		/// @DnDParent : 1300A2CA
		/// @DnDArgument : "var" "current_energy"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(current_energy > 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F271423
			/// @DnDInput : 4
			/// @DnDParent : 08F559BC
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "roll_duration"
			/// @DnDArgument : "expr_2" "current_energy - 1"
			/// @DnDArgument : "expr_3" "energy_delay"
			/// @DnDArgument : "var" "rolling"
			/// @DnDArgument : "var_1" "roll_timer"
			/// @DnDArgument : "var_2" "current_energy"
			/// @DnDArgument : "var_3" "energy_delay_timer"
			rolling = true;
			roll_timer = roll_duration;
			current_energy = current_energy - 1;
			energy_delay_timer = energy_delay;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E1334F4
/// @DnDArgument : "var" "shell_broken"
/// @DnDArgument : "value" "false"
if(shell_broken == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 721E9954
	/// @DnDParent : 5E1334F4
	/// @DnDArgument : "var" "rolling"
	/// @DnDArgument : "value" "true"
	if(rolling == true){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0BCB0DDD
		/// @DnDParent : 721E9954
		/// @DnDArgument : "spriteind" "spr_player_rolling"
		/// @DnDSaveInfo : "spriteind" "spr_player_rolling"
		sprite_index = spr_player_rolling;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A58A679
		/// @DnDParent : 721E9954
		/// @DnDArgument : "expr" "base_speed * roll_modifier"
		/// @DnDArgument : "var" "current_speed"
		current_speed = base_speed * roll_modifier;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3231B7FA
		/// @DnDParent : 721E9954
		/// @DnDArgument : "var" "power_shell"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "1"
		if(!(power_shell == 1)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 65668E03
			/// @DnDParent : 3231B7FA
			/// @DnDArgument : "expr" "-15"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "image_angle"
			image_angle += -15;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 335A0C09
		/// @DnDParent : 721E9954
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 752DA988
			/// @DnDParent : 335A0C09
			/// @DnDArgument : "expr" "-5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "image_angle"
			image_angle += -5;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1A1D1B46
	/// @DnDParent : 5E1334F4
	else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 68D2A763
		/// @DnDParent : 1A1D1B46
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71EE39EF
/// @DnDArgument : "var" "roll_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(roll_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 432D88A4
	/// @DnDParent : 71EE39EF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "rolling"
	rolling = false;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 593B4833
/// @DnDArgument : "var" "current_shell_points"
/// @DnDArgument : "op" "3"
if(current_shell_points <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4945A8E6
	/// @DnDInput : 3
	/// @DnDParent : 593B4833
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "shell_broken"
	/// @DnDArgument : "var_1" "rolling"
	/// @DnDArgument : "var_2" "roll_timer"
	shell_broken = true;
	rolling = false;
	roll_timer = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 224E85AC
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "op" "3"
if(current_health <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 46D260C9
	/// @DnDParent : 224E85AC
	sprite_index = noone;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43E00F97
/// @DnDComment : level up
/// @DnDArgument : "var" "biomass_points"
/// @DnDArgument : "value" "to_next_level"
if(biomass_points == to_next_level){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 106305EB
	/// @DnDInput : 2
	/// @DnDParent : 43E00F97
	/// @DnDArgument : "expr" "player_level + 1"
	/// @DnDArgument : "expr_1" "to_next_level + 10"
	/// @DnDArgument : "var" "player_level"
	/// @DnDArgument : "var_1" "to_next_level"
	player_level = player_level + 1;
	to_next_level = to_next_level + 10;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41F73BA6
/// @DnDComment : Slime pen weapon type
/// @DnDArgument : "var" "weapon_type_pen"
/// @DnDArgument : "value" "true"
if(weapon_type_pen == true){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 4EEC821C
	/// @DnDParent : 41F73BA6
	var l4EEC821C_0;l4EEC821C_0 = mouse_check_button(mb_left);if (l4EEC821C_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 30516274
		/// @DnDParent : 4EEC821C
		/// @DnDArgument : "xpos" "mouse_x"
		/// @DnDArgument : "ypos" "mouse_y"
		/// @DnDArgument : "objectid" "obj_slime_trail"
		/// @DnDSaveInfo : "objectid" "obj_slime_trail"
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_slime_trail);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BB96A9C
/// @DnDComment : Slime trail weapon type
/// @DnDArgument : "var" "weapon_type_slime"
/// @DnDArgument : "value" "true"
if(weapon_type_slime == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02D5DEE0
	/// @DnDComment : Make slime trail when moving
	/// @DnDParent : 6BB96A9C
	/// @DnDArgument : "var" "current_speed"
	/// @DnDArgument : "op" "2"
	if(current_speed > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 434F22AA
		/// @DnDParent : 02D5DEE0
		/// @DnDArgument : "var" "rolling"
		/// @DnDArgument : "value" "false"
		if(rolling == false){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3763B0B3
			/// @DnDParent : 434F22AA
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "slime"
			/// @DnDArgument : "objectid" "obj_slime_trail"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_slime_trail"
			slime = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_slime_trail);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1F9E80B2
			/// @DnDParent : 434F22AA
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_slime_glow"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_slime_glow"
			instance_create_layer(x + 0, y + 0, "Instances_particles", obj_slime_glow);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2756A87A
			/// @DnDParent : 434F22AA
			/// @DnDArgument : "expr" "obj_player.direction"
			/// @DnDArgument : "var" "slime.image_angle"
			slime.image_angle = obj_player.direction;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37123BAB
/// @DnDComment : bullet weapon type
/// @DnDArgument : "var" "weapon_type_bullet"
/// @DnDArgument : "value" "true"
if(weapon_type_bullet == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 398694AA
	/// @DnDParent : 37123BAB
	/// @DnDArgument : "var" "rolling"
	/// @DnDArgument : "value" "false"
	if(rolling == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EB97273
		/// @DnDParent : 398694AA
		/// @DnDArgument : "var" "player_moving"
		/// @DnDArgument : "value" "true"
		if(player_moving == true){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 104395CD
			/// @DnDParent : 0EB97273
			/// @DnDArgument : "expr" "bullet_cooldown - moving_fire_rate"
			/// @DnDArgument : "var" "bullet_cooldown"
			bullet_cooldown = bullet_cooldown - moving_fire_rate;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2F1FF945
		/// @DnDParent : 398694AA
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3EF88210
			/// @DnDParent : 2F1FF945
			/// @DnDArgument : "expr" "bullet_cooldown - 1"
			/// @DnDArgument : "var" "bullet_cooldown"
			bullet_cooldown = bullet_cooldown - 1;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BDB5187
		/// @DnDParent : 398694AA
		/// @DnDArgument : "var" "bullet_cooldown"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(bullet_cooldown < 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1A79A577
			/// @DnDParent : 4BDB5187
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 39DC1587
			/// @DnDParent : 4BDB5187
			/// @DnDArgument : "cond" "i < bullet_projectile_count"
			for(i = 0; i < bullet_projectile_count; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 57B3E081
				/// @DnDParent : 39DC1587
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "bullet"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_bullet"
				/// @DnDSaveInfo : "objectid" "obj_bullet"
				var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 25BB79AD
				/// @DnDParent : 39DC1587
				/// @DnDArgument : "expr" "+ bullet_spread * i"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "bullet.direction"
				bullet.direction += + bullet_spread * i;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0B1CE66B
				/// @DnDParent : 39DC1587
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "bullet"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_bullet"
				/// @DnDSaveInfo : "objectid" "obj_bullet"
				var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2533B550
				/// @DnDParent : 39DC1587
				/// @DnDArgument : "expr" "-bullet_spread * i"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "bullet.direction"
				bullet.direction += -bullet_spread * i;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12297EB3
			/// @DnDParent : 4BDB5187
			/// @DnDArgument : "expr" "60/bullet_fire_rate"
			/// @DnDArgument : "var" "bullet_cooldown"
			bullet_cooldown = 60/bullet_fire_rate;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AB9E23B
/// @DnDComment : Spore mine weapon type
/// @DnDArgument : "var" "weapon_type_spore"
/// @DnDArgument : "value" "true"
if(weapon_type_spore == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62B9A400
	/// @DnDParent : 6AB9E23B
	/// @DnDArgument : "expr" "spore_cooldown - spore_growth"
	/// @DnDArgument : "var" "spore_cooldown"
	spore_cooldown = spore_cooldown - spore_growth;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04585E52
	/// @DnDParent : 6AB9E23B
	/// @DnDArgument : "var" "spore_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(spore_cooldown < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A754AFA
		/// @DnDParent : 04585E52
		/// @DnDArgument : "var" "launch_spore"
		/// @DnDArgument : "op" "2"
		if(launch_spore > 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3116E934
			/// @DnDParent : 3A754AFA
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_spore_mine"
			/// @DnDArgument : "layer" ""Instance_top""
			/// @DnDSaveInfo : "objectid" "obj_spore_mine"
			instance_create_layer(x + 0, y + 0, "Instance_top", obj_spore_mine);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3EB94728
			/// @DnDParent : 3A754AFA
			/// @DnDArgument : "expr" "launch_spore - 1"
			/// @DnDArgument : "var" "launch_spore"
			launch_spore = launch_spore - 1;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57AC458B
		/// @DnDParent : 04585E52
		/// @DnDArgument : "var" "launch_spore"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(launch_spore < 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E2AB7D1
			/// @DnDInput : 2
			/// @DnDParent : 57AC458B
			/// @DnDArgument : "expr" "spore_launch_time"
			/// @DnDArgument : "expr_1" "spores_count"
			/// @DnDArgument : "var" "spore_cooldown"
			/// @DnDArgument : "var_1" "launch_spore"
			spore_cooldown = spore_launch_time;
			launch_spore = spores_count;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17068B3D
/// @DnDComment : Blazing thruster weapon type
/// @DnDArgument : "var" "weapon_type_blaze"
/// @DnDArgument : "value" "true"
if(weapon_type_blaze == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B9F6A76
	/// @DnDParent : 17068B3D
	/// @DnDArgument : "var" "fireball_cooldown"
	/// @DnDArgument : "op" "2"
	if(fireball_cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2295B109
		/// @DnDParent : 0B9F6A76
		/// @DnDArgument : "expr" "- 1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "fireball_cooldown"
		fireball_cooldown += - 1;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52AF34BC
	/// @DnDParent : 17068B3D
	/// @DnDArgument : "var" "current_speed"
	/// @DnDArgument : "op" "2"
	if(current_speed > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F72EBC9
		/// @DnDParent : 52AF34BC
		/// @DnDArgument : "var" "fireball_cooldown"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(fireball_cooldown < 1){	/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 36D4B995
			/// @DnDParent : 3F72EBC9
			/// @DnDArgument : "times" "fireball_count"
			repeat(fireball_count){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7DDECB88
				/// @DnDParent : 36D4B995
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_blazing_fireball"
				/// @DnDSaveInfo : "objectid" "obj_blazing_fireball"
				instance_create_layer(x + 0, y + 0, "Instances", obj_blazing_fireball);}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 41C983CB
			/// @DnDParent : 3F72EBC9
			/// @DnDArgument : "expr" "fireball_fire_rate"
			/// @DnDArgument : "var" "fireball_cooldown"
			fireball_cooldown = fireball_fire_rate;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 196C91DE
/// @DnDComment : Freeze aura weapon type
/// @DnDArgument : "var" "weapon_type_freeze"
/// @DnDArgument : "value" "true"
if(weapon_type_freeze == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E2962C1
	/// @DnDParent : 196C91DE
	/// @DnDArgument : "var" "freeze_aura_active"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(freeze_aura_active == true)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 37A33A18
		/// @DnDParent : 7E2962C1
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_freeze_aura"
		/// @DnDArgument : "layer" ""Instance_top""
		/// @DnDSaveInfo : "objectid" "obj_freeze_aura"
		instance_create_layer(x + 0, y + 0, "Instance_top", obj_freeze_aura);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4939A5E9
		/// @DnDParent : 7E2962C1
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "freeze_aura_active"
		freeze_aura_active = true;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2714D25E
/// @DnDArgument : "var" "power_shell"
/// @DnDArgument : "value" "1"
if(power_shell == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A62F372
	/// @DnDInput : 2
	/// @DnDParent : 2714D25E
	/// @DnDArgument : "expr" "1.25"
	/// @DnDArgument : "expr_1" "90"
	/// @DnDArgument : "var" "roll_modifier"
	/// @DnDArgument : "var_1" "roll_duration"
	roll_modifier = 1.25;
	roll_duration = 90;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0351A49E
	/// @DnDParent : 2714D25E
	/// @DnDArgument : "var" "rolling"
	/// @DnDArgument : "value" "true"
	if(rolling == true){	/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 053B6A6E
		/// @DnDParent : 0351A49E
		/// @DnDArgument : "cond" "i < 2"
		for(i = 0; i < 2; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4EB2C814
			/// @DnDParent : 053B6A6E
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "slime"
			/// @DnDArgument : "objectid" "obj_slime_trail"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_slime_trail"
			slime = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_slime_trail);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 509E4342
			/// @DnDInput : 2
			/// @DnDParent : 053B6A6E
			/// @DnDArgument : "expr" "obj_player.image_angle + 180 * i"
			/// @DnDArgument : "expr_1" "30"
			/// @DnDArgument : "var" "slime.direction"
			/// @DnDArgument : "var_1" "slime.speed"
			slime.direction = obj_player.image_angle + 180 * i;
			slime.speed = 30;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6DD087C5
			/// @DnDParent : 053B6A6E
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "slime"
			/// @DnDArgument : "objectid" "obj_slime_glow"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_slime_glow"
			slime = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_slime_glow);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0EC51DC8
			/// @DnDInput : 2
			/// @DnDParent : 053B6A6E
			/// @DnDArgument : "expr" "obj_player.image_angle + 180 * i"
			/// @DnDArgument : "expr_1" "30"
			/// @DnDArgument : "var" "slime.direction"
			/// @DnDArgument : "var_1" "slime.speed"
			slime.direction = obj_player.image_angle + 180 * i;
			slime.speed = 30;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2258EBEA
	/// @DnDParent : 2714D25E
	/// @DnDArgument : "var" "shell_broken"
	/// @DnDArgument : "value" "true"
	if(shell_broken == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41604FCC
		/// @DnDInput : 3
		/// @DnDParent : 2258EBEA
		/// @DnDArgument : "expr" "60"
		/// @DnDArgument : "expr_1" "1.5"
		/// @DnDArgument : "var" "roll_duration"
		/// @DnDArgument : "var_1" "roll_timer"
		/// @DnDArgument : "var_2" "power_shell"
		roll_duration = 60;
		roll_timer = 1.5;
		power_shell = 0;}}
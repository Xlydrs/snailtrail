/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44C668A5
/// @DnDArgument : "var" "attack_phase"
/// @DnDArgument : "value" ""lunging""
if(attack_phase == "lunging"){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CA735D7
	/// @DnDParent : 44C668A5
	/// @DnDArgument : "var" "attack_duration"
	/// @DnDArgument : "op" "2"
	if(attack_duration > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 628DB3DC
		/// @DnDParent : 5CA735D7
		/// @DnDArgument : "var" "hit_player"
		/// @DnDArgument : "value" "false"
		if(hit_player == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A624A2D
			/// @DnDParent : 628DB3DC
			/// @DnDArgument : "var" "obj_player.shell_broken"
			/// @DnDArgument : "value" "false"
			if(obj_player.shell_broken == false){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5C26B04B
				/// @DnDInput : 2
				/// @DnDParent : 2A624A2D
				/// @DnDArgument : "expr" "- base_damage"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "obj_player.shell_regrowth / 2"
				/// @DnDArgument : "var" "obj_player.current_shell_points"
				/// @DnDArgument : "var_1" "obj_player.shell_regrowth"
				obj_player.current_shell_points += - base_damage;
				obj_player.shell_regrowth = obj_player.shell_regrowth / 2;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0A438F3E
			/// @DnDParent : 628DB3DC
			else{	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0151E558
				/// @DnDParent : 0A438F3E
				/// @DnDArgument : "var" "obj_player.shell_broken"
				/// @DnDArgument : "value" "true"
				if(obj_player.shell_broken == true){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3B30206C
					/// @DnDInput : 3
					/// @DnDParent : 0151E558
					/// @DnDArgument : "expr" "- base_damage"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "expr_1" "obj_player.shell_regrowth / 2"
					/// @DnDArgument : "var" "obj_player.current_health"
					/// @DnDArgument : "var_1" "obj_player.shell_regrowth"
					/// @DnDArgument : "var_2" "obj_player.health_delay_timer"
					obj_player.current_health += - base_damage;
					obj_player.shell_regrowth = obj_player.shell_regrowth / 2;
					obj_player.health_delay_timer = 0;}}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12F0F006
			/// @DnDParent : 628DB3DC
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "hit_player"
			hit_player = true;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B552579
/// @DnDArgument : "var" "obj_player.rolling"
/// @DnDArgument : "value" "true"
if(obj_player.rolling == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D1B8EE9
	/// @DnDParent : 5B552579
	/// @DnDArgument : "var" "collision_iframes"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(collision_iframes < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 691FF593
		/// @DnDInput : 2
		/// @DnDParent : 2D1B8EE9
		/// @DnDArgument : "expr" "current_health - obj_player.roll_damage / 2"
		/// @DnDArgument : "expr_1" "30"
		/// @DnDArgument : "var" "current_health"
		/// @DnDArgument : "var_1" "collision_iframes"
		current_health = current_health - obj_player.roll_damage / 2;
		collision_iframes = 30;}}
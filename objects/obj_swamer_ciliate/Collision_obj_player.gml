/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 651763CE
/// @DnDArgument : "var" "attack_duration"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(attack_duration > 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 563E38EB
	/// @DnDParent : 651763CE
	/// @DnDArgument : "var" "hit_player"
	/// @DnDArgument : "value" "false"
	if(hit_player == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6307BC76
		/// @DnDParent : 563E38EB
		/// @DnDArgument : "var" "obj_player.shell_broken"
		/// @DnDArgument : "value" "true"
		if(obj_player.shell_broken == true){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E4BAC12
			/// @DnDInput : 3
			/// @DnDParent : 6307BC76
			/// @DnDArgument : "expr" "- base_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "true"
			/// @DnDArgument : "var" "obj_player.current_health"
			/// @DnDArgument : "var_1" "hit_player"
			/// @DnDArgument : "var_2" "obj_player.health_delay_timer"
			obj_player.current_health += - base_damage;
			hit_player = true;
			obj_player.health_delay_timer = 0;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 42AAD774
		/// @DnDParent : 563E38EB
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D0BDD70
			/// @DnDParent : 42AAD774
			/// @DnDArgument : "var" "obj_player.shell_broken"
			/// @DnDArgument : "value" "false"
			if(obj_player.shell_broken == false){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 61B95582
				/// @DnDInput : 3
				/// @DnDParent : 6D0BDD70
				/// @DnDArgument : "expr" "- base_damage"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "true"
				/// @DnDArgument : "expr_2" "obj_player.shell_regrowth * 0.5"
				/// @DnDArgument : "var" "obj_player.current_shell_points"
				/// @DnDArgument : "var_1" "hit_player"
				/// @DnDArgument : "var_2" "obj_player.shell_regrowth"
				obj_player.current_shell_points += - base_damage;
				hit_player = true;
				obj_player.shell_regrowth = obj_player.shell_regrowth * 0.5;}}}}

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
		/// @DnDInput : 3
		/// @DnDParent : 2D1B8EE9
		/// @DnDArgument : "expr" "obj_player.stun_duration"
		/// @DnDArgument : "expr_1" "current_health - obj_player.roll_damage"
		/// @DnDArgument : "expr_2" "30"
		/// @DnDArgument : "var" "stun_timer"
		/// @DnDArgument : "var_1" "current_health"
		/// @DnDArgument : "var_2" "collision_iframes"
		stun_timer = obj_player.stun_duration;
		current_health = current_health - obj_player.roll_damage;
		collision_iframes = 30;}}
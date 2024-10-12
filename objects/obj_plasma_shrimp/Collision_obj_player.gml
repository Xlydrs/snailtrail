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
	if(collision_iframes < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0BCF031F
		/// @DnDParent : 2D1B8EE9
		/// @DnDArgument : "var" "plasma_shield_points"
		/// @DnDArgument : "op" "2"
		if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 36285E23
			/// @DnDParent : 0BCF031F
			/// @DnDArgument : "expr" " - obj_player.roll_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "plasma_shield_points"
			plasma_shield_points +=  - obj_player.roll_damage;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 78D783F5
		/// @DnDParent : 2D1B8EE9
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5384D325
			/// @DnDParent : 78D783F5
			/// @DnDArgument : "expr" " - obj_player.roll_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "current_health"
			current_health +=  - obj_player.roll_damage;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 691FF593
		/// @DnDInput : 2
		/// @DnDParent : 2D1B8EE9
		/// @DnDArgument : "expr" "obj_player.stun_duration"
		/// @DnDArgument : "expr_1" "30"
		/// @DnDArgument : "var" "stun_timer"
		/// @DnDArgument : "var_1" "collision_iframes"
		stun_timer = obj_player.stun_duration;
		collision_iframes = 30;}}
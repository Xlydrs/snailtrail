/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E64CA39
/// @DnDComment : debuff countdowns
/// @DnDArgument : "var" "poison_cooldown"
/// @DnDArgument : "op" "2"
if(poison_cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3173F7B9
	/// @DnDParent : 0E64CA39
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "poison_cooldown"
	poison_cooldown += -1;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 234307F3
/// @DnDComment : turning variables
/// @DnDInput : 2
/// @DnDArgument : "expr" "point_direction(x, y, obj_player.x, obj_player.y)"
/// @DnDArgument : "expr_1" "angle_difference(direction, target_direction) "
/// @DnDArgument : "var" "target_direction"
/// @DnDArgument : "var_1" "angle_diff"
target_direction = point_direction(x, y, obj_player.x, obj_player.y);
angle_diff = angle_difference(direction, target_direction) ;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E938AED
/// @DnDComment : turning mechanic
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42F2B988
	/// @DnDParent : 2E938AED
	/// @DnDArgument : "var" "abs(angle_diff)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "turn_speed"
	if(abs(angle_diff) <= turn_speed){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1894DC96
		/// @DnDParent : 42F2B988
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3ACB08FD
	/// @DnDParent : 2E938AED
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A772E21
		/// @DnDParent : 3ACB08FD
		/// @DnDArgument : "var" "angle_diff"
		/// @DnDArgument : "op" "2"
		if(angle_diff > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 19636A9F
			/// @DnDParent : 1A772E21
			/// @DnDArgument : "expr" "- turn_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "direction"
			direction += - turn_speed;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6CC2B35D
		/// @DnDParent : 3ACB08FD
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 309F6EE0
			/// @DnDParent : 6CC2B35D
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "1"
			if(angle_diff < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 69DE812A
				/// @DnDParent : 309F6EE0
				/// @DnDArgument : "expr" "+ turn_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += + turn_speed;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 581FE02F
/// @DnDArgument : "var" "ignite_cooldown"
/// @DnDArgument : "op" "2"
if(ignite_cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44CA9F04
	/// @DnDParent : 581FE02F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ignite_cooldown"
	ignite_cooldown += -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F8AA407
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F69B03E
	/// @DnDParent : 7F8AA407
	/// @DnDArgument : "expr" "direction"
	/// @DnDArgument : "var" "image_angle"
	image_angle = direction;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D9F51D0
	/// @DnDParent : 7F8AA407
	/// @DnDArgument : "var" "attacking"
	/// @DnDArgument : "value" "false"
	if(attacking == false){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 66644D7B
		/// @DnDParent : 1D9F51D0
		/// @DnDArgument : "speed" "base_speed"
		speed = base_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 69AF1CEB
else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 526CEE3B
	/// @DnDParent : 69AF1CEB
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E32263F
	/// @DnDParent : 69AF1CEB
	/// @DnDArgument : "expr" "stun_timer - 1"
	/// @DnDArgument : "var" "stun_timer"
	stun_timer = stun_timer - 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73D870FE
/// @DnDArgument : "var" "attack_phase"
/// @DnDArgument : "value" ""lunging""
if(attack_phase == "lunging"){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53F65125
	/// @DnDParent : 73D870FE
	/// @DnDArgument : "var" "attacking"
	/// @DnDArgument : "value" "false"
	if(attacking == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 636D9099
		/// @DnDParent : 53F65125
		/// @DnDArgument : "var" "abs(angle_diff)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "30"
		if(abs(angle_diff) < 30){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1E40B1C2
			/// @DnDParent : 636D9099
			/// @DnDArgument : "var" "point_distance(x, y, obj_player.x, obj_player.y)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "700"
			if(point_distance(x, y, obj_player.x, obj_player.y) < 700){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 796DEA05
				/// @DnDInput : 2
				/// @DnDParent : 1E40B1C2
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "expr_1" "120"
				/// @DnDArgument : "var" "attacking"
				/// @DnDArgument : "var_1" "attack_windup"
				attacking = true;
				attack_windup = 120;}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D00B88C
	/// @DnDParent : 73D870FE
	/// @DnDArgument : "var" "attacking"
	/// @DnDArgument : "value" "true"
	if(attacking == true){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 093870BF
		/// @DnDParent : 0D00B88C
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(speed > 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 6349C898
			/// @DnDParent : 093870BF
			/// @DnDArgument : "speed" "speed * 0.99"
			speed = speed * 0.99;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77B71838
		/// @DnDParent : 0D00B88C
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "attack_windup"
		attack_windup += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A26A399
		/// @DnDParent : 0D00B88C
		/// @DnDArgument : "var" "attack_windup"
		/// @DnDArgument : "value" "1"
		if(attack_windup == 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 282259A6
			/// @DnDInput : 3
			/// @DnDParent : 0A26A399
			/// @DnDArgument : "expr" "90"
			/// @DnDArgument : "expr_1" "irandom_range(7, 10)"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "attack_duration"
			/// @DnDArgument : "var_1" "spawn_queue_swarm_ciliate"
			/// @DnDArgument : "var_2" "hit_player"
			attack_duration = 90;
			spawn_queue_swarm_ciliate = irandom_range(7, 10);
			hit_player = false;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23138D4F
		/// @DnDParent : 0D00B88C
		/// @DnDArgument : "var" "attack_windup"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(attack_windup < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 04931FB0
			/// @DnDParent : 23138D4F
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "lunge_speed"
			if(speed < lunge_speed){	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 7AF69ECA
				/// @DnDParent : 04931FB0
				/// @DnDArgument : "speed" "speed * 1.1"
				speed = speed * 1.1;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5EB22EA0
			/// @DnDParent : 23138D4F
			else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 7CA519B1
				/// @DnDParent : 5EB22EA0
				/// @DnDArgument : "speed" "lunge_speed"
				speed = lunge_speed;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 35D582F2
			/// @DnDInput : 2
			/// @DnDParent : 23138D4F
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "0.5"
			/// @DnDArgument : "var" "attack_duration"
			/// @DnDArgument : "var_1" "turn_speed"
			attack_duration += -1;
			turn_speed = 0.5;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76953703
			/// @DnDParent : 23138D4F
			/// @DnDArgument : "var" "attack_duration"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "1"
			if(attack_duration < 1){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 504CBDBE
				/// @DnDInput : 3
				/// @DnDParent : 76953703
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "1.5"
				/// @DnDArgument : "expr_2" "false"
				/// @DnDArgument : "var" "attacking"
				/// @DnDArgument : "var_1" "turn_speed"
				/// @DnDArgument : "var_2" "hit_player"
				attacking = false;
				turn_speed = 1.5;
				hit_player = false;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1A04DA4F
				/// @DnDParent : 76953703
				/// @DnDArgument : "expr" "+1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "attack_count"
				attack_count += +1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 430C9F0C
				/// @DnDParent : 76953703
				/// @DnDArgument : "var" "speed"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "base_speed"
				if(speed > base_speed){	/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 2E06C28A
					/// @DnDParent : 430C9F0C
					/// @DnDArgument : "speed" "speed * 0.99"
					speed = speed * 0.99;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 18D696BA
				/// @DnDParent : 76953703
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1EAECF4D
					/// @DnDParent : 18D696BA
					/// @DnDArgument : "expr" "base_speed"
					/// @DnDArgument : "var" "speed"
					speed = base_speed;}}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AD5CAF8
		/// @DnDParent : 0D00B88C
		/// @DnDArgument : "var" "attack_count"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "3"
		if(attack_count >= 3){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 709DA581
			/// @DnDInput : 2
			/// @DnDParent : 0AD5CAF8
			/// @DnDArgument : "expr" ""shooting""
			/// @DnDArgument : "var" "attack_phase"
			/// @DnDArgument : "var_1" "attack_count"
			attack_phase = "shooting";
			attack_count = 0;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 392E80DA
/// @DnDComment : spawn swarm ciliate
/// @DnDArgument : "var" "spawn_queue_swarm_ciliate"
/// @DnDArgument : "op" "2"
if(spawn_queue_swarm_ciliate > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CB1FB43
	/// @DnDParent : 392E80DA
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ciliate_spawn_timer"
	ciliate_spawn_timer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EDA0301
	/// @DnDParent : 392E80DA
	/// @DnDArgument : "var" "ciliate_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ciliate_spawn_timer < 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6139F425
		/// @DnDParent : 3EDA0301
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "instance"
		/// @DnDArgument : "objectid" "obj_swamer_ciliate"
		/// @DnDSaveInfo : "objectid" "obj_swamer_ciliate"
		instance = instance_create_layer(x + 0, y + 0, "Instances", obj_swamer_ciliate);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4885E820
		/// @DnDParent : 3EDA0301
		/// @DnDArgument : "expr" "direction + 180 + random_range(-45, 45)"
		/// @DnDArgument : "var" "instance.direction"
		instance.direction = direction + 180 + random_range(-45, 45);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E85A7B2
		/// @DnDInput : 2
		/// @DnDParent : 3EDA0301
		/// @DnDArgument : "expr" "irandom_range(5, 10)"
		/// @DnDArgument : "expr_1" "- 1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "ciliate_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_swarm_ciliate"
		ciliate_spawn_timer = irandom_range(5, 10);
		spawn_queue_swarm_ciliate += - 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 637B30A6
/// @DnDArgument : "var" "attack_phase"
/// @DnDArgument : "value" ""shooting""
if(attack_phase == "shooting"){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30AC1505
	/// @DnDParent : 637B30A6
	/// @DnDArgument : "expr" "1.5"
	/// @DnDArgument : "var" "turn_speed"
	turn_speed = 1.5;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19E20F30
	/// @DnDParent : 637B30A6
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "base_speed / 2"
	if(speed > base_speed / 2){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3F0AAF90
		/// @DnDParent : 19E20F30
		/// @DnDArgument : "speed" "speed * 0.99"
		speed = speed * 0.99;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 37F5A08D
	/// @DnDParent : 637B30A6
	else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0CEF306A
		/// @DnDParent : 37F5A08D
		/// @DnDArgument : "speed" "base_speed / 2"
		speed = base_speed / 2;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76D97FD7
	/// @DnDParent : 637B30A6
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "attack_cooldown"
	attack_cooldown += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78D67CBB
	/// @DnDParent : 637B30A6
	/// @DnDArgument : "var" "attack_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(attack_cooldown < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03603FD8
		/// @DnDParent : 78D67CBB
		/// @DnDArgument : "var" "abs(angle_diff)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "15"
		if(abs(angle_diff) < 15){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78502641
			/// @DnDInput : 2
			/// @DnDParent : 03603FD8
			/// @DnDArgument : "expr" "120"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "attack_cooldown"
			/// @DnDArgument : "var_1" "attack_count"
			attack_cooldown = 120;
			attack_count += +1;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3AD6DC21
			/// @DnDParent : 03603FD8
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "objectid" "obj_hunter_ciliate"
			/// @DnDSaveInfo : "objectid" "obj_hunter_ciliate"
			bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_hunter_ciliate);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43496FB2
			/// @DnDInput : 5
			/// @DnDParent : 03603FD8
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "direction"
			/// @DnDArgument : "expr_2" "10"
			/// @DnDArgument : "expr_4" "120"
			/// @DnDArgument : "var" "bullet.attacking"
			/// @DnDArgument : "var_1" "bullet.direction"
			/// @DnDArgument : "var_2" "bullet.speed"
			/// @DnDArgument : "var_3" "bullet.attack_windup"
			/// @DnDArgument : "var_4" "bullet.attack_duration"
			bullet.attacking = true;
			bullet.direction = direction;
			bullet.speed = 10;
			bullet.attack_windup = 0;
			bullet.attack_duration = 120;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C5AA1FA
	/// @DnDParent : 637B30A6
	/// @DnDArgument : "var" "attack_count"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(attack_count >= 5){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71ADFCB0
		/// @DnDInput : 3
		/// @DnDParent : 4C5AA1FA
		/// @DnDArgument : "expr" ""lunging""
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "attack_phase"
		/// @DnDArgument : "var_1" "attack_count"
		/// @DnDArgument : "var_2" "attacking"
		attack_phase = "lunging";
		attack_count = 0;
		attacking = false;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12D53CD6
/// @DnDComment : poisoned
/// @DnDArgument : "var" "poison_remaining"
/// @DnDArgument : "op" "2"
if(poison_remaining > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 146289C8
	/// @DnDParent : 12D53CD6
	/// @DnDArgument : "var" "poison_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(poison_cooldown < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 588A49DD
		/// @DnDParent : 146289C8
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "true"
		if(initial_poison_tick == true){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 363DCB45
			/// @DnDInput : 4
			/// @DnDParent : 588A49DD
			/// @DnDArgument : "expr" "- 2 * obj_player.poison_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "60 /obj_player.poison_tick_rate"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "expr_3" "-1"
			/// @DnDArgument : "expr_relative_3" "1"
			/// @DnDArgument : "var" "current_health"
			/// @DnDArgument : "var_1" "poison_cooldown"
			/// @DnDArgument : "var_2" "initial_poison_tick"
			/// @DnDArgument : "var_3" "poison_remaining"
			current_health += - 2 * obj_player.poison_damage;
			poison_cooldown = 60 /obj_player.poison_tick_rate;
			initial_poison_tick = false;
			poison_remaining += -1;
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 5A9B46C6
			/// @DnDParent : 588A49DD
			/// @DnDArgument : "times" "16 * obj_player.poison_damage"
			repeat(16 * obj_player.poison_damage){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2477D7E7
				/// @DnDParent : 5A9B46C6
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3BF8806B
				/// @DnDParent : 5A9B46C6
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 10;}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6785853A
		/// @DnDParent : 146289C8
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "false"
		if(initial_poison_tick == false){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12CFC31E
			/// @DnDInput : 3
			/// @DnDParent : 6785853A
			/// @DnDArgument : "expr" "current_health - obj_player.poison_damage"
			/// @DnDArgument : "expr_1" "60/obj_player.poison_tick_rate"
			/// @DnDArgument : "expr_2" "-1"
			/// @DnDArgument : "expr_relative_2" "1"
			/// @DnDArgument : "var" "current_health"
			/// @DnDArgument : "var_1" "poison_cooldown"
			/// @DnDArgument : "var_2" "poison_remaining"
			current_health = current_health - obj_player.poison_damage;
			poison_cooldown = 60/obj_player.poison_tick_rate;
			poison_remaining += -1;
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 1BD9B72D
			/// @DnDParent : 6785853A
			/// @DnDArgument : "times" "8 * obj_player.poison_damage"
			repeat(8 * obj_player.poison_damage){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 524172E2
				/// @DnDParent : 1BD9B72D
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 24388A84
				/// @DnDParent : 1BD9B72D
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 10;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 199991D3
/// @DnDComment : burned
/// @DnDArgument : "var" "ignite_remaining"
/// @DnDArgument : "op" "2"
if(ignite_remaining > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12B29C58
	/// @DnDParent : 199991D3
	/// @DnDArgument : "var" "ignite_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ignite_cooldown < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 712BE334
		/// @DnDInput : 3
		/// @DnDParent : 12B29C58
		/// @DnDArgument : "expr" "- obj_player.burn_damage"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "60 / obj_player.ignite_tick_rate"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "current_health"
		/// @DnDArgument : "var_1" "ignite_cooldown"
		/// @DnDArgument : "var_2" "ignite_remaining"
		current_health += - obj_player.burn_damage;
		ignite_cooldown = 60 / obj_player.ignite_tick_rate;
		ignite_remaining += -1;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 01135931
		/// @DnDParent : 12B29C58
		/// @DnDArgument : "times" "12"
		repeat(12){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3BC0AFFC
			/// @DnDParent : 01135931
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "fire_particle"
			/// @DnDArgument : "objectid" "obj_fire_particle"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_fire_particle"
			fire_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_fire_particle);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1E3D2212
			/// @DnDParent : 01135931
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "var" "fire_particle.speed"
			fire_particle.speed = 5;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 103920E5
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "op" "3"
if(current_health <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D131964
	/// @DnDParent : 103920E5
	/// @DnDArgument : "expr" "+ 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.biomass_points"
	obj_player.biomass_points += + 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5AE0ADFA
	/// @DnDParent : 103920E5
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42FD4020
/// @DnDArgument : "var" "collision_iframes"
/// @DnDArgument : "op" "2"
if(collision_iframes > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B5B9191
	/// @DnDParent : 42FD4020
	/// @DnDArgument : "expr" "collision_iframes - 1"
	/// @DnDArgument : "var" "collision_iframes"
	collision_iframes = collision_iframes - 1;}
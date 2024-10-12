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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26972485
/// @DnDArgument : "var" "plasma_shield_points"
/// @DnDArgument : "op" "2"
if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 282E8FA7
	/// @DnDParent : 26972485
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "attack_phase"
	attack_phase = true;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6A3B0982
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29882F3A
	/// @DnDInput : 2
	/// @DnDParent : 6A3B0982
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "attack_phase"
	/// @DnDArgument : "var_1" "vulnerability_phase"
	attack_phase = false;
	vulnerability_phase = true;}

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
/// @DnDHash : 50DB02FF
/// @DnDArgument : "var" "attack_phase"
/// @DnDArgument : "value" "true"
if(attack_phase == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E938AED
	/// @DnDComment : turning mechanic
	/// @DnDParent : 50DB02FF
	/// @DnDArgument : "var" "stun_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42B672A5
		/// @DnDParent : 2E938AED
		/// @DnDArgument : "var" "point_distance(x, y, obj_player.x, obj_player.y)"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "500"
		if(point_distance(x, y, obj_player.x, obj_player.y) > 500){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A772E21
			/// @DnDParent : 42B672A5
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "2"
			if(angle_diff > 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 19636A9F
				/// @DnDParent : 1A772E21
				/// @DnDArgument : "expr" "- random_range(-5, 10)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += - random_range(-5, 10);}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6CC2B35D
			/// @DnDParent : 42B672A5
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
					/// @DnDArgument : "expr" "+ random_range(-5, 10)"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "direction"
					direction += + random_range(-5, 10);}}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 05A2DD4A
		/// @DnDParent : 2E938AED
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A3BA8B5
			/// @DnDParent : 05A2DD4A
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "2"
			if(angle_diff > 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5DC54682
				/// @DnDParent : 4A3BA8B5
				/// @DnDArgument : "expr" "- random_range(-10, 2)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += - random_range(-10, 2);}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 4DAC29F8
			/// @DnDParent : 05A2DD4A
			else{	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 04868A59
				/// @DnDParent : 4DAC29F8
				/// @DnDArgument : "var" "angle_diff"
				/// @DnDArgument : "op" "1"
				if(angle_diff < 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 779C7BD6
					/// @DnDParent : 04868A59
					/// @DnDArgument : "expr" "+ random_range(-10, 2)"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "direction"
					direction += + random_range(-10, 2);}}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01C838CE
	/// @DnDParent : 50DB02FF
	/// @DnDArgument : "var" "plasma_shield_points"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "5"
	if(plasma_shield_points > 5){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38B9C303
		/// @DnDParent : 01C838CE
		/// @DnDArgument : "var" "attacking"
		/// @DnDArgument : "value" "true"
		if(attacking == true){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1E34C6B3
			/// @DnDParent : 38B9C303
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "attack_duration"
			attack_duration += -1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C2035FE
			/// @DnDParent : 38B9C303
			/// @DnDArgument : "var" "attack_duration"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "1"
			if(attack_duration < 1){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4AB77482
				/// @DnDInput : 2
				/// @DnDParent : 6C2035FE
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "45"
				/// @DnDArgument : "var" "attacking"
				/// @DnDArgument : "var_1" "attack_cooldown"
				attacking = false;
				attack_cooldown = 45;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6AF2AAA9
			/// @DnDParent : 38B9C303
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "base_speed * 5"
			if(speed < base_speed * 5){	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 0C02E1F0
				/// @DnDParent : 6AF2AAA9
				/// @DnDArgument : "speed" "speed * 1.1"
				speed = speed * 1.1;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 517A77FE
			/// @DnDParent : 38B9C303
			else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 0AD5BBDF
				/// @DnDParent : 517A77FE
				/// @DnDArgument : "speed" "base_speed * 5"
				speed = base_speed * 5;}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 63E12552
		/// @DnDParent : 01C838CE
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 531848E3
			/// @DnDParent : 63E12552
			/// @DnDArgument : "var" "attacking"
			/// @DnDArgument : "value" "false"
			if(attacking == false){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 26AF9FB6
				/// @DnDParent : 531848E3
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "attack_cooldown"
				attack_cooldown += -1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 391DFF0B
				/// @DnDParent : 531848E3
				/// @DnDArgument : "var" "attack_cooldown"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "1"
				if(attack_cooldown < 1){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 77F67BF1
					/// @DnDInput : 3
					/// @DnDParent : 391DFF0B
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "expr_1" "irandom_range(30, 90)"
					/// @DnDArgument : "expr_2" "-5"
					/// @DnDArgument : "expr_relative_2" "1"
					/// @DnDArgument : "var" "attacking"
					/// @DnDArgument : "var_1" "attack_duration"
					/// @DnDArgument : "var_2" "plasma_shield_points"
					attacking = true;
					attack_duration = irandom_range(30, 90);
					plasma_shield_points += -5;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5D0BC75E
					/// @DnDParent : 391DFF0B
					/// @DnDArgument : "expr" "irandom_range(1, 2)"
					/// @DnDArgument : "var" "attack_type"
					attack_type = irandom_range(1, 2);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1E7C0247
					/// @DnDParent : 391DFF0B
					/// @DnDArgument : "var" "attack_type"
					/// @DnDArgument : "value" "1"
					if(attack_type == 1){	/// @DnDAction : YoYo Games.Loops.For_Loop
						/// @DnDVersion : 1
						/// @DnDHash : 380EA585
						/// @DnDParent : 1E7C0247
						/// @DnDArgument : "cond" "i < irandom_range(6, 15)"
						for(i = 0; i < irandom_range(6, 15); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 794F05CC
							/// @DnDParent : 380EA585
							/// @DnDArgument : "xpos_relative" "1"
							/// @DnDArgument : "ypos_relative" "1"
							/// @DnDArgument : "var" "bullet"
							/// @DnDArgument : "objectid" "obj_plasma_bullet"
							/// @DnDArgument : "layer" ""Instances_projectiles""
							/// @DnDSaveInfo : "objectid" "obj_plasma_bullet"
							bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_plasma_bullet);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5EA9FF7E
							/// @DnDInput : 2
							/// @DnDParent : 380EA585
							/// @DnDArgument : "expr" "random(360)"
							/// @DnDArgument : "expr_1" "random_range(10, 30)"
							/// @DnDArgument : "var" "bullet.direction"
							/// @DnDArgument : "var_1" "bullet.speed"
							bullet.direction = random(360);
							bullet.speed = random_range(10, 30);}}
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 68D06F0E
					/// @DnDParent : 391DFF0B
					/// @DnDArgument : "var" "attack_type"
					/// @DnDArgument : "value" "2"
					if(attack_type == 2){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 38EA8942
						/// @DnDParent : 68D06F0E
						/// @DnDArgument : "expr" "irandom_range(6, 15)"
						/// @DnDArgument : "var" "bullet_queue"
						bullet_queue = irandom_range(6, 15);}}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 76FFEFEE
				/// @DnDParent : 531848E3
				/// @DnDArgument : "var" "speed"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "base_speed"
				if(speed > base_speed){	/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 085D5DCF
					/// @DnDParent : 76FFEFEE
					/// @DnDArgument : "speed" "speed * 0.9"
					speed = speed * 0.9;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 26A7556C
				/// @DnDParent : 531848E3
				else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 2DB418AC
					/// @DnDParent : 26A7556C
					/// @DnDArgument : "speed" "base_speed"
					speed = base_speed;}}}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0C23F714
	/// @DnDParent : 50DB02FF
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50507C71
		/// @DnDParent : 0C23F714
		/// @DnDArgument : "var" "plasma_shield_points"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "5"
		if(plasma_shield_points <= 5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 701F2CB1
			/// @DnDParent : 50507C71
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "plasma_burst_countdown"
			plasma_burst_countdown += -1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 050588BC
			/// @DnDParent : 50507C71
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "0.01"
			if(speed > 0.01){	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 65B5E0F7
				/// @DnDParent : 050588BC
				/// @DnDArgument : "speed" "speed * 0.8"
				speed = speed * 0.8;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 19D3C953
			/// @DnDParent : 50507C71
			else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 30E54A19
				/// @DnDParent : 19D3C953
				speed = 0;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61E1EF81
			/// @DnDParent : 50507C71
			/// @DnDArgument : "var" "plasma_burst_countdown"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "1"
			if(plasma_burst_countdown < 1){	/// @DnDAction : YoYo Games.Loops.For_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 451E27D4
				/// @DnDParent : 61E1EF81
				/// @DnDArgument : "cond" "i < 12"
				for(i = 0; i < 12; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 03B1EB37
					/// @DnDParent : 451E27D4
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "bullet"
					/// @DnDArgument : "objectid" "obj_plasma_bullet"
					/// @DnDArgument : "layer" ""Instances_projectiles""
					/// @DnDSaveInfo : "objectid" "obj_plasma_bullet"
					bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_plasma_bullet);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 575149D1
					/// @DnDInput : 2
					/// @DnDParent : 451E27D4
					/// @DnDArgument : "expr" "i * 30"
					/// @DnDArgument : "expr_1" "50"
					/// @DnDArgument : "var" "bullet.direction"
					/// @DnDArgument : "var_1" "bullet.speed"
					bullet.direction = i * 30;
					bullet.speed = 50;}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6082506F
				/// @DnDInput : 2
				/// @DnDParent : 61E1EF81
				/// @DnDArgument : "expr_1" "600"
				/// @DnDArgument : "var" "plasma_shield_points"
				/// @DnDArgument : "var_1" "vulnerability_phase_timer"
				plasma_shield_points = 0;
				vulnerability_phase_timer = 600;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 186E6C0D
/// @DnDArgument : "var" "vulnerability_phase"
/// @DnDArgument : "value" "true"
if(vulnerability_phase == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F4905A0
	/// @DnDParent : 186E6C0D
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vulnerability_phase_timer"
	vulnerability_phase_timer += -1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7A14EA9E
	/// @DnDParent : 186E6C0D
	/// @DnDArgument : "speed" "base_speed * 1.5"
	speed = base_speed * 1.5;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44C16632
	/// @DnDComment : turning mechanic
	/// @DnDParent : 186E6C0D
	/// @DnDArgument : "var" "stun_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 504B6F64
		/// @DnDParent : 44C16632
		/// @DnDArgument : "var" "angle_diff"
		/// @DnDArgument : "op" "2"
		if(angle_diff > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B5494E2
			/// @DnDParent : 504B6F64
			/// @DnDArgument : "expr" "- random_range(-10, 2)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "direction"
			direction += - random_range(-10, 2);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 10C7729A
		/// @DnDParent : 44C16632
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47CA0A2A
			/// @DnDParent : 10C7729A
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "1"
			if(angle_diff < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6FC84D79
				/// @DnDParent : 47CA0A2A
				/// @DnDArgument : "expr" "+ random_range(-10, 2)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += + random_range(-10, 2);}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31FD96C2
	/// @DnDParent : 186E6C0D
	/// @DnDArgument : "var" "vulnerability_phase_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(vulnerability_phase_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B8BE425
		/// @DnDInput : 3
		/// @DnDParent : 31FD96C2
		/// @DnDArgument : "expr" "50"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "plasma_shield_points"
		/// @DnDArgument : "var_1" "attack_phase"
		/// @DnDArgument : "var_2" "vulnerability_phase"
		plasma_shield_points = 50;
		attack_phase = true;
		vulnerability_phase = false;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 459AD576
/// @DnDArgument : "var" "bullet_queue"
/// @DnDArgument : "op" "2"
if(bullet_queue > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5379C8BB
	/// @DnDParent : 459AD576
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bullet_queue_cooldown"
	bullet_queue_cooldown += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E414620
	/// @DnDParent : 459AD576
	/// @DnDArgument : "var" "bullet_queue_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(bullet_queue_cooldown < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2777F43A
		/// @DnDParent : 5E414620
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "bullet_queue_cooldown"
		bullet_queue_cooldown = 3;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5D33B78C
		/// @DnDParent : 5E414620
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "objectid" "obj_plasma_bullet"
		/// @DnDArgument : "layer" ""Instances_projectiles""
		/// @DnDSaveInfo : "objectid" "obj_plasma_bullet"
		bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_plasma_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7733DB5D
		/// @DnDInput : 2
		/// @DnDParent : 5E414620
		/// @DnDArgument : "expr" "random(360)"
		/// @DnDArgument : "expr_1" "random_range(10, 30)"
		/// @DnDArgument : "var" "bullet.direction"
		/// @DnDArgument : "var_1" "bullet.speed"
		bullet.direction = random(360);
		bullet.speed = random_range(10, 30);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 674C69A4
		/// @DnDParent : 5E414620
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet_queue"
		bullet_queue += -1;}}

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
if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1375C092
	/// @DnDParent : 7F8AA407
	/// @DnDArgument : "var" "vulnerability_phase"
	/// @DnDArgument : "value" "false"
	if(vulnerability_phase == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28265065
		/// @DnDParent : 1375C092
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet_cooldown"
		bullet_cooldown += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10CA1119
		/// @DnDParent : 1375C092
		/// @DnDArgument : "var" "bullet_cooldown"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(bullet_cooldown < 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 35EFA59C
			/// @DnDParent : 10CA1119
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_tiny"
			/// @DnDArgument : "layer" ""Instances_projectiles""
			/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_tiny"
			bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_tiny);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F1D3855
			/// @DnDInput : 3
			/// @DnDParent : 10CA1119
			/// @DnDArgument : "expr" "obj_plasma_shrimp.direction + 180 + random_range(-15, 15)"
			/// @DnDArgument : "expr_1" "0.5"
			/// @DnDArgument : "expr_2" "15"
			/// @DnDArgument : "var" "bullet.direction"
			/// @DnDArgument : "var_1" "bullet.speed"
			/// @DnDArgument : "var_2" "bullet_cooldown"
			bullet.direction = obj_plasma_shrimp.direction + 180 + random_range(-15, 15);
			bullet.speed = 0.5;
			bullet_cooldown = 15;}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F69B03E
	/// @DnDParent : 7F8AA407
	/// @DnDArgument : "expr" "direction"
	/// @DnDArgument : "var" "image_angle"
	image_angle = direction;}

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
		if(initial_poison_tick == true){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1FAA5984
			/// @DnDParent : 588A49DD
			/// @DnDArgument : "var" "plasma_shield_points"
			/// @DnDArgument : "op" "2"
			if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 363DCB45
				/// @DnDInput : 4
				/// @DnDParent : 1FAA5984
				/// @DnDArgument : "expr" "- 2 * obj_player.poison_damage"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "60 /obj_player.poison_tick_rate"
				/// @DnDArgument : "expr_2" "false"
				/// @DnDArgument : "expr_3" "-1"
				/// @DnDArgument : "expr_relative_3" "1"
				/// @DnDArgument : "var" "plasma_shield_points"
				/// @DnDArgument : "var_1" "poison_cooldown"
				/// @DnDArgument : "var_2" "initial_poison_tick"
				/// @DnDArgument : "var_3" "poison_remaining"
				plasma_shield_points += - 2 * obj_player.poison_damage;
				poison_cooldown = 60 /obj_player.poison_tick_rate;
				initial_poison_tick = false;
				poison_remaining += -1;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 54157A08
			/// @DnDParent : 588A49DD
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 67B72089
				/// @DnDInput : 4
				/// @DnDParent : 54157A08
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
				poison_remaining += -1;}
		
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
		if(initial_poison_tick == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A1CA275
			/// @DnDParent : 6785853A
			/// @DnDArgument : "var" "plasma_shield_points"
			/// @DnDArgument : "op" "2"
			if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 56A51A60
				/// @DnDInput : 4
				/// @DnDParent : 2A1CA275
				/// @DnDArgument : "expr" "- obj_player.poison_damage"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "60 /obj_player.poison_tick_rate"
				/// @DnDArgument : "expr_2" "false"
				/// @DnDArgument : "expr_3" "-1"
				/// @DnDArgument : "expr_relative_3" "1"
				/// @DnDArgument : "var" "plasma_shield_points"
				/// @DnDArgument : "var_1" "poison_cooldown"
				/// @DnDArgument : "var_2" "initial_poison_tick"
				/// @DnDArgument : "var_3" "poison_remaining"
				plasma_shield_points += - obj_player.poison_damage;
				poison_cooldown = 60 /obj_player.poison_tick_rate;
				initial_poison_tick = false;
				poison_remaining += -1;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 202617C1
			/// @DnDParent : 6785853A
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 12CFC31E
				/// @DnDInput : 3
				/// @DnDParent : 202617C1
				/// @DnDArgument : "expr" "current_health - obj_player.poison_damage"
				/// @DnDArgument : "expr_1" "60/obj_player.poison_tick_rate"
				/// @DnDArgument : "expr_2" "-1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "var" "current_health"
				/// @DnDArgument : "var_1" "poison_cooldown"
				/// @DnDArgument : "var_2" "poison_remaining"
				current_health = current_health - obj_player.poison_damage;
				poison_cooldown = 60/obj_player.poison_tick_rate;
				poison_remaining += -1;}
		
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
	if(ignite_cooldown < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 399CE3D6
		/// @DnDParent : 12B29C58
		/// @DnDArgument : "var" "plasma_shield_points"
		/// @DnDArgument : "op" "2"
		if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 712BE334
			/// @DnDInput : 3
			/// @DnDParent : 399CE3D6
			/// @DnDArgument : "expr" "- obj_player.burn_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "60 / obj_player.ignite_tick_rate"
			/// @DnDArgument : "expr_2" "-1"
			/// @DnDArgument : "expr_relative_2" "1"
			/// @DnDArgument : "var" "plasma_shield_points"
			/// @DnDArgument : "var_1" "ignite_cooldown"
			/// @DnDArgument : "var_2" "ignite_remaining"
			plasma_shield_points += - obj_player.burn_damage;
			ignite_cooldown = 60 / obj_player.ignite_tick_rate;
			ignite_remaining += -1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6BB9BCDE
		/// @DnDParent : 12B29C58
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74304CAE
			/// @DnDInput : 3
			/// @DnDParent : 6BB9BCDE
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
			ignite_remaining += -1;}
	
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
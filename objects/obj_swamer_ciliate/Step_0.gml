/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E8963DB
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
/// @DnDHash : 4B240184
/// @DnDDisabled : 1
/// @DnDArgument : "var" "abs(angle_diff)"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "180"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A47A432
/// @DnDDisabled : 1
/// @DnDParent : 4B240184
/// @DnDArgument : "var" "direction > target_direction"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 765F5A16
/// @DnDDisabled : 1
/// @DnDParent : 5A47A432
/// @DnDArgument : "expr" "-1 * (360 - direction) + target_direction"
/// @DnDArgument : "var" "angle_diff"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 696DF035
/// @DnDDisabled : 1
/// @DnDParent : 4B240184
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3A999ED9
/// @DnDDisabled : 1
/// @DnDParent : 696DF035
/// @DnDArgument : "expr" "(360 - target_direction) + direction"
/// @DnDArgument : "var" "angle_diff"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AF67823
/// @DnDComment : turning mechanic
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E1A9666
	/// @DnDParent : 1AF67823
	/// @DnDArgument : "var" "abs(angle_diff)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "turn_speed"
	if(abs(angle_diff) <= turn_speed){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 188945FA
		/// @DnDParent : 7E1A9666
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 58A9BB68
	/// @DnDParent : 1AF67823
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29EB5BC0
		/// @DnDParent : 58A9BB68
		/// @DnDArgument : "var" "angle_diff"
		/// @DnDArgument : "op" "2"
		if(angle_diff > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4984CE47
			/// @DnDParent : 29EB5BC0
			/// @DnDArgument : "expr" "- turn_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "direction"
			direction += - turn_speed;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3145437F
		/// @DnDParent : 58A9BB68
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 481A69A1
			/// @DnDParent : 3145437F
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "1"
			if(angle_diff < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 43EB206E
				/// @DnDParent : 481A69A1
				/// @DnDArgument : "expr" "+ turn_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += + turn_speed;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F67F679
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "false"
if(attacking == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 720F2193
	/// @DnDParent : 5F67F679
	/// @DnDArgument : "var" "abs(angle_diff)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "20"
	if(abs(angle_diff) < 20){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68A11B27
		/// @DnDParent : 720F2193
		/// @DnDArgument : "var" "point_distance(x, y, obj_player.x, obj_player.y)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "300"
		if(point_distance(x, y, obj_player.x, obj_player.y) < 300){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68B04EB2
			/// @DnDInput : 2
			/// @DnDParent : 68A11B27
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "60"
			/// @DnDArgument : "var" "attacking"
			/// @DnDArgument : "var_1" "attack_windup"
			attacking = true;
			attack_windup = 60;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 758EEE7E
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "true"
if(attacking == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68FCB319
	/// @DnDParent : 758EEE7E
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1.5"
	if(speed > 1.5){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0B88F5B8
		/// @DnDParent : 68FCB319
		/// @DnDArgument : "speed" "speed * 0.9"
		speed = speed * 0.9;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E2D8095
	/// @DnDParent : 758EEE7E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "attack_windup"
	attack_windup += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31424963
	/// @DnDParent : 758EEE7E
	/// @DnDArgument : "var" "attack_windup"
	/// @DnDArgument : "value" "1"
	if(attack_windup == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BB8059B
		/// @DnDParent : 31424963
		/// @DnDArgument : "expr" "60"
		/// @DnDArgument : "var" "attack_duration"
		attack_duration = 60;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 535D8AA9
	/// @DnDParent : 758EEE7E
	/// @DnDArgument : "var" "attack_windup"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(attack_windup < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1E1A2A3C
		/// @DnDParent : 535D8AA9
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "lunge_speed"
		if(speed < lunge_speed){	/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 5C424FF8
			/// @DnDParent : 1E1A2A3C
			/// @DnDArgument : "speed" "speed * 1.1"
			/// @DnDArgument : "speed_relative" "1"
			speed += speed * 1.1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3AA68A97
		/// @DnDParent : 535D8AA9
		else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 20A0D458
			/// @DnDParent : 3AA68A97
			/// @DnDArgument : "speed" "lunge_speed"
			speed = lunge_speed;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1923DF49
		/// @DnDInput : 2
		/// @DnDParent : 535D8AA9
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "attack_duration"
		/// @DnDArgument : "var_1" "turn_speed"
		attack_duration += -1;
		turn_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36C37DB9
		/// @DnDParent : 535D8AA9
		/// @DnDArgument : "var" "attack_duration"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(attack_duration < 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 065168BE
			/// @DnDInput : 3
			/// @DnDParent : 36C37DB9
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "3"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "attacking"
			/// @DnDArgument : "var_1" "turn_speed"
			/// @DnDArgument : "var_2" "hit_player"
			attacking = false;
			turn_speed = 3;
			hit_player = false;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CC1131A
			/// @DnDParent : 36C37DB9
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "base_speed"
			if(speed > base_speed){	/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 6C18689B
				/// @DnDParent : 2CC1131A
				/// @DnDArgument : "speed" "speed * 0.95"
				speed = speed * 0.95;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 06F20D9F
			/// @DnDParent : 36C37DB9
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 17145E89
				/// @DnDParent : 06F20D9F
				/// @DnDArgument : "expr" "base_speed"
				/// @DnDArgument : "var" "speed"
				speed = base_speed;}}}}

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
	/// @DnDHash : 020DA717
	/// @DnDParent : 7F8AA407
	/// @DnDArgument : "var" "attacking"
	/// @DnDArgument : "value" "false"
	if(attacking == false){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 66644D7B
		/// @DnDParent : 020DA717
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

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5EEF9737
	/// @DnDParent : 103920E5
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "bullet"
	/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_tiny"
	/// @DnDArgument : "layer" ""Instances_projectiles""
	/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_tiny"
	bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_tiny);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 429813C5
	/// @DnDParent : 103920E5
	/// @DnDArgument : "expr" "direction"
	/// @DnDArgument : "var" "bullet.direction"
	bullet.direction = direction;

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
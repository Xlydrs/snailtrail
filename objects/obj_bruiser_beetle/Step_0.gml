/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E64CA39
/// @DnDComment : debuff countdowns
/// @DnDArgument : "var" "poison_cooldown"
/// @DnDArgument : "op" "2"
if(poison_cooldown > 0)
	/// @DnDVersion : 1
	/// @DnDHash : 3173F7B9
	/// @DnDParent : 0E64CA39
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "poison_cooldown"
	poison_cooldown += -1;

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
if(stun_timer < 1)
	/// @DnDVersion : 1
	/// @DnDHash : 42F2B988
	/// @DnDParent : 2E938AED
	/// @DnDArgument : "var" "abs(angle_diff)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "turn_speed"
	if(abs(angle_diff) <= turn_speed)
		/// @DnDVersion : 1
		/// @DnDHash : 1894DC96
		/// @DnDParent : 42F2B988
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3ACB08FD
	/// @DnDParent : 2E938AED
	else
		/// @DnDVersion : 1
		/// @DnDHash : 1A772E21
		/// @DnDParent : 3ACB08FD
		/// @DnDArgument : "var" "angle_diff"
		/// @DnDArgument : "op" "2"
		if(angle_diff > 0)
			/// @DnDVersion : 1
			/// @DnDHash : 19636A9F
			/// @DnDParent : 1A772E21
			/// @DnDArgument : "expr" "- turn_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "direction"
			direction += - turn_speed;
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6CC2B35D
		/// @DnDParent : 3ACB08FD
		else
			/// @DnDVersion : 1
			/// @DnDHash : 309F6EE0
			/// @DnDParent : 6CC2B35D
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "1"
			if(angle_diff < 0)
				/// @DnDVersion : 1
				/// @DnDHash : 69DE812A
				/// @DnDParent : 309F6EE0
				/// @DnDArgument : "expr" "+ turn_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += + turn_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 581FE02F
/// @DnDArgument : "var" "ignite_cooldown"
/// @DnDArgument : "op" "2"
if(ignite_cooldown > 0)
	/// @DnDVersion : 1
	/// @DnDHash : 44CA9F04
	/// @DnDParent : 581FE02F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ignite_cooldown"
	ignite_cooldown += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F8AA407
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1)
	/// @DnDVersion : 1
	/// @DnDHash : 7F69B03E
	/// @DnDParent : 7F8AA407
	/// @DnDArgument : "expr" "direction"
	/// @DnDArgument : "var" "image_angle"
	image_angle = direction;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F388CDF
	/// @DnDParent : 7F8AA407
	/// @DnDArgument : "var" "attacking"
	/// @DnDArgument : "value" "true"
	if(attacking == true)
		/// @DnDVersion : 1
		/// @DnDHash : 4998ED12
		/// @DnDParent : 6F388CDF
		/// @DnDArgument : "var" "attack_duration"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "150"
		if(attack_duration > 150)
			/// @DnDVersion : 1
			/// @DnDHash : 66644D7B
			/// @DnDParent : 4998ED12
			/// @DnDArgument : "speed" "speed * 1.0125"
			speed = speed * 1.0125;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C96549A
		/// @DnDInput : 2
		/// @DnDParent : 6F388CDF
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "attack_duration"
		/// @DnDArgument : "var_1" "shoot_cooldown"
		attack_duration += -1;
		shoot_cooldown += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5EF85C82
		/// @DnDParent : 6F388CDF
		/// @DnDArgument : "var" "shoot_cooldown"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(shoot_cooldown < 1)
			/// @DnDVersion : 1
			/// @DnDHash : 7BC5A1BA
			/// @DnDParent : 5EF85C82
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_mid"
			/// @DnDArgument : "layer" ""Instances_projectiles""
			/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_mid"
			bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_mid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C4A4EBE
			/// @DnDInput : 2
			/// @DnDParent : 5EF85C82
			/// @DnDArgument : "expr" "obj_game.enemy_bullet_speed"
			/// @DnDArgument : "expr_1" "obj_bruiser_beetle.direction + 135"
			/// @DnDArgument : "var" "bullet.speed"
			/// @DnDArgument : "var_1" "bullet.direction"
			bullet.speed = obj_game.enemy_bullet_speed;
			bullet.direction = obj_bruiser_beetle.direction + 135;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 717C2B9A
			/// @DnDParent : 5EF85C82
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_mid"
			/// @DnDArgument : "layer" ""Instances_projectiles""
			/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_mid"
			bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_mid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32EC93E5
			/// @DnDInput : 2
			/// @DnDParent : 5EF85C82
			/// @DnDArgument : "expr" "obj_game.enemy_bullet_speed"
			/// @DnDArgument : "expr_1" "obj_bruiser_beetle.direction + 225"
			/// @DnDArgument : "var" "bullet.speed"
			/// @DnDArgument : "var_1" "bullet.direction"
			bullet.speed = obj_game.enemy_bullet_speed;
			bullet.direction = obj_bruiser_beetle.direction + 225;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4DD69EE6
			/// @DnDParent : 5EF85C82
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_mid"
			/// @DnDArgument : "layer" ""Instances_projectiles""
			/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_mid"
			bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_mid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24047B63
			/// @DnDInput : 2
			/// @DnDParent : 5EF85C82
			/// @DnDArgument : "expr" "obj_game.enemy_bullet_speed"
			/// @DnDArgument : "expr_1" "obj_bruiser_beetle.direction + 180"
			/// @DnDArgument : "var" "bullet.speed"
			/// @DnDArgument : "var_1" "bullet.direction"
			bullet.speed = obj_game.enemy_bullet_speed;
			bullet.direction = obj_bruiser_beetle.direction + 180;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EE572FB
			/// @DnDParent : 5EF85C82
			/// @DnDArgument : "expr" "30"
			/// @DnDArgument : "var" "shoot_cooldown"
			shoot_cooldown = 30;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1167A767
		/// @DnDParent : 6F388CDF
		/// @DnDArgument : "var" "attack_duration"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(attack_duration < 1)
			/// @DnDVersion : 1
			/// @DnDHash : 61FED242
			/// @DnDInput : 2
			/// @DnDParent : 1167A767
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "120"
			/// @DnDArgument : "var" "attacking"
			/// @DnDArgument : "var_1" "attack_cooldown"
			attacking = false;
			attack_cooldown = 120;

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 580BD6BA
	/// @DnDParent : 7F8AA407
	else
		/// @DnDVersion : 1
		/// @DnDHash : 78E5A951
		/// @DnDParent : 580BD6BA
		/// @DnDArgument : "var" "attacking"
		/// @DnDArgument : "value" "false"
		if(attacking == false)
			/// @DnDVersion : 1
			/// @DnDHash : 774D9417
			/// @DnDParent : 78E5A951
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "base_speed"
			if(speed > base_speed)
				/// @DnDVersion : 1
				/// @DnDHash : 0D980E75
				/// @DnDParent : 774D9417
				/// @DnDArgument : "speed" "speed * 0.95"
				speed = speed * 0.95;
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 51BA3C37
			/// @DnDParent : 78E5A951
			else
				/// @DnDVersion : 1
				/// @DnDHash : 7C916F99
				/// @DnDParent : 51BA3C37
				/// @DnDArgument : "speed" "base_speed"
				speed = base_speed;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 43B586E4
				/// @DnDParent : 51BA3C37
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "attack_cooldown"
				attack_cooldown += -1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0C285BCB
				/// @DnDParent : 51BA3C37
				/// @DnDArgument : "var" "attack_cooldown"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "1"
				if(attack_cooldown < 1)
					/// @DnDVersion : 1
					/// @DnDHash : 710C791B
					/// @DnDParent : 0C285BCB
					/// @DnDArgument : "var" "abs(angle_diff)"
					/// @DnDArgument : "op" "3"
					/// @DnDArgument : "value" "5"
					if(abs(angle_diff) <= 5)
						/// @DnDVersion : 1
						/// @DnDHash : 0EEDF96A
						/// @DnDInput : 3
						/// @DnDParent : 710C791B
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "expr_1" "300"
						/// @DnDArgument : "var" "attacking"
						/// @DnDArgument : "var_1" "attack_duration"
						/// @DnDArgument : "var_2" "shoot_cooldown"
						attacking = true;
						attack_duration = 300;
						shoot_cooldown = 0;

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 69AF1CEB
else
	/// @DnDVersion : 1
	/// @DnDHash : 526CEE3B
	/// @DnDParent : 69AF1CEB
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E32263F
	/// @DnDInput : 2
	/// @DnDParent : 69AF1CEB
	/// @DnDArgument : "expr" "stun_timer - 1"
	/// @DnDArgument : "var" "stun_timer"
	/// @DnDArgument : "var_1" "attack_duration"
	stun_timer = stun_timer - 1;
	attack_duration = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12D53CD6
/// @DnDComment : poisoned
/// @DnDArgument : "var" "poison_remaining"
/// @DnDArgument : "op" "2"
if(poison_remaining > 0)
	/// @DnDVersion : 1
	/// @DnDHash : 146289C8
	/// @DnDParent : 12D53CD6
	/// @DnDArgument : "var" "poison_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(poison_cooldown < 1)
		/// @DnDVersion : 1
		/// @DnDHash : 588A49DD
		/// @DnDParent : 146289C8
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "true"
		if(initial_poison_tick == true)
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
			repeat(16 * obj_player.poison_damage)
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
				poison_particle.speed = 10;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6785853A
		/// @DnDParent : 146289C8
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "false"
		if(initial_poison_tick == false)
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
			repeat(8 * obj_player.poison_damage)
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
				poison_particle.speed = 10;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 199991D3
/// @DnDComment : burned
/// @DnDArgument : "var" "ignite_remaining"
/// @DnDArgument : "op" "2"
if(ignite_remaining > 0)
	/// @DnDVersion : 1
	/// @DnDHash : 12B29C58
	/// @DnDParent : 199991D3
	/// @DnDArgument : "var" "ignite_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ignite_cooldown < 1)
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
		repeat(12)
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
			fire_particle.speed = 5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 103920E5
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "op" "3"
if(current_health <= 0)
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
	instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42FD4020
/// @DnDArgument : "var" "collision_iframes"
/// @DnDArgument : "op" "2"
if(collision_iframes > 0)
	/// @DnDVersion : 1
	/// @DnDHash : 5B5B9191
	/// @DnDParent : 42FD4020
	/// @DnDArgument : "expr" "collision_iframes - 1"
	/// @DnDArgument : "var" "collision_iframes"
	collision_iframes = collision_iframes - 1;
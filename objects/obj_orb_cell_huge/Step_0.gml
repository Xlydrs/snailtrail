/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26B79683
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
/// @DnDHash : 2235D8A5
/// @DnDComment : turning mechanic
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 764F8CBD
	/// @DnDParent : 2235D8A5
	/// @DnDArgument : "var" "abs(angle_diff)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "turn_speed"
	if(abs(angle_diff) <= turn_speed){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0E86FC35
		/// @DnDParent : 764F8CBD
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1CCC34A4
	/// @DnDParent : 2235D8A5
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17624D2D
		/// @DnDParent : 1CCC34A4
		/// @DnDArgument : "var" "angle_diff"
		/// @DnDArgument : "op" "2"
		if(angle_diff > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4C8E12FB
			/// @DnDParent : 17624D2D
			/// @DnDArgument : "expr" "- turn_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "direction"
			direction += - turn_speed;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2EA8D8E5
		/// @DnDParent : 1CCC34A4
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 199CE90A
			/// @DnDParent : 2EA8D8E5
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "1"
			if(angle_diff < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6F36BC45
				/// @DnDParent : 199CE90A
				/// @DnDArgument : "expr" "+ turn_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += + turn_speed;}}}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7CB031A6
/// @DnDArgument : "expr" "- 1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "spawn_cell"
spawn_cell += - 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3ADFBD74
/// @DnDArgument : "var" "spawn_cell"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(spawn_cell < 1){	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 33ADC03D
	/// @DnDParent : 3ADFBD74
	/// @DnDArgument : "cond" "i < 8"
	for(i = 0; i < 8; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2E47357B
		/// @DnDParent : 33ADC03D
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "spawned_cell"
		/// @DnDArgument : "objectid" "obj_orb_cell_tiny"
		/// @DnDSaveInfo : "objectid" "obj_orb_cell_tiny"
		spawned_cell = instance_create_layer(x + 0, y + 0, "Instances", obj_orb_cell_tiny);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26B7EFC2
		/// @DnDInput : 2
		/// @DnDParent : 33ADC03D
		/// @DnDArgument : "expr" "random(360)"
		/// @DnDArgument : "expr_1" "30"
		/// @DnDArgument : "var" "spawned_cell.direction"
		/// @DnDArgument : "var_1" "spawned_cell.spawn_timer"
		spawned_cell.direction = random(360);
		spawned_cell.spawn_timer = 30;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32E38977
	/// @DnDParent : 3ADFBD74
	/// @DnDArgument : "expr" "240"
	/// @DnDArgument : "var" "spawn_cell"
	spawn_cell = 240;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35267464
/// @DnDComment : debuff countdowns
/// @DnDArgument : "var" "poison_cooldown"
/// @DnDArgument : "op" "2"
if(poison_cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7457844E
	/// @DnDParent : 35267464
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "poison_cooldown"
	poison_cooldown += -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D0B102C
/// @DnDArgument : "var" "ignite_cooldown"
/// @DnDArgument : "op" "2"
if(ignite_cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 364C84FC
	/// @DnDParent : 6D0B102C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ignite_cooldown"
	ignite_cooldown += -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C3A4B8B
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 064F8C90
	/// @DnDParent : 1C3A4B8B
	/// @DnDArgument : "speed" "base_speed"
	speed = base_speed;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6D46EBB8
else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4639736F
	/// @DnDParent : 6D46EBB8
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05434485
	/// @DnDParent : 6D46EBB8
	/// @DnDArgument : "expr" "stun_timer - 1"
	/// @DnDArgument : "var" "stun_timer"
	stun_timer = stun_timer - 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B992B53
/// @DnDComment : poisoned
/// @DnDArgument : "var" "poison_remaining"
/// @DnDArgument : "op" "2"
if(poison_remaining > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07A3CD05
	/// @DnDParent : 3B992B53
	/// @DnDArgument : "var" "poison_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(poison_cooldown < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EF61D1D
		/// @DnDParent : 07A3CD05
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "true"
		if(initial_poison_tick == true){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 56ACADB6
			/// @DnDInput : 4
			/// @DnDParent : 4EF61D1D
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
			/// @DnDHash : 01BAF721
			/// @DnDParent : 4EF61D1D
			/// @DnDArgument : "times" "24 * obj_player.poison_damage"
			repeat(24 * obj_player.poison_damage){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3A6DAE5C
				/// @DnDParent : 01BAF721
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6E38F36A
				/// @DnDParent : 01BAF721
				/// @DnDArgument : "expr" "30"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 30;}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A4482E6
		/// @DnDParent : 07A3CD05
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "false"
		if(initial_poison_tick == false){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 485DD9C7
			/// @DnDInput : 3
			/// @DnDParent : 0A4482E6
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
			/// @DnDHash : 7A3550A2
			/// @DnDParent : 0A4482E6
			/// @DnDArgument : "times" "12 * obj_player.poison_damage"
			repeat(12 * obj_player.poison_damage){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 17912A78
				/// @DnDParent : 7A3550A2
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_projectiles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3DEC1A3F
				/// @DnDParent : 7A3550A2
				/// @DnDArgument : "expr" "30"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 30;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34A6D2F6
/// @DnDComment : burned
/// @DnDArgument : "var" "ignite_remaining"
/// @DnDArgument : "op" "2"
if(ignite_remaining > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EF7DD8E
	/// @DnDParent : 34A6D2F6
	/// @DnDArgument : "var" "ignite_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ignite_cooldown < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A1726DD
		/// @DnDInput : 3
		/// @DnDParent : 0EF7DD8E
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
		/// @DnDHash : 3A1650F9
		/// @DnDParent : 0EF7DD8E
		/// @DnDArgument : "times" "12"
		repeat(12){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 775A7F0F
			/// @DnDParent : 3A1650F9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "fire_particle"
			/// @DnDArgument : "objectid" "obj_fire_particle"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_fire_particle"
			fire_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_fire_particle);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A8E4134
			/// @DnDParent : 3A1650F9
			/// @DnDArgument : "expr" "10"
			/// @DnDArgument : "var" "fire_particle.speed"
			fire_particle.speed = 10;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EC70353
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "op" "3"
if(current_health <= 0){	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2EBABE67
	/// @DnDParent : 2EC70353
	/// @DnDArgument : "cond" "i < 4"
	for(i = 0; i < 4; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6BB294D4
		/// @DnDParent : 2EBABE67
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "spawned_cell"
		/// @DnDArgument : "objectid" "obj_orb_cell_medium"
		/// @DnDSaveInfo : "objectid" "obj_orb_cell_medium"
		spawned_cell = instance_create_layer(x + 0, y + 0, "Instances", obj_orb_cell_medium);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10812D30
		/// @DnDInput : 2
		/// @DnDParent : 2EBABE67
		/// @DnDArgument : "expr" "direction + i * 90"
		/// @DnDArgument : "expr_1" "30"
		/// @DnDArgument : "var" "spawned_cell.direction"
		/// @DnDArgument : "var_1" "spawned_cell.spawn_timer"
		spawned_cell.direction = direction + i * 90;
		spawned_cell.spawn_timer = 30;}

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 740A37F6
	/// @DnDParent : 2EC70353
	/// @DnDArgument : "cond" "i < 4"
	for(i = 0; i < 4; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0596CBC8
		/// @DnDParent : 740A37F6
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_big"
		/// @DnDArgument : "layer" ""Instances_projectiles""
		/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_big"
		bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_big);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38B3EFA4
		/// @DnDInput : 2
		/// @DnDParent : 740A37F6
		/// @DnDArgument : "expr" "i * 90 + 45"
		/// @DnDArgument : "expr_1" "obj_game.enemy_bullet_speed"
		/// @DnDArgument : "var" "bullet.direction"
		/// @DnDArgument : "var_1" "bullet.speed"
		bullet.direction = i * 90 + 45;
		bullet.speed = obj_game.enemy_bullet_speed;}

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 32FEEA49
	/// @DnDParent : 2EC70353
	/// @DnDArgument : "cond" "i < 4"
	for(i = 0; i < 4; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5FD9F66F
		/// @DnDParent : 32FEEA49
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_mid"
		/// @DnDArgument : "layer" ""Instances_projectiles""
		/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_mid"
		bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_mid);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 282249A5
		/// @DnDParent : 32FEEA49
		/// @DnDArgument : "expr" "i * 90"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction = i * 90;}

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 21D5289C
	/// @DnDParent : 2EC70353
	/// @DnDArgument : "cond" "i < 12"
	for(i = 0; i < 12; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 292B3CBE
		/// @DnDParent : 21D5289C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_tiny"
		/// @DnDArgument : "layer" ""Instances_projectiles""
		/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_tiny"
		bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_tiny);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 215F27A9
		/// @DnDInput : 2
		/// @DnDParent : 21D5289C
		/// @DnDArgument : "expr" "i * 30"
		/// @DnDArgument : "expr_1" "obj_game.enemy_bullet_speed * 1.2"
		/// @DnDArgument : "var" "bullet.direction"
		/// @DnDArgument : "var_1" "bullet.speed"
		bullet.direction = i * 30;
		bullet.speed = obj_game.enemy_bullet_speed * 1.2;}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 090B4DAC
	/// @DnDParent : 2EC70353
	instance_destroy();}
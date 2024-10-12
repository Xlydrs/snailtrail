/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E2E7260
/// @DnDArgument : "var" "spawn_timer"
/// @DnDArgument : "op" "2"
if(spawn_timer > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6346FE25
	/// @DnDParent : 0E2E7260
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "spawn_timer"
	spawn_timer += -1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 620BFFED
	/// @DnDParent : 0E2E7260
	/// @DnDArgument : "speed" "speed * 0.9"
	speed = speed * 0.9;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 749DC62B
else{	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7E2CFFD0
	/// @DnDParent : 749DC62B
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F9DFA69
	/// @DnDParent : 749DC62B
	/// @DnDArgument : "expr" "base_speed"
	/// @DnDArgument : "var" "speed"
	speed = base_speed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C3A4B8B
	/// @DnDParent : 749DC62B
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
	/// @DnDParent : 749DC62B
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
		stun_timer = stun_timer - 1;}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 76733B47
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
/// @DnDHash : 43054C74
/// @DnDComment : turning mechanic
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 280A41F9
	/// @DnDParent : 43054C74
	/// @DnDArgument : "var" "abs(angle_diff)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "turn_speed"
	if(abs(angle_diff) <= turn_speed){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 62F417FE
		/// @DnDParent : 280A41F9
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 386EE667
	/// @DnDParent : 43054C74
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D357DF1
		/// @DnDParent : 386EE667
		/// @DnDArgument : "var" "angle_diff"
		/// @DnDArgument : "op" "2"
		if(angle_diff > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 66B23000
			/// @DnDParent : 3D357DF1
			/// @DnDArgument : "expr" "- turn_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "direction"
			direction += - turn_speed;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 11026299
		/// @DnDParent : 386EE667
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A024326
			/// @DnDParent : 11026299
			/// @DnDArgument : "var" "angle_diff"
			/// @DnDArgument : "op" "1"
			if(angle_diff < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 30044C59
				/// @DnDParent : 1A024326
				/// @DnDArgument : "expr" "+ turn_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "direction"
				direction += + turn_speed;}}}}

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
			/// @DnDArgument : "times" "10 * obj_player.poison_damage"
			repeat(10 * obj_player.poison_damage){	/// @DnDAction : YoYo Games.Instances.Create_Instance
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
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 10;}}
	
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
			/// @DnDArgument : "times" "5 *obj_player.poison_damage"
			repeat(5 *obj_player.poison_damage){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 17912A78
				/// @DnDParent : 7A3550A2
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3DEC1A3F
				/// @DnDParent : 7A3550A2
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 10;}}}}

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
		/// @DnDArgument : "times" "6"
		repeat(6){	/// @DnDAction : YoYo Games.Instances.Create_Instance
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
			/// @DnDArgument : "expr" "4"
			/// @DnDArgument : "var" "fire_particle.speed"
			fire_particle.speed = 4;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EC70353
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "op" "3"
if(current_health <= 0){	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 740A37F6
	/// @DnDParent : 2EC70353
	/// @DnDArgument : "cond" "i < 3"
	for(i = 0; i < 3; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0596CBC8
		/// @DnDParent : 740A37F6
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_tiny"
		/// @DnDArgument : "layer" ""Instances_projectiles""
		/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_tiny"
		bullet = instance_create_layer(x + 0, y + 0, "Instances_projectiles", obj_enemy_bullet_pink_tiny);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38B3EFA4
		/// @DnDParent : 740A37F6
		/// @DnDArgument : "expr" "180 +  direction + i * 120"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += 180 +  direction + i * 120;}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 090B4DAC
	/// @DnDParent : 2EC70353
	instance_destroy();}
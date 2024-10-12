/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7316D1DF
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
direction = point_direction(x, y, obj_player.x, obj_player.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AB11494
/// @DnDArgument : "expr" "+ 1 * (600 - shoot_timer) / 120"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_angle"
image_angle += + 1 * (600 - shoot_timer) / 120;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67935705
/// @DnDArgument : "var" "shoot_timer"
/// @DnDArgument : "op" "2"
if(shoot_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74E51D3F
	/// @DnDParent : 67935705
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shoot_timer"
	shoot_timer += - 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 797DAAEA
/// @DnDArgument : "var" "shoot_break"
/// @DnDArgument : "op" "2"
if(shoot_break > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2886A8AE
	/// @DnDParent : 797DAAEA
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shoot_break"
	shoot_break += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58BABC93
/// @DnDArgument : "var" "shoot_cooldown"
/// @DnDArgument : "op" "2"
if(shoot_cooldown > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FB7323C
	/// @DnDParent : 58BABC93
	/// @DnDArgument : "expr" "-1 * (600 - shoot_timer) / 120"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shoot_cooldown"
	shoot_cooldown += -1 * (600 - shoot_timer) / 120;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F8D6F88
/// @DnDComment : debuff countdowns
/// @DnDInput : 4
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "- 1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "- 1"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "expr_3" "- 1"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "var" "poison_cooldown"
/// @DnDArgument : "var_1" "poison_remaining"
/// @DnDArgument : "var_2" "ignite_cooldown"
/// @DnDArgument : "var_3" "ignite_remaining"
poison_cooldown += -1;
poison_remaining += - 1;
ignite_cooldown += - 1;
ignite_remaining += - 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AB2A27C
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "op" "1"
if(current_health < 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7FAC41F8
	/// @DnDParent : 4AB2A27C
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4256B2D8
/// @DnDComment : shooting
/// @DnDArgument : "var" "shooting"
/// @DnDArgument : "value" "true"
if(shooting == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11B0F4C9
	/// @DnDParent : 4256B2D8
	/// @DnDArgument : "var" "shoot_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(shoot_cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4DEA73BF
		/// @DnDParent : 11B0F4C9
		/// @DnDArgument : "speed" "base_speed"
		speed = base_speed;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E3BF329
	/// @DnDParent : 4256B2D8
	/// @DnDArgument : "var" "shoot_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(shoot_timer < 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A68589D
		/// @DnDInput : 2
		/// @DnDParent : 5E3BF329
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "360"
		/// @DnDArgument : "var" "shooting"
		/// @DnDArgument : "var_1" "shoot_break"
		shooting = false;
		shoot_break = 360;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 615D3603
/// @DnDArgument : "var" "shooting"
/// @DnDArgument : "value" "false"
if(shooting == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58D35D13
	/// @DnDParent : 615D3603
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "2* base_speed"
	if(speed < 2* base_speed)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 427A4BD7
		/// @DnDParent : 58D35D13
		/// @DnDArgument : "speed" "speed * 1.005"
		speed = speed * 1.005;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 099037C4
	/// @DnDParent : 615D3603
	/// @DnDArgument : "var" "shoot_break"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(shoot_break < 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53081705
		/// @DnDInput : 2
		/// @DnDParent : 099037C4
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "600"
		/// @DnDArgument : "var" "shooting"
		/// @DnDArgument : "var_1" "shoot_timer"
		shooting = true;
		shoot_timer = 600;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71722877
/// @DnDComment : poisoned
/// @DnDArgument : "var" "poison_remaining"
/// @DnDArgument : "op" "2"
if(poison_remaining > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3200CD3F
	/// @DnDParent : 71722877
	/// @DnDArgument : "var" "poison_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(poison_cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BE17B87
		/// @DnDParent : 3200CD3F
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "true"
		if(initial_poison_tick == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 77ADAF6A
			/// @DnDInput : 3
			/// @DnDParent : 4BE17B87
			/// @DnDArgument : "expr" "- 2 * obj_player.poison_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "60 /obj_player.poison_tick_rate"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "current_health"
			/// @DnDArgument : "var_1" "poison_cooldown"
			/// @DnDArgument : "var_2" "initial_poison_tick"
			current_health += - 2 * obj_player.poison_damage;
			poison_cooldown = 60 /obj_player.poison_tick_rate;
			initial_poison_tick = false;
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 54BBAB98
			/// @DnDParent : 4BE17B87
			/// @DnDArgument : "times" "24 * obj_player.poison_damage"
			repeat(24 * obj_player.poison_damage)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2D0C1F34
				/// @DnDParent : 54BBAB98
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4B327D57
				/// @DnDParent : 54BBAB98
				/// @DnDArgument : "expr" "30"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 30;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 725054CA
		/// @DnDParent : 3200CD3F
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "false"
		if(initial_poison_tick == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A89CD7C
			/// @DnDInput : 2
			/// @DnDParent : 725054CA
			/// @DnDArgument : "expr" "- obj_player.poison_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "60/obj_player.poison_tick_rate"
			/// @DnDArgument : "var" "current_health"
			/// @DnDArgument : "var_1" "poison_cooldown"
			current_health += - obj_player.poison_damage;
			poison_cooldown = 60/obj_player.poison_tick_rate;
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 47D88DA9
			/// @DnDParent : 725054CA
			/// @DnDArgument : "times" "12 * obj_player.poison_damage"
			repeat(12 * obj_player.poison_damage)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7A3A44BC
				/// @DnDParent : 47D88DA9
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0F8F4E93
				/// @DnDParent : 47D88DA9
				/// @DnDArgument : "expr" "30"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 30;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74E2CA61
/// @DnDComment : burned
/// @DnDArgument : "var" "ignite_remaining"
/// @DnDArgument : "op" "2"
if(ignite_remaining > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D1CD513
	/// @DnDParent : 74E2CA61
	/// @DnDArgument : "var" "ignite_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ignite_cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26E57EA9
		/// @DnDInput : 2
		/// @DnDParent : 5D1CD513
		/// @DnDArgument : "expr" "current_health - obj_player.burn_damage"
		/// @DnDArgument : "expr_1" "60 / obj_player.ignite_tick_rate"
		/// @DnDArgument : "var" "current_health"
		/// @DnDArgument : "var_1" "ignite_cooldown"
		current_health = current_health - obj_player.burn_damage;
		ignite_cooldown = 60 / obj_player.ignite_tick_rate;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 3C087F57
		/// @DnDParent : 5D1CD513
		/// @DnDArgument : "times" "16 "
		repeat(16 )
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7C400195
			/// @DnDParent : 3C087F57
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "fire_particle"
			/// @DnDArgument : "objectid" "obj_fire_particle"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_fire_particle"
			fire_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_fire_particle);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 058DDACF
			/// @DnDParent : 3C087F57
			/// @DnDArgument : "expr" "10"
			/// @DnDArgument : "var" "fire_particle.speed"
			fire_particle.speed = 10;
		}
	}
}
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56EC7B02
/// @DnDInput : 2
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "expr_1" "direction_angle"
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "var_1" "direction"
image_angle = direction;
direction = direction_angle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04C1CBA6
/// @DnDArgument : "expr" "random_range(-30, 30)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "direction_angle"
direction_angle += random_range(-30, 30);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 51AF7A12
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_hyperstim_trail"
/// @DnDArgument : "layer" ""Instances_particles""
/// @DnDSaveInfo : "objectid" "obj_hyperstim_trail"
instance_create_layer(x + 0, y + 0, "Instances_particles", obj_hyperstim_trail);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4272F39A
/// @DnDComment : debuff countdowns
/// @DnDArgument : "var" "poison_cooldown"
/// @DnDArgument : "op" "2"
if(poison_cooldown > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3985CD0A
	/// @DnDParent : 4272F39A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "poison_cooldown"
	poison_cooldown += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57478454
/// @DnDArgument : "var" "ignite_cooldown"
/// @DnDArgument : "op" "2"
if(ignite_cooldown > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 550A206D
	/// @DnDParent : 57478454
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ignite_cooldown"
	ignite_cooldown += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33C605F3
/// @DnDArgument : "var" "stun_timer"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(stun_timer < 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31379C59
	/// @DnDParent : 33C605F3
	/// @DnDArgument : "expr" "direction"
	/// @DnDArgument : "var" "image_angle"
	image_angle = direction;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 01057B95
	/// @DnDParent : 33C605F3
	/// @DnDArgument : "speed" "base_speed"
	speed = base_speed;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 78C7DB66
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 08100501
	/// @DnDParent : 78C7DB66
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57CC342F
	/// @DnDParent : 78C7DB66
	/// @DnDArgument : "expr" "stun_timer - 1"
	/// @DnDArgument : "var" "stun_timer"
	stun_timer = stun_timer - 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6090F792
/// @DnDComment : poisoned
/// @DnDArgument : "var" "poison_remaining"
/// @DnDArgument : "op" "2"
if(poison_remaining > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60E68AA6
	/// @DnDParent : 6090F792
	/// @DnDArgument : "var" "poison_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(poison_cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4321C297
		/// @DnDParent : 60E68AA6
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "true"
		if(initial_poison_tick == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02D2CB44
			/// @DnDInput : 4
			/// @DnDParent : 4321C297
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
			/// @DnDHash : 0C027810
			/// @DnDParent : 4321C297
			/// @DnDArgument : "times" "16 * obj_player.poison_damage"
			repeat(16 * obj_player.poison_damage)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3DBFDB5D
				/// @DnDParent : 0C027810
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3A8C460D
				/// @DnDParent : 0C027810
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 10;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19883A81
		/// @DnDParent : 60E68AA6
		/// @DnDArgument : "var" "initial_poison_tick"
		/// @DnDArgument : "value" "false"
		if(initial_poison_tick == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 22BC40F1
			/// @DnDInput : 3
			/// @DnDParent : 19883A81
			/// @DnDArgument : "expr" "current_health - 0.5 * obj_player.poison_damage"
			/// @DnDArgument : "expr_1" "60/obj_player.poison_tick_rate"
			/// @DnDArgument : "expr_2" "-1"
			/// @DnDArgument : "expr_relative_2" "1"
			/// @DnDArgument : "var" "current_health"
			/// @DnDArgument : "var_1" "poison_cooldown"
			/// @DnDArgument : "var_2" "poison_remaining"
			current_health = current_health - 0.5 * obj_player.poison_damage;
			poison_cooldown = 60/obj_player.poison_tick_rate;
			poison_remaining += -1;
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 45813E85
			/// @DnDParent : 19883A81
			/// @DnDArgument : "times" "8 * obj_player.poison_damage"
			repeat(8 * obj_player.poison_damage)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0958E47E
				/// @DnDParent : 45813E85
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "poison_particle"
				/// @DnDArgument : "objectid" "obj_poison_particle"
				/// @DnDArgument : "layer" ""Instances_particles""
				/// @DnDSaveInfo : "objectid" "obj_poison_particle"
				poison_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_poison_particle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 38653734
				/// @DnDParent : 45813E85
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "var" "poison_particle.speed"
				poison_particle.speed = 10;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15AD369C
/// @DnDComment : burned
/// @DnDArgument : "var" "ignite_remaining"
/// @DnDArgument : "op" "2"
if(ignite_remaining > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A7514B2
	/// @DnDParent : 15AD369C
	/// @DnDArgument : "var" "ignite_cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ignite_cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53A4222A
		/// @DnDInput : 3
		/// @DnDParent : 6A7514B2
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
		/// @DnDHash : 52F8AA09
		/// @DnDParent : 6A7514B2
		/// @DnDArgument : "times" "12"
		repeat(12)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 41FB5AA3
			/// @DnDParent : 52F8AA09
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "fire_particle"
			/// @DnDArgument : "objectid" "obj_fire_particle"
			/// @DnDArgument : "layer" ""Instances_particles""
			/// @DnDSaveInfo : "objectid" "obj_fire_particle"
			fire_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_fire_particle);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7BB1896C
			/// @DnDParent : 52F8AA09
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "var" "fire_particle.speed"
			fire_particle.speed = 5;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12DD7EC6
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "op" "3"
if(current_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DBE0C08
	/// @DnDParent : 12DD7EC6
	/// @DnDArgument : "expr" "+ 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.biomass_points"
	obj_player.biomass_points += + 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 580E8EB2
	/// @DnDParent : 12DD7EC6
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 484FA840
/// @DnDArgument : "var" "collision_iframes"
/// @DnDArgument : "op" "2"
if(collision_iframes > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F656F8D
	/// @DnDParent : 484FA840
	/// @DnDArgument : "expr" "collision_iframes - 1"
	/// @DnDArgument : "var" "collision_iframes"
	collision_iframes = collision_iframes - 1;
}
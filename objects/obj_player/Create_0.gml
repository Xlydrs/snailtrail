/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B0F8E90
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "species"
species = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63BD592F
/// @DnDComment : basic stat variables
/// @DnDInput : 17
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "expr_1" "10"
/// @DnDArgument : "expr_2" "max_energy"
/// @DnDArgument : "expr_3" "max_health"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "expr_5" "1"
/// @DnDArgument : "expr_7" "1"
/// @DnDArgument : "expr_8" "10"
/// @DnDArgument : "expr_9" "120"
/// @DnDArgument : "expr_10" "120"
/// @DnDArgument : "expr_13" "5"
/// @DnDArgument : "expr_14" "0.33"
/// @DnDArgument : "expr_15" "basic_shell_points"
/// @DnDArgument : "var" "max_energy"
/// @DnDArgument : "var_1" "max_health"
/// @DnDArgument : "var_2" "current_energy"
/// @DnDArgument : "var_3" "current_health"
/// @DnDArgument : "var_4" "energy_regen"
/// @DnDArgument : "var_5" "health_regen"
/// @DnDArgument : "var_6" "biomass_points"
/// @DnDArgument : "var_7" "player_level"
/// @DnDArgument : "var_8" "to_next_level"
/// @DnDArgument : "var_9" "energy_delay"
/// @DnDArgument : "var_10" "health_delay"
/// @DnDArgument : "var_11" "energy_delay_timer"
/// @DnDArgument : "var_12" "health_delay_timer"
/// @DnDArgument : "var_13" "basic_shell_points"
/// @DnDArgument : "var_14" "shell_regrow_rate"
/// @DnDArgument : "var_15" "current_shell_points"
/// @DnDArgument : "var_16" "shell_regrowth"
max_energy = 3;
max_health = 10;
current_energy = max_energy;
current_health = max_health;
energy_regen = 1;
health_regen = 1;
biomass_points = 0;
player_level = 1;
to_next_level = 10;
energy_delay = 120;
health_delay = 120;
energy_delay_timer = 0;
health_delay_timer = 0;
basic_shell_points = 5;
shell_regrow_rate = 0.33;
current_shell_points = basic_shell_points;
shell_regrowth = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13CA87FB
/// @DnDComment : movement and rolling
/// @DnDInput : 9
/// @DnDArgument : "expr_1" "60"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "10"
/// @DnDArgument : "expr_4" "1.5"
/// @DnDArgument : "expr_5" "4"
/// @DnDArgument : "expr_6" "120"
/// @DnDArgument : "expr_7" "false"
/// @DnDArgument : "var" "current_speed"
/// @DnDArgument : "var_1" "roll_duration"
/// @DnDArgument : "var_2" "rolling"
/// @DnDArgument : "var_3" "base_speed"
/// @DnDArgument : "var_4" "roll_modifier"
/// @DnDArgument : "var_5" "roll_damage"
/// @DnDArgument : "var_6" "stun_duration"
/// @DnDArgument : "var_7" "player_moving"
/// @DnDArgument : "var_8" "roll_timer"
current_speed = 0;
roll_duration = 60;
rolling = false;
base_speed = 10;
roll_modifier = 1.5;
roll_damage = 4;
stun_duration = 120;
player_moving = false;
roll_timer = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1BB05630
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
image_xscale = 1;
image_yscale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78F318C1
/// @DnDComment : Shells
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "shell_broken"
/// @DnDArgument : "var_1" "power_shell"
shell_broken = false;
power_shell = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C847009
/// @DnDComment : Slime trail weapon type variables
/// @DnDInput : 6
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "2"
/// @DnDArgument : "expr_2" "3"
/// @DnDArgument : "expr_3" "1"
/// @DnDArgument : "expr_4" "360"
/// @DnDArgument : "expr_5" "1"
/// @DnDArgument : "var" "weapon_type_slime"
/// @DnDArgument : "var_1" "poison_tick_rate"
/// @DnDArgument : "var_2" "slime_linger"
/// @DnDArgument : "var_3" "slime_size"
/// @DnDArgument : "var_4" "poison_duration"
/// @DnDArgument : "var_5" "poison_damage"
weapon_type_slime = false;
poison_tick_rate = 2;
slime_linger = 3;
slime_size = 1;
poison_duration = 360;
poison_damage = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5EB74ECA
/// @DnDComment : Slime pen weapon type
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "weapon_type_pen"
weapon_type_pen = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D779E36
/// @DnDComment : bullet weapon type variables
/// @DnDInput : 8
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "4"
/// @DnDArgument : "expr_2" "5"
/// @DnDArgument : "expr_3" "15"
/// @DnDArgument : "expr_4" "0.5"
/// @DnDArgument : "expr_5" "15"
/// @DnDArgument : "expr_6" "15"
/// @DnDArgument : "expr_7" "1.5"
/// @DnDArgument : "var" "weapon_type_bullet"
/// @DnDArgument : "var_1" "bullet_projectile_count"
/// @DnDArgument : "var_2" "bullet_fire_rate"
/// @DnDArgument : "var_3" "bullet_cooldown"
/// @DnDArgument : "var_4" "bullet_damage"
/// @DnDArgument : "var_5" "bullet_spread"
/// @DnDArgument : "var_6" "bullet_velocity"
/// @DnDArgument : "var_7" "moving_fire_rate"
weapon_type_bullet = false;
bullet_projectile_count = 4;
bullet_fire_rate = 5;
bullet_cooldown = 15;
bullet_damage = 0.5;
bullet_spread = 15;
bullet_velocity = 15;
moving_fire_rate = 1.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2921A441
/// @DnDComment : Spore mine weapon type
/// @DnDInput : 8
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "expr_2" "5"
/// @DnDArgument : "expr_3" "10 + spore_radius"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "expr_5" "180"
/// @DnDArgument : "expr_7" "spores_count"
/// @DnDArgument : "var" "weapon_type_spore"
/// @DnDArgument : "var_1" "spores_count"
/// @DnDArgument : "var_2" "spore_radius"
/// @DnDArgument : "var_3" "spore_damage"
/// @DnDArgument : "var_4" "spore_growth"
/// @DnDArgument : "var_5" "spore_launch_time"
/// @DnDArgument : "var_6" "spore_cooldown"
/// @DnDArgument : "var_7" "launch_spore"
weapon_type_spore = false;
spores_count = 3;
spore_radius = 5;
spore_damage = 10 + spore_radius;
spore_growth = 1;
spore_launch_time = 180;
spore_cooldown = 0;
launch_spore = spores_count;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C1B9A53
/// @DnDComment : Blazing thruster weapon type
/// @DnDInput : 7
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_2" "0.05"
/// @DnDArgument : "expr_3" "0.1"
/// @DnDArgument : "expr_4" "5"
/// @DnDArgument : "expr_6" "2"
/// @DnDArgument : "var" "weapon_type_blaze"
/// @DnDArgument : "var_1" "fireball_size"
/// @DnDArgument : "var_2" "fireball_damage"
/// @DnDArgument : "var_3" "fireball_degen_rate"
/// @DnDArgument : "var_4" "fireball_fire_rate"
/// @DnDArgument : "var_5" "fireball_cooldown"
/// @DnDArgument : "var_6" "fireball_count"
weapon_type_blaze = false;
fireball_size = 1;
fireball_damage = 0.05;
fireball_degen_rate = 0.1;
fireball_fire_rate = 5;
fireball_cooldown = 0;
fireball_count = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E49C880
/// @DnDComment : Freeze aura weapon type
/// @DnDInput : 5
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "1.5"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "expr_4" "false"
/// @DnDArgument : "var" "weapon_type_freeze"
/// @DnDArgument : "var_1" "freeze_aura_size"
/// @DnDArgument : "var_2" "freeze_aura_damage"
/// @DnDArgument : "var_3" "freeze_aura_slow"
/// @DnDArgument : "var_4" "freeze_aura_active"
weapon_type_freeze = false;
freeze_aura_size = 1.5;
freeze_aura_damage = 1;
freeze_aura_slow = 0;
freeze_aura_active = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D40859E
/// @DnDComment : misc modifiers
/// @DnDInput : 4
/// @DnDArgument : "expr" "180"
/// @DnDArgument : "expr_1" "0.25"
/// @DnDArgument : "expr_3" "4"
/// @DnDArgument : "var" "ignite_duration"
/// @DnDArgument : "var_1" "burn_damage"
/// @DnDArgument : "var_2" "base_damage_boost"
/// @DnDArgument : "var_3" "ignite_tick_rate"
ignite_duration = 180;
burn_damage = 0.25;
base_damage_boost = 0;
ignite_tick_rate = 4;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71A6F9A2
/// @DnDComment : snail species settings
/// @DnDArgument : "var" "species"
/// @DnDArgument : "value" "1"
if(species == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34FB5170
	/// @DnDParent : 71A6F9A2
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "weapon_type_slime"
	weapon_type_slime = true;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18A79B9D
/// @DnDComment : firefly species settings
/// @DnDArgument : "var" "species"
/// @DnDArgument : "value" "2"
if(species == 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 085033E3
	/// @DnDInput : 4
	/// @DnDParent : 18A79B9D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "3"
	/// @DnDArgument : "expr_2" "0.2"
	/// @DnDArgument : "expr_3" "4"
	/// @DnDArgument : "var" "weapon_type_blaze"
	/// @DnDArgument : "var_1" "fireball_fire_rate"
	/// @DnDArgument : "var_2" "fireball_degen_rate"
	/// @DnDArgument : "var_3" "fireball_count"
	weapon_type_blaze = true;
	fireball_fire_rate = 3;
	fireball_degen_rate = 0.2;
	fireball_count = 4;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73D55E29
	/// @DnDInput : 4
	/// @DnDParent : 18A79B9D
	/// @DnDArgument : "expr" "13"
	/// @DnDArgument : "expr_1" "2"
	/// @DnDArgument : "expr_2" "120"
	/// @DnDArgument : "expr_3" "0.5"
	/// @DnDArgument : "var" "base_speed"
	/// @DnDArgument : "var_1" "max_energy"
	/// @DnDArgument : "var_2" "roll_duration"
	/// @DnDArgument : "var_3" "energy_regen"
	base_speed = 13;
	max_energy = 2;
	roll_duration = 120;
	energy_regen = 0.5;}
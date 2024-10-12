/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BF3EEE5
/// @DnDArgument : "var" "attack_cooldown"
/// @DnDArgument : "value" "1"
if(attack_cooldown == 1){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 517CD1BD
	/// @DnDParent : 3BF3EEE5
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62F79DF2
/// @DnDArgument : "var" "attack_cooldown"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(attack_cooldown < 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 028719B9
	/// @DnDParent : 62F79DF2
	/// @DnDArgument : "speed" "obj_game.enemy_bullet_speed * 2"
	speed = obj_game.enemy_bullet_speed * 2;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C68CC8C
	/// @DnDParent : 62F79DF2
	/// @DnDArgument : "expr" "+10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += +10;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 78972D33
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1097B290
	/// @DnDParent : 78972D33
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "attack_cooldown"
	attack_cooldown += -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D770D4C
	/// @DnDParent : 78972D33
	/// @DnDArgument : "expr" "+2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += +2;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 05365D85
	/// @DnDParent : 78972D33
	/// @DnDArgument : "speed" "speed * 0.9"
	speed = speed * 0.9;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C3549B9
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "projectile_lifetime"
projectile_lifetime += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40F47012
/// @DnDArgument : "var" "time_offscreen"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "300"
if(time_offscreen >= 300){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30FE6385
	/// @DnDParent : 40F47012
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1789E354
/// @DnDArgument : "var" "projectile_lifetime"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(projectile_lifetime < 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7AD788F0
	/// @DnDParent : 1789E354
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FCB9F39
/// @DnDArgument : "var" "projectile_lifetime"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "60"
if(projectile_lifetime < 60){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52E57649
	/// @DnDInput : 2
	/// @DnDParent : 5FCB9F39
	/// @DnDArgument : "expr" "- 0.017"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-0.017"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "var_1" "image_yscale"
	image_xscale += - 0.017;
	image_yscale += -0.017;}
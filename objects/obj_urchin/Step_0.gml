/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 435C944A
/// @DnDArgument : "expr" "- 1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "attack_cooldown"
attack_cooldown += - 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42976980
/// @DnDArgument : "var" "attack_cooldown"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(attack_cooldown < 1)
{
	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 59F28A23
	/// @DnDParent : 42976980
	/// @DnDArgument : "cond" "i < 12"
	for(i = 0; i < 12; i += 1) {
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 038B89D1
		/// @DnDParent : 59F28A23
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "objectid" "obj_enemy_bullet_pink_tiny"
		/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_pink_tiny"
		bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_bullet_pink_tiny);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 374A4CFC
		/// @DnDInput : 2
		/// @DnDParent : 59F28A23
		/// @DnDArgument : "expr" "30 * i + attack_angle"
		/// @DnDArgument : "expr_1" "30"
		/// @DnDArgument : "var" "bullet.direction"
		/// @DnDArgument : "var_1" "attack_cooldown"
		bullet.direction = 30 * i + attack_angle;
		attack_cooldown = 30;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A62C8A8
	/// @DnDParent : 42976980
	/// @DnDArgument : "expr" "+15"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "attack_angle"
	attack_angle += +15;
}
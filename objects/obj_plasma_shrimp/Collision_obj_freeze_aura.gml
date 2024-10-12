/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 022D5935
/// @DnDArgument : "var" "plasma_shield_points"
/// @DnDArgument : "op" "2"
if(plasma_shield_points > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FB56CF8
	/// @DnDParent : 022D5935
	/// @DnDArgument : "expr" "- obj_player.freeze_aura_damage/60"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "plasma_shield_points"
	plasma_shield_points += - obj_player.freeze_aura_damage/60;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 486F53CB
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43528C7C
	/// @DnDParent : 486F53CB
	/// @DnDArgument : "expr" "- obj_player.freeze_aura_damage/60"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "current_health"
	current_health += - obj_player.freeze_aura_damage/60;}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 212186DF
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "freeze_particle"
/// @DnDArgument : "objectid" "obj_freeze_particle"
/// @DnDArgument : "layer" ""Instances_particles""
/// @DnDSaveInfo : "objectid" "obj_freeze_particle"
freeze_particle = instance_create_layer(x + 0, y + 0, "Instances_particles", obj_freeze_particle);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37C99C45
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "freeze_particle.speed"
freeze_particle.speed = 1;
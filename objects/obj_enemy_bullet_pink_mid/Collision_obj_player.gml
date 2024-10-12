/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7624A7DA
/// @DnDArgument : "var" "obj_player.shell_broken"
/// @DnDArgument : "value" "false"
if(obj_player.shell_broken == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 321EE6D7
	/// @DnDInput : 2
	/// @DnDParent : 7624A7DA
	/// @DnDArgument : "expr" "- base_damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "obj_player.shell_regrowth / 2"
	/// @DnDArgument : "var" "obj_player.current_shell_points"
	/// @DnDArgument : "var_1" "obj_player.shell_regrowth"
	obj_player.current_shell_points += - base_damage;
	obj_player.shell_regrowth = obj_player.shell_regrowth / 2;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C5BEA9C
/// @DnDArgument : "var" "obj_player.shell_broken"
/// @DnDArgument : "value" "true"
if(obj_player.shell_broken == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 644C9111
	/// @DnDParent : 5C5BEA9C
	/// @DnDArgument : "expr" "- base_damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.current_health"
	obj_player.current_health += - base_damage;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A9B718B
	/// @DnDParent : 5C5BEA9C
	/// @DnDArgument : "var" "obj_player.health_delay"
	obj_player.health_delay = 0;}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2DD57E67
instance_destroy();
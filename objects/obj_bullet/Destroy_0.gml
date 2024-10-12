/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1D4E9033
/// @DnDArgument : "cond" "i < 8 * obj_player.bullet_damage"
for(i = 0; i < 8 * obj_player.bullet_damage; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 48AFFCF2
	/// @DnDParent : 1D4E9033
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "particle"
	/// @DnDArgument : "objectid" "obj_bullet_particle"
	/// @DnDSaveInfo : "objectid" "obj_bullet_particle"
	particle = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet_particle);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CF2046B
	/// @DnDInput : 2
	/// @DnDParent : 1D4E9033
	/// @DnDArgument : "expr" "direction + 180 + random_range(-30, 30)"
	/// @DnDArgument : "expr_1" "6 + obj_player.bullet_damage * random(10)"
	/// @DnDArgument : "var" "particle.direction"
	/// @DnDArgument : "var_1" "particle.speed"
	particle.direction = direction + 180 + random_range(-30, 30);
	particle.speed = 6 + obj_player.bullet_damage * random(10);
}
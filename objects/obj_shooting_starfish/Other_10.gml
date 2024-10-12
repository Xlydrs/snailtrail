/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 5C3B0189
/// @DnDArgument : "cond" "i < 5"
for(i = 0; i < 5; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D571339
	/// @DnDParent : 5C3B0189
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "arm"
	/// @DnDArgument : "objectid" "obj_shooting_starfish_arm"
	/// @DnDArgument : "layer" ""Instances_2""
	/// @DnDSaveInfo : "objectid" "obj_shooting_starfish_arm"
	arm = instance_create_layer(x + 0, y + 0, "Instances_2", obj_shooting_starfish_arm);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20B1F120
	/// @DnDParent : 5C3B0189
	/// @DnDArgument : "expr" "i * 72"
	/// @DnDArgument : "var" "arm.image_angle"
	arm.image_angle = i * 72;
}
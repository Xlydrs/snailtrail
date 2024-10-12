/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54EFB8D8
/// @DnDArgument : "expr" "bullet_expire_time - 1"
/// @DnDArgument : "var" "bullet_expire_time"
bullet_expire_time = bullet_expire_time - 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E9A646D
/// @DnDArgument : "var" "bullet_expire_time"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(bullet_expire_time < 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 17E52250
	/// @DnDParent : 6E9A646D
	instance_destroy();
}
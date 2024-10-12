/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54304155
/// @DnDArgument : "var" "obj_player.rolling"
/// @DnDArgument : "value" "true"
if(obj_player.rolling == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E67305E
	/// @DnDParent : 54304155
	/// @DnDArgument : "var" "collision_iframes"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(collision_iframes < 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C105289
		/// @DnDInput : 3
		/// @DnDParent : 0E67305E
		/// @DnDArgument : "expr" "obj_player.stun_duration"
		/// @DnDArgument : "expr_1" "current_health - obj_player.roll_damage"
		/// @DnDArgument : "expr_2" "30"
		/// @DnDArgument : "var" "stun_timer"
		/// @DnDArgument : "var_1" "current_health"
		/// @DnDArgument : "var_2" "collision_iframes"
		stun_timer = obj_player.stun_duration;
		current_health = current_health - obj_player.roll_damage;
		collision_iframes = 30;
	}
}
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5EEEE58F
/// @DnDArgument : "expr" "speed  * 0.9"
/// @DnDArgument : "var" "speed"
speed = speed  * 0.9;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BF39E25
/// @DnDDisabled : 1
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.01"
/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 726259C2
/// @DnDDisabled : 1
/// @DnDParent : 2BF39E25

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17D6B7F7
/// @DnDInput : 2
/// @DnDArgument : "expr" "current_duration - 1"
/// @DnDArgument : "expr_1" "- 0.0166 / (obj_player.slime_linger)"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "current_duration"
/// @DnDArgument : "var_1" "image_alpha"
current_duration = current_duration - 1;
image_alpha += - 0.0166 / (obj_player.slime_linger);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 584A919E
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "spr_slime4"
if(!(sprite_index == spr_slime4))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48090A99
	/// @DnDParent : 584A919E
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "2"
	if(image_xscale <= 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16540D17
		/// @DnDInput : 2
		/// @DnDParent : 48090A99
		/// @DnDArgument : "expr" "+ 0.01 * obj_player.slime_size"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "+  0.01 * obj_player.slime_size"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale += + 0.01 * obj_player.slime_size;
		image_yscale += +  0.01 * obj_player.slime_size;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63867F08
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_slime"
if(sprite_index == spr_slime)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 752DAD3C
	/// @DnDParent : 63867F08
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1.25"
	if(image_xscale > 1.25)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 36ABA0DE
		/// @DnDParent : 752DAD3C
		/// @DnDArgument : "spriteind" "spr_slime1"
		/// @DnDSaveInfo : "spriteind" "spr_slime1"
		sprite_index = spr_slime1;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10A67406
		/// @DnDInput : 2
		/// @DnDParent : 752DAD3C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EA4503B
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_slime1"
if(sprite_index == spr_slime1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78D496F5
	/// @DnDParent : 1EA4503B
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1.6"
	if(image_xscale > 1.6)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0D741087
		/// @DnDParent : 78D496F5
		/// @DnDArgument : "spriteind" "spr_slime2"
		/// @DnDSaveInfo : "spriteind" "spr_slime2"
		sprite_index = spr_slime2;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D178209
		/// @DnDInput : 2
		/// @DnDParent : 78D496F5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73361CF8
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_slime2"
if(sprite_index == spr_slime2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 743335D6
	/// @DnDParent : 73361CF8
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1.5"
	if(image_xscale > 1.5)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 73326540
		/// @DnDParent : 743335D6
		/// @DnDArgument : "spriteind" "spr_slime3"
		/// @DnDSaveInfo : "spriteind" "spr_slime3"
		sprite_index = spr_slime3;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62D79D35
		/// @DnDInput : 2
		/// @DnDParent : 743335D6
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FBB8B2F
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_slime3"
if(sprite_index == spr_slime3)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 260127DD
	/// @DnDParent : 1FBB8B2F
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1.3"
	if(image_xscale > 1.3)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2B1B35BE
		/// @DnDParent : 260127DD
		/// @DnDArgument : "spriteind" "spr_slime4"
		/// @DnDSaveInfo : "spriteind" "spr_slime4"
		sprite_index = spr_slime4;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78ACF37E
		/// @DnDInput : 2
		/// @DnDParent : 260127DD
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AC238A1
/// @DnDArgument : "var" "current_duration"
if(current_duration == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D5B8837
	/// @DnDParent : 7AC238A1
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B38CF44
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_slime2"
if(sprite_index == spr_slime2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C6975E5
	/// @DnDParent : 3B38CF44
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1.5"
	if(image_xscale > 1.5)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 118FFE2F
		/// @DnDParent : 0C6975E5
		/// @DnDArgument : "spriteind" "spr_slime3"
		/// @DnDSaveInfo : "spriteind" "spr_slime3"
		sprite_index = spr_slime3;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EACFC8F
		/// @DnDInput : 2
		/// @DnDParent : 0C6975E5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale = 1;
		image_yscale = 1;
	}
}
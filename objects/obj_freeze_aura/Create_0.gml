/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E6A6C36
/// @DnDInput : 8
/// @DnDArgument : "expr_1" "0.5"
/// @DnDArgument : "expr_2" "true"
/// @DnDArgument : "expr_3" "1.5 * obj_player.freeze_aura_size"
/// @DnDArgument : "expr_4" "1 + 0.5* obj_player.freeze_aura_size"
/// @DnDArgument : "expr_5" "false"
/// @DnDArgument : "expr_6" "aura_min_size"
/// @DnDArgument : "expr_7" "aura_min_size"
/// @DnDArgument : "var" "current_size"
/// @DnDArgument : "var_1" "image_alpha"
/// @DnDArgument : "var_2" "aura_growing"
/// @DnDArgument : "var_3" "aura_max_size"
/// @DnDArgument : "var_4" "aura_min_size"
/// @DnDArgument : "var_5" "aura_shrinking"
/// @DnDArgument : "var_6" "image_xscale"
/// @DnDArgument : "var_7" "image_yscale"
current_size = 0;
image_alpha = 0.5;
aura_growing = true;
aura_max_size = 1.5 * obj_player.freeze_aura_size;
aura_min_size = 1 + 0.5* obj_player.freeze_aura_size;
aura_shrinking = false;
image_xscale = aura_min_size;
image_yscale = aura_min_size;
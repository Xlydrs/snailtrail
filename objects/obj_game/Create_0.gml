/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 203AFAA1
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "paused"
paused = false;

/// @DnDAction : YoYo Games.Miscellaneous.Set_Window_State
/// @DnDVersion : 1
/// @DnDHash : 5A0A1F3B
/// @DnDArgument : "type" "2"
window_set_fullscreen(true);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 2BCCAEB4
/// @DnDDisabled : 1
/// @DnDArgument : "room" "game_room"
/// @DnDSaveInfo : "room" "game_room"


/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 61E8B373
/// @DnDArgument : "var" "1"
/// @DnDArgument : "value" "true"
view_set_visible(0, true);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 57A64DAA
/// @DnDInput : 6
/// @DnDArgument : "expr_1" "60"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "var" "game_time"
/// @DnDArgument : "var_1" "frame_counter"
/// @DnDArgument : "var_2" "current_wave"
/// @DnDArgument : "var_3" "wave_counter"
/// @DnDArgument : "var_4" "to_next_wave"
/// @DnDArgument : "var_5" "enemy_count"
game_time = 0;
frame_counter = 60;
current_wave = 0;
wave_counter = 0;
to_next_wave = 1;
enemy_count = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C215AD5
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "enemy_bullet_speed"
enemy_bullet_speed = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26D01B6F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "biome"
biome = 1;
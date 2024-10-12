/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 51ABE1DB
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
direction = point_direction(x, y, obj_player.x, obj_player.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54F22C45
/// @DnDComment : basic enemy variables
/// @DnDInput : 10
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_5" "false"
/// @DnDArgument : "expr_8" "2"
/// @DnDArgument : "expr_9" "4"
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "var_1" "poison_remaining"
/// @DnDArgument : "var_2" "poison_cooldown"
/// @DnDArgument : "var_3" "stun_timer"
/// @DnDArgument : "var_4" "collision_iframes"
/// @DnDArgument : "var_5" "initial_poison_tick"
/// @DnDArgument : "var_6" "ignite_remaining"
/// @DnDArgument : "var_7" "ignite_cooldown"
/// @DnDArgument : "var_8" "base_speed"
/// @DnDArgument : "var_9" "turn_speed"
current_health = 50;
poison_remaining = 0;
poison_cooldown = 0;
stun_timer = 0;
collision_iframes = 0;
initial_poison_tick = false;
ignite_remaining = 0;
ignite_cooldown = 0;
base_speed = 2;
turn_speed = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 083B2F4B
/// @DnDArgument : "expr" "240"
/// @DnDArgument : "var" "spawn_cell"
spawn_cell = 240;
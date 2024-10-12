/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AE55A52
/// @DnDInput : 8
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_3" "60"
/// @DnDArgument : "expr_4" "600"
/// @DnDArgument : "expr_5" "true"
/// @DnDArgument : "expr_6" "300"
/// @DnDArgument : "expr_7" "3"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
/// @DnDArgument : "var_2" "spin_duration"
/// @DnDArgument : "var_3" "shoot_cooldown"
/// @DnDArgument : "var_4" "shoot_timer"
/// @DnDArgument : "var_5" "shooting"
/// @DnDArgument : "var_6" "shoot_break"
/// @DnDArgument : "var_7" "turn_speed"
image_xscale = 1;
image_yscale = 1;
spin_duration = 0;
shoot_cooldown = 60;
shoot_timer = 600;
shooting = true;
shoot_break = 300;
turn_speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3484194A
/// @DnDArgument : "speed" "1"
speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3EEA13BE
/// @DnDComment : basic enemy variables
/// @DnDInput : 9
/// @DnDArgument : "expr" "150"
/// @DnDArgument : "expr_5" "false"
/// @DnDArgument : "expr_8" "2"
/// @DnDArgument : "var" "current_health"
/// @DnDArgument : "var_1" "poison_remaining"
/// @DnDArgument : "var_2" "poison_cooldown"
/// @DnDArgument : "var_3" "stun_timer"
/// @DnDArgument : "var_4" "collision_iframes"
/// @DnDArgument : "var_5" "initial_poison_tick"
/// @DnDArgument : "var_6" "ignite_remaining"
/// @DnDArgument : "var_7" "ignite_cooldown"
/// @DnDArgument : "var_8" "base_speed"
current_health = 150;
poison_remaining = 0;
poison_cooldown = 0;
stun_timer = 0;
collision_iframes = 0;
initial_poison_tick = false;
ignite_remaining = 0;
ignite_cooldown = 0;
base_speed = 2;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52353772
/// @DnDDisabled : 1
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_shooting_starfish"
/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 25941C35
/// @DnDDisabled : 1
/// @DnDParent : 52353772
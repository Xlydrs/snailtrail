/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0561AD1E
/// @DnDComment : basic enemy variables
/// @DnDInput : 9
/// @DnDArgument : "expr" "50"
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
current_health = 50;
poison_remaining = 0;
poison_cooldown = 0;
stun_timer = 0;
collision_iframes = 0;
initial_poison_tick = false;
ignite_remaining = 0;
ignite_cooldown = 0;
base_speed = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E485950
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "plasma_shield_points"
plasma_shield_points = 50;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77658B14
/// @DnDInput : 7
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "var_1" "attack_cooldown"
/// @DnDArgument : "var_2" "attack_duration"
/// @DnDArgument : "var_3" "bullet_cooldown"
/// @DnDArgument : "var_4" "attack_type"
/// @DnDArgument : "var_5" "bullet_queue"
/// @DnDArgument : "var_6" "bullet_queue_cooldown"
attacking = false;
attack_cooldown = 0;
attack_duration = 0;
bullet_cooldown = 0;
attack_type = 0;
bullet_queue = 0;
bullet_queue_cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E748590
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "true"
/// @DnDArgument : "var" "vulnerability_phase"
/// @DnDArgument : "var_1" "attack_phase"
/// @DnDArgument : "var_2" "vulnerability_phase_timer"
vulnerability_phase = false;
attack_phase = true;
vulnerability_phase_timer = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 498AD4FF
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "var" "plasma_burst_countdown"
plasma_burst_countdown = 120;
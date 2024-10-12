/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29FECE5E
/// @DnDInput : 2
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
image_xscale = 3;
image_yscale = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0561AD1E
/// @DnDComment : basic enemy variables
/// @DnDInput : 10
/// @DnDArgument : "expr" "300"
/// @DnDArgument : "expr_5" "false"
/// @DnDArgument : "expr_8" "4"
/// @DnDArgument : "expr_9" "1.5"
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
current_health = 300;
poison_remaining = 0;
poison_cooldown = 0;
stun_timer = 0;
collision_iframes = 0;
initial_poison_tick = false;
ignite_remaining = 0;
ignite_cooldown = 0;
base_speed = 4;
turn_speed = 1.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C9019C6
/// @DnDInput : 7
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_3" "15"
/// @DnDArgument : "expr_5" "false"
/// @DnDArgument : "expr_6" "5"
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "var_1" "attack_cooldown"
/// @DnDArgument : "var_2" "attack_duration"
/// @DnDArgument : "var_3" "lunge_speed"
/// @DnDArgument : "var_4" "attack_windup"
/// @DnDArgument : "var_5" "hit_player"
/// @DnDArgument : "var_6" "base_damage"
attacking = true;
attack_cooldown = 0;
attack_duration = 0;
lunge_speed = 15;
attack_windup = 0;
hit_player = false;
base_damage = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43E10F30
/// @DnDInput : 4
/// @DnDArgument : "expr_3" ""lunging""
/// @DnDArgument : "var" "attack_count"
/// @DnDArgument : "var_1" "bullet_cooldown"
/// @DnDArgument : "var_2" "attack_cooldown"
/// @DnDArgument : "var_3" "attack_phase"
attack_count = 0;
bullet_cooldown = 0;
attack_cooldown = 0;
attack_phase = "lunging";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6879A073
/// @DnDInput : 2
/// @DnDArgument : "var" "spawn_queue_swarm_ciliate"
/// @DnDArgument : "var_1" "ciliate_spawn_timer"
spawn_queue_swarm_ciliate = 0;
ciliate_spawn_timer = 0;
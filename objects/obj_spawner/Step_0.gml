/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C6F96B3
/// @DnDComment : enable all spawns
/// @DnDArgument : "var" "obj_game.biome"
if(obj_game.biome == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79080298
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_value"
	/// @DnDArgument : "op" "2"
	if(spawn_value > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35E8E21C
		/// @DnDParent : 79080298
		/// @DnDArgument : "expr" "irandom(12)"
		/// @DnDArgument : "var" "spawn_picker"
		spawn_picker = irandom(12);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E80DC59
	/// @DnDComment : queue spawn swarmer ciliate
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "1"
	if(spawn_picker == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E12746F
		/// @DnDParent : 2E80DC59
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47F63BED
			/// @DnDInput : 2
			/// @DnDParent : 2E12746F
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+8"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_swarm_ciliate"
			spawn_value += - 0.5;
			spawn_queue_swarm_ciliate += +8;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0355FC80
	/// @DnDComment : queue spawn orb cell large
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "2"
	if(spawn_picker == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B79E9DE
		/// @DnDParent : 0355FC80
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "2"
		if(spawn_value >= 2){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01B151EC
			/// @DnDInput : 2
			/// @DnDParent : 4B79E9DE
			/// @DnDArgument : "expr" "- 2"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_orb_cell_L"
			spawn_value += - 2;
			spawn_queue_orb_cell_L += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 747853AC
	/// @DnDComment : queue spawn orb cell medium
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "3"
	if(spawn_picker == 3){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DB43F71
		/// @DnDParent : 747853AC
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(spawn_value >= 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4083392E
			/// @DnDInput : 2
			/// @DnDParent : 5DB43F71
			/// @DnDArgument : "expr" "- 1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+2"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_orb_cell_M"
			spawn_value += - 1;
			spawn_queue_orb_cell_M += +2;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6482F8E3
	/// @DnDComment : queue spawn orb cell small
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "4"
	if(spawn_picker == 4){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 324756D4
		/// @DnDParent : 6482F8E3
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 019EDBA8
			/// @DnDInput : 2
			/// @DnDParent : 324756D4
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+4"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_orb_cell_S"
			spawn_value += - 0.5;
			spawn_queue_orb_cell_S += +4;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 354DEE55
	/// @DnDComment : queue spawn orb cell huge
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "5"
	if(spawn_picker == 5){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D8249CB
		/// @DnDParent : 354DEE55
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "4"
		if(spawn_value >= 4){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E53BC5D
			/// @DnDInput : 2
			/// @DnDParent : 6D8249CB
			/// @DnDArgument : "expr" "- 4"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_orb_cell_H"
			spawn_value += - 4;
			spawn_queue_orb_cell_H += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15715615
	/// @DnDComment : queue spawn shooting star
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "6"
	if(spawn_picker == 6){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2738359E
		/// @DnDParent : 15715615
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "8"
		if(spawn_value >= 8){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 526847C7
			/// @DnDInput : 2
			/// @DnDParent : 2738359E
			/// @DnDArgument : "expr" "-8"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_shooting_star"
			spawn_value += -8;
			spawn_queue_shooting_star += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AF99A22
	/// @DnDComment : queue spawn bacteria rod
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "7"
	if(spawn_picker == 7){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E7737FE
		/// @DnDParent : 6AF99A22
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1AE59259
			/// @DnDInput : 2
			/// @DnDParent : 5E7737FE
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_bacteria"
			spawn_value += - 0.5;
			spawn_queue_bacteria += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 382B0450
	/// @DnDComment : queue spawn hunter ciliate
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "8"
	if(spawn_picker == 8){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53C44D42
		/// @DnDParent : 382B0450
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(spawn_value >= 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0258D184
			/// @DnDInput : 2
			/// @DnDParent : 53C44D42
			/// @DnDArgument : "expr" "- 1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+2"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_hunter_ciliate"
			spawn_value += - 1;
			spawn_queue_hunter_ciliate += +2;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02B74C36
	/// @DnDComment : spawn queue mortar grub
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "9"
	if(spawn_picker == 9){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CC91DDB
		/// @DnDParent : 02B74C36
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 634F3969
			/// @DnDInput : 2
			/// @DnDParent : 5CC91DDB
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_mortar_grub"
			spawn_value += - 0.5;
			spawn_queue_mortar_grub += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21067D83
	/// @DnDComment : spawn queue firefly
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "10"
	if(spawn_picker == 10){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BD900D5
		/// @DnDParent : 21067D83
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75906404
			/// @DnDInput : 2
			/// @DnDParent : 5BD900D5
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+3"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_firefly"
			spawn_value += - 0.5;
			spawn_queue_firefly += +3;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53870528
	/// @DnDComment : spawn queue jellycube
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "11"
	if(spawn_picker == 11){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BD11872
		/// @DnDParent : 53870528
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.25"
		if(spawn_value >= 0.25){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F6B74CE
			/// @DnDInput : 2
			/// @DnDParent : 1BD11872
			/// @DnDArgument : "expr" "- 0.25"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+4"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_jellycube"
			spawn_value += - 0.25;
			spawn_queue_jellycube += +4;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75BD6B6C
	/// @DnDComment : queue spawn bruiser beetle
	/// @DnDParent : 2C6F96B3
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "12"
	if(spawn_picker == 12){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62271474
		/// @DnDParent : 75BD6B6C
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "4"
		if(spawn_value >= 4){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1B67B4F4
			/// @DnDInput : 2
			/// @DnDParent : 62271474
			/// @DnDArgument : "expr" "- 4"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_bruiser_beetle"
			spawn_value += - 4;
			spawn_queue_bruiser_beetle += +1;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43806932
/// @DnDComment : coral forest spawns
/// @DnDArgument : "var" "obj_game.biome"
/// @DnDArgument : "value" "1"
if(obj_game.biome == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 782E8CFD
	/// @DnDParent : 43806932
	/// @DnDArgument : "var" "spawn_value"
	/// @DnDArgument : "op" "2"
	if(spawn_value > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E557E19
		/// @DnDParent : 782E8CFD
		/// @DnDArgument : "expr" "irandom(6)"
		/// @DnDArgument : "var" "spawn_picker"
		spawn_picker = irandom(6);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F90AAD6
	/// @DnDComment : queue spawn swarmer ciliate
	/// @DnDParent : 43806932
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "1"
	if(spawn_picker == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 787BBC57
		/// @DnDParent : 3F90AAD6
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A59564D
			/// @DnDInput : 2
			/// @DnDParent : 787BBC57
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+8"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_swarm_ciliate"
			spawn_value += - 0.5;
			spawn_queue_swarm_ciliate += +8;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15F48CD3
	/// @DnDComment : queue spawn hunter ciliate
	/// @DnDParent : 43806932
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "2"
	if(spawn_picker == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 029FF86F
		/// @DnDParent : 15F48CD3
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(spawn_value >= 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5292015F
			/// @DnDInput : 2
			/// @DnDParent : 029FF86F
			/// @DnDArgument : "expr" "- 1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+2"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_hunter_ciliate"
			spawn_value += - 1;
			spawn_queue_hunter_ciliate += +2;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BA38658
	/// @DnDComment : queue spawn bacteria rod
	/// @DnDParent : 43806932
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "3"
	if(spawn_picker == 3){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D3EDBCA
		/// @DnDParent : 4BA38658
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A9EBD5D
			/// @DnDInput : 2
			/// @DnDParent : 4D3EDBCA
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_bacteria"
			spawn_value += - 0.5;
			spawn_queue_bacteria += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4541EBEC
	/// @DnDComment : queue spawn orb cell large
	/// @DnDParent : 43806932
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "4"
	if(spawn_picker == 4){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1AA9B51D
		/// @DnDParent : 4541EBEC
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "2"
		if(spawn_value >= 2){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50A592DF
			/// @DnDInput : 2
			/// @DnDParent : 1AA9B51D
			/// @DnDArgument : "expr" "- 2"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_orb_cell_L"
			spawn_value += - 2;
			spawn_queue_orb_cell_L += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4945C5DF
	/// @DnDComment : queue spawn orb cell medium
	/// @DnDParent : 43806932
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "5"
	if(spawn_picker == 5){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DF4FA45
		/// @DnDParent : 4945C5DF
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(spawn_value >= 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42EC2F3B
			/// @DnDInput : 2
			/// @DnDParent : 6DF4FA45
			/// @DnDArgument : "expr" "- 1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+2"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_orb_cell_M"
			spawn_value += - 1;
			spawn_queue_orb_cell_M += +2;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BE069EC
	/// @DnDComment : queue spawn orb cell small
	/// @DnDParent : 43806932
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "6"
	if(spawn_picker == 6){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 158A0F5E
		/// @DnDParent : 0BE069EC
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67BCA274
			/// @DnDInput : 2
			/// @DnDParent : 158A0F5E
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+4"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_orb_cell_S"
			spawn_value += - 0.5;
			spawn_queue_orb_cell_S += +4;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31B71FC6
/// @DnDComment : plains spawns
/// @DnDArgument : "var" "obj_game.biome"
/// @DnDArgument : "value" "2"
if(obj_game.biome == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 651D7EA0
	/// @DnDParent : 31B71FC6
	/// @DnDArgument : "var" "spawn_value"
	/// @DnDArgument : "op" "2"
	if(spawn_value > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1295168E
		/// @DnDParent : 651D7EA0
		/// @DnDArgument : "expr" "irandom(4)"
		/// @DnDArgument : "var" "spawn_picker"
		spawn_picker = irandom(4);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AFF6DFE
	/// @DnDComment : queue spawn bacteria rod
	/// @DnDParent : 31B71FC6
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "1"
	if(spawn_picker == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53BDFFC3
		/// @DnDParent : 6AFF6DFE
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79699DCD
			/// @DnDInput : 2
			/// @DnDParent : 53BDFFC3
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_bacteria"
			spawn_value += - 0.5;
			spawn_queue_bacteria += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27E4A88F
	/// @DnDComment : queue spawn bruiser beetle
	/// @DnDParent : 31B71FC6
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "2"
	if(spawn_picker == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C1B1784
		/// @DnDParent : 27E4A88F
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "4"
		if(spawn_value >= 4){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5AED91C0
			/// @DnDInput : 2
			/// @DnDParent : 5C1B1784
			/// @DnDArgument : "expr" "- 4"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_bruiser_beetle"
			spawn_value += - 4;
			spawn_queue_bruiser_beetle += +1;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 281B6DB9
	/// @DnDComment : spawn queue firefly
	/// @DnDParent : 31B71FC6
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "3"
	if(spawn_picker == 3){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37CFFB10
		/// @DnDParent : 281B6DB9
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 168FE130
			/// @DnDInput : 2
			/// @DnDParent : 37CFFB10
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+3"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_firefly"
			spawn_value += - 0.5;
			spawn_queue_firefly += +3;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CA342EA
	/// @DnDComment : spawn queue mortar grub
	/// @DnDParent : 31B71FC6
	/// @DnDArgument : "var" "spawn_picker"
	/// @DnDArgument : "value" "4"
	if(spawn_picker == 4){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B9575A5
		/// @DnDParent : 3CA342EA
		/// @DnDArgument : "var" "spawn_value"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "0.5"
		if(spawn_value >= 0.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D069828
			/// @DnDInput : 2
			/// @DnDParent : 2B9575A5
			/// @DnDArgument : "expr" "- 0.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "+1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "spawn_value"
			/// @DnDArgument : "var_1" "spawn_queue_mortar_grub"
			spawn_value += - 0.5;
			spawn_queue_mortar_grub += +1;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 507E2D62
/// @DnDDisabled : 1
/// @DnDArgument : "var" "point_distance(x, y, obj_player.x, obj_player.y)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1000"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0932E6BE
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDParent : 507E2D62
/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10246AE0
/// @DnDComment : spawn swarm ciliate
/// @DnDArgument : "var" "spawn_queue_swarm_ciliate"
/// @DnDArgument : "op" "2"
if(spawn_queue_swarm_ciliate > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2781F646
	/// @DnDParent : 10246AE0
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ciliate_spawn_timer"
	ciliate_spawn_timer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54B2EFB6
	/// @DnDParent : 10246AE0
	/// @DnDArgument : "var" "ciliate_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(ciliate_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 375BFFD6
		/// @DnDInput : 2
		/// @DnDParent : 54B2EFB6
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4A57CF70
		/// @DnDParent : 54B2EFB6
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_swamer_ciliate"
		/// @DnDSaveInfo : "objectid" "obj_swamer_ciliate"
		instance_create_layer(x + 0, y + 0, "Instances", obj_swamer_ciliate);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A2284AE
		/// @DnDInput : 2
		/// @DnDParent : 54B2EFB6
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "- 1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "ciliate_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_swarm_ciliate"
		ciliate_spawn_timer = 1;
		spawn_queue_swarm_ciliate += - 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BEA1AE9
/// @DnDComment : spawn shooting star
/// @DnDArgument : "var" "spawn_queue_shooting_star"
/// @DnDArgument : "op" "2"
if(spawn_queue_shooting_star > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CF9FC98
	/// @DnDParent : 0BEA1AE9
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shooting_star_spawn_timer"
	shooting_star_spawn_timer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DF2B0B5
	/// @DnDParent : 0BEA1AE9
	/// @DnDArgument : "var" "shooting_star_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(shooting_star_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F388676
		/// @DnDInput : 2
		/// @DnDParent : 6DF2B0B5
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4CC01502
		/// @DnDParent : 6DF2B0B5
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_shooting_starfish"
		/// @DnDSaveInfo : "objectid" "obj_shooting_starfish"
		instance_create_layer(x + 0, y + 0, "Instances", obj_shooting_starfish);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F2BFB76
		/// @DnDInput : 2
		/// @DnDParent : 6DF2B0B5
		/// @DnDArgument : "expr" "300"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "shooting_star_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_shooting_star"
		shooting_star_spawn_timer = 300;
		spawn_queue_shooting_star += -1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A3F6AF6
/// @DnDComment : spawn large orb cell
/// @DnDArgument : "var" "spawn_queue_orb_cell_L"
/// @DnDArgument : "op" "2"
if(spawn_queue_orb_cell_L > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19601F01
	/// @DnDParent : 6A3F6AF6
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "orb_cell_L_spawn_timer"
	orb_cell_L_spawn_timer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7774806F
	/// @DnDParent : 6A3F6AF6
	/// @DnDArgument : "var" "orb_cell_L_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(orb_cell_L_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42E4C825
		/// @DnDInput : 2
		/// @DnDParent : 7774806F
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 349EFE2C
		/// @DnDParent : 7774806F
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_orb_cell_medium"
		/// @DnDSaveInfo : "objectid" "obj_orb_cell_medium"
		instance_create_layer(x + 0, y + 0, "Instances", obj_orb_cell_medium);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6645A2EA
		/// @DnDInput : 2
		/// @DnDParent : 7774806F
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "orb_cell_L_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_orb_cell_L"
		orb_cell_L_spawn_timer = 120;
		spawn_queue_orb_cell_L += -1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 757B839F
/// @DnDComment : spawn medium orb cell
/// @DnDArgument : "var" "spawn_queue_orb_cell_M"
/// @DnDArgument : "op" "2"
if(spawn_queue_orb_cell_M > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29D14C31
	/// @DnDParent : 757B839F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "orb_cell_M_spawn_timer"
	orb_cell_M_spawn_timer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 792E4CCB
	/// @DnDParent : 757B839F
	/// @DnDArgument : "var" "orb_cell_M_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(orb_cell_M_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E6EEDBC
		/// @DnDInput : 2
		/// @DnDParent : 792E4CCB
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3C468A45
		/// @DnDParent : 792E4CCB
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_orb_cell_small"
		/// @DnDSaveInfo : "objectid" "obj_orb_cell_small"
		instance_create_layer(x + 0, y + 0, "Instances", obj_orb_cell_small);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44B7EC66
		/// @DnDInput : 2
		/// @DnDParent : 792E4CCB
		/// @DnDArgument : "expr" "30"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "orb_cell_M_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_orb_cell_M"
		orb_cell_M_spawn_timer = 30;
		spawn_queue_orb_cell_M += -1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 336F3A09
/// @DnDComment : spawn small orb cell
/// @DnDArgument : "var" "spawn_queue_orb_cell_S"
/// @DnDArgument : "op" "2"
if(spawn_queue_orb_cell_S > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0787E762
	/// @DnDParent : 336F3A09
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "orb_cell_S_spawn_timer"
	orb_cell_S_spawn_timer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46E7D37B
	/// @DnDParent : 336F3A09
	/// @DnDArgument : "var" "orb_cell_S_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(orb_cell_S_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7018E16B
		/// @DnDInput : 2
		/// @DnDParent : 46E7D37B
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19DFE59D
		/// @DnDParent : 46E7D37B
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_orb_cell_tiny"
		/// @DnDSaveInfo : "objectid" "obj_orb_cell_tiny"
		instance_create_layer(x + 0, y + 0, "Instances", obj_orb_cell_tiny);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5636E1FE
		/// @DnDInput : 2
		/// @DnDParent : 46E7D37B
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "orb_cell_S_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_orb_cell_S"
		orb_cell_S_spawn_timer = 10;
		spawn_queue_orb_cell_S += -1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F1F9016
/// @DnDComment : spawn large orb cell
/// @DnDArgument : "var" "spawn_queue_orb_cell_H"
/// @DnDArgument : "op" "2"
if(spawn_queue_orb_cell_H > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6916F605
	/// @DnDParent : 5F1F9016
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "orb_cell_H_spawn_timer"
	orb_cell_H_spawn_timer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56E727D3
	/// @DnDParent : 5F1F9016
	/// @DnDArgument : "var" "orb_cell_H_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(orb_cell_H_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31EFD09C
		/// @DnDInput : 2
		/// @DnDParent : 56E727D3
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1112F607
		/// @DnDParent : 56E727D3
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_orb_cell_huge"
		/// @DnDSaveInfo : "objectid" "obj_orb_cell_huge"
		instance_create_layer(x + 0, y + 0, "Instances", obj_orb_cell_huge);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2433621A
		/// @DnDInput : 2
		/// @DnDParent : 56E727D3
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "orb_cell_H_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_orb_cell_H"
		orb_cell_H_spawn_timer = 120;
		spawn_queue_orb_cell_H += -1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46BD9C13
/// @DnDComment : spawn hunter ciliate
/// @DnDArgument : "var" "spawn_queue_hunter_ciliate"
/// @DnDArgument : "op" "2"
if(spawn_queue_hunter_ciliate > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BA69A74
	/// @DnDParent : 46BD9C13
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hunter_ciliate_spawn_timer"
	hunter_ciliate_spawn_timer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32C6B780
	/// @DnDParent : 46BD9C13
	/// @DnDArgument : "var" "hunter_ciliate_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(hunter_ciliate_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47B2B2C5
		/// @DnDInput : 2
		/// @DnDParent : 32C6B780
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 09070659
		/// @DnDParent : 32C6B780
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_hunter_ciliate"
		/// @DnDSaveInfo : "objectid" "obj_hunter_ciliate"
		instance_create_layer(x + 0, y + 0, "Instances", obj_hunter_ciliate);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 00CE5C46
		/// @DnDInput : 2
		/// @DnDParent : 32C6B780
		/// @DnDArgument : "expr" "30"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "hunter_ciliate_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_hunter_ciliate"
		hunter_ciliate_spawn_timer = 30;
		spawn_queue_hunter_ciliate += -1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 029FC5B5
/// @DnDComment : spawn bacteria rod
/// @DnDArgument : "var" "spawn_queue_bacteria"
/// @DnDArgument : "op" "2"
if(spawn_queue_bacteria > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DFDAE32
	/// @DnDParent : 029FC5B5
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bacteria_spawn_timer"
	bacteria_spawn_timer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C0C313C
	/// @DnDParent : 029FC5B5
	/// @DnDArgument : "var" "bacteria_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(bacteria_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36ED4F7D
		/// @DnDInput : 2
		/// @DnDParent : 4C0C313C
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5E2BEA37
		/// @DnDParent : 4C0C313C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bacteria_rod"
		/// @DnDSaveInfo : "objectid" "obj_bacteria_rod"
		instance_create_layer(x + 0, y + 0, "Instances", obj_bacteria_rod);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 254A48F2
		/// @DnDInput : 2
		/// @DnDParent : 4C0C313C
		/// @DnDArgument : "expr" "30"
		/// @DnDArgument : "expr_1" "- 1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "bacteria_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_bacteria"
		bacteria_spawn_timer = 30;
		spawn_queue_bacteria += - 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21C218EB
/// @DnDComment : spawn mortar grub
/// @DnDArgument : "var" "spawn_queue_mortar_grub"
/// @DnDArgument : "op" "2"
if(spawn_queue_mortar_grub > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65935181
	/// @DnDParent : 21C218EB
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "mortar_grub_spawn_timer"
	mortar_grub_spawn_timer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5962B2AC
	/// @DnDParent : 21C218EB
	/// @DnDArgument : "var" "mortar_grub_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(mortar_grub_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 440AB1A1
		/// @DnDInput : 2
		/// @DnDParent : 5962B2AC
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5C1B76F0
		/// @DnDParent : 5962B2AC
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_mortar_grub"
		/// @DnDSaveInfo : "objectid" "obj_mortar_grub"
		instance_create_layer(x + 0, y + 0, "Instances", obj_mortar_grub);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 073AE229
		/// @DnDInput : 2
		/// @DnDParent : 5962B2AC
		/// @DnDArgument : "expr" "60"
		/// @DnDArgument : "expr_1" "- 1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "mortar_grub_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_mortar_grub"
		mortar_grub_spawn_timer = 60;
		spawn_queue_mortar_grub += - 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74A48390
/// @DnDComment : spawn firefly
/// @DnDArgument : "var" "spawn_queue_firefly"
/// @DnDArgument : "op" "2"
if(spawn_queue_firefly > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06591E01
	/// @DnDParent : 74A48390
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "firefly_spawn_timer"
	firefly_spawn_timer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E48FF27
	/// @DnDParent : 74A48390
	/// @DnDArgument : "var" "firefly_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(firefly_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45E5A3E9
		/// @DnDInput : 2
		/// @DnDParent : 1E48FF27
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 320BEF31
		/// @DnDParent : 1E48FF27
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_firefly"
		/// @DnDSaveInfo : "objectid" "obj_firefly"
		instance_create_layer(x + 0, y + 0, "Instances", obj_firefly);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 309BE7BB
		/// @DnDInput : 2
		/// @DnDParent : 1E48FF27
		/// @DnDArgument : "expr" "60"
		/// @DnDArgument : "expr_1" "- 1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "firefly_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_firefly"
		firefly_spawn_timer = 60;
		spawn_queue_firefly += - 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4188815C
/// @DnDComment : spawn jellycube
/// @DnDArgument : "var" "spawn_queue_jellycube"
/// @DnDArgument : "op" "2"
if(spawn_queue_jellycube > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01A0D580
	/// @DnDParent : 4188815C
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "jellycube_spawn_timer"
	jellycube_spawn_timer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63158689
	/// @DnDParent : 4188815C
	/// @DnDArgument : "var" "jellycube_spawn_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(jellycube_spawn_timer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A76867B
		/// @DnDInput : 2
		/// @DnDParent : 63158689
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2A469A02
		/// @DnDParent : 63158689
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_jellycube"
		/// @DnDSaveInfo : "objectid" "obj_jellycube"
		instance_create_layer(x + 0, y + 0, "Instances", obj_jellycube);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25B2670F
		/// @DnDInput : 2
		/// @DnDParent : 63158689
		/// @DnDArgument : "expr" "60"
		/// @DnDArgument : "expr_1" "- 1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "jellycube_spawn_timer"
		/// @DnDArgument : "var_1" "spawn_queue_jellycube"
		jellycube_spawn_timer = 60;
		spawn_queue_jellycube += - 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01393600
/// @DnDComment : spawn bruiser beetle
/// @DnDArgument : "var" "spawn_queue_bruiser_beetle"
/// @DnDArgument : "op" "2"
if(spawn_queue_bruiser_beetle > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BF08BF6
	/// @DnDParent : 01393600
	/// @DnDArgument : "expr" "- 1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bruiser_beetle_spawn_tiimer"
	bruiser_beetle_spawn_tiimer += - 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 104D6C95
	/// @DnDParent : 01393600
	/// @DnDArgument : "var" "bruiser_beetle_spawn_tiimer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(bruiser_beetle_spawn_tiimer < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51050B55
		/// @DnDInput : 2
		/// @DnDParent : 104D6C95
		/// @DnDArgument : "expr" "obj_player.x + random_range(-2000, 2000)"
		/// @DnDArgument : "expr_1" "obj_player.y + random_range(-2000, 2000)"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = obj_player.x + random_range(-2000, 2000);
		y = obj_player.y + random_range(-2000, 2000);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6358AE66
		/// @DnDParent : 104D6C95
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bruiser_beetle"
		/// @DnDSaveInfo : "objectid" "obj_bruiser_beetle"
		instance_create_layer(x + 0, y + 0, "Instances", obj_bruiser_beetle);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72764236
		/// @DnDInput : 2
		/// @DnDParent : 104D6C95
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "expr_1" "- 1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "bruiser_beetle_spawn_tiimer"
		/// @DnDArgument : "var_1" "spawn_queue_bruiser_beetle"
		bruiser_beetle_spawn_tiimer = 120;
		spawn_queue_bruiser_beetle += - 1;}}
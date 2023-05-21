/// @description 

#region GLOBAL VARIABLES
	global.key_player_left = ord("A");
	global.key_player_right = ord("D");
	global.key_player_shoot = vk_space;

	global.player_lives = 3;
	global.damage = 1;
	global.camera_zoom = 2;
#endregion

#region LOAD DATA
	/// load any data that is needed
#endregion

room_goto(rm_Main);
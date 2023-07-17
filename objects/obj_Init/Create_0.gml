/// @description 

#region GLOBAL VARIABLES
	global.player_lives = 3;
	global.damage = 1;
	global.hitpoints=10;
	global.camera_zoom = 2;
	global.score=0;
	global.highscores = [];
	global.timestamps = [];
	highscores_load();

#endregion

#region
 hitpoints=20;
#endregion

room_goto(rm_main_menu);
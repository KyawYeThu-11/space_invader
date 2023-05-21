/// @description 


hitpoints = {
	_max: 25,
	_current: 25,
};

position_y = 104;
movement_state = BOSS_STATE.intro;
shooting_state = BOSS_SHOOT_STATE.wait;

timers = {
	shooting: {
		_max: game_get_speed(gamespeed_fps) * 1,
		_current: 0,
	},
};

position = {
	next: {
		_x: 0,
		_y: 0,
	},
};
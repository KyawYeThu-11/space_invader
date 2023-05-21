/// @description 

hitpoints = {
	_max: 3,
	_current: 3,
};

can_shoot = true;
timer_shot = game_get_speed(gamespeed_fps) * 0.17;

_acceleration = 3;
_deceleration = 0.2;

_max_movement_speed = 12;
_max_movement_speed_original = 12;

horizontal_speed = 0;


instance_camera = noone;
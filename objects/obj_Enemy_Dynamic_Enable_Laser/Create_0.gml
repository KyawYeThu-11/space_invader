/// @description 

// Inherit the parent event
event_inherited();
timer=0.1;
shooting={is_enabled:true,can_shoot:false,timer_max:game_get_speed(gamespeed_fps)*5,timer:irandom_range(game_get_speed(gamespeed_fps)*1,game_get_speed(gamespeed_fps)*5),};
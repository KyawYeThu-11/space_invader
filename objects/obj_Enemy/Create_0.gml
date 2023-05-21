/// @description 


hitpoints = 2;
shooting={is_enabled:true,can_shoot:false,timer_max:game_get_speed(gamespeed_fps)*5,timer:irandom_range(game_get_speed(gamespeed_fps)*1,game_get_speed(gamespeed_fps)*5),};
damage=function(_amount){
	hitpoints-=_amount;
	if(hitpoints<=0){
		instance_destroy();
	}
}
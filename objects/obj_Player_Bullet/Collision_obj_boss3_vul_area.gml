/// @description Insert description here
// You can write your code in this editor

if (obj_boss3_vul_area.fade_out){
	instance_destroy();
	global.score+=3000;
	effect_create_above(ef_firework, x, y, random_range(1, 2), c_red) ;
	audio_play_sound(boss3_got_hit, 0, false, 1, 0, random_range(0.8, 1.2));
}
// effect_create_above(ef_firework, x, y, random_range(1, 2), c_red) ;
// audio_play_sound(boss3_got_hit, 0, false, 1, 0, random_range(0.8, 1.2));

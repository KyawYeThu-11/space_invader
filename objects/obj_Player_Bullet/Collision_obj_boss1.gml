/// @description Insert description here
// You can write your code in this editor
instance_destroy();
obj_boss1.boss1_hp -= 10;
effect_create_above(ef_explosion, x, y, 1, c_white);
audio_play_sound(boss1_got_hit, 0, false, 1, 0, random_range(0.8, 1.2))
if (obj_boss1.boss1_hp <= 0){
	instance_destroy(obj_boss1_hp);
	instance_destroy(other);
	layer_set_visible("Effect_Transition_Pixelate", 1);
	global.score+=1500;
	the_ending_transition = instance_create_layer(0, 0, "Phase_transition", obj_transition_phase_ending);
}
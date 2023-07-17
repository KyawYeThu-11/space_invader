/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_boss1){
	instance_destroy(other);
	effect_create_above(ef_explosion, x, y, 1, c_gray);
	audio_play_sound(player_got_hit, 0, false, 1, 0, random_range(0.8, 1.2))
	global.hitpoints -= 1;
if (global.hitpoints <= 0) {
   layer_set_visible("Effect_Transition_Pixelate", 1);
   losing_transition= instance_create_layer(0, 0, "Phase_transition", obj_transition_game_over);
}
	
}

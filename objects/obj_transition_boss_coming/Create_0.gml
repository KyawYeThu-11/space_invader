/// @description Insert description here
// You can write your code in this editor
layer_set_visible("Effect_Transition_Screenshake", 1);
if room == rm_phase_2 {
	to_boss_transition = instance_create_layer(500, -500, "Instances", obj_boss1);
}
if room == rm_phase_3 {
	to_boss_transition = instance_create_layer(500, -500, "Instances", obj_boss2);
}
if room == rm_phase_4 {
	to_boss_transition = instance_create_layer(500, -500, "Instances", obj_boss3);
}
alarm[0] = 90;
/// @description Insert description here
// You can write your code in this editor

//instance_deactivate_layer("Enemies");
//instance_deactivate_layer("Instances");
//instance_deactivate_layer("Instances1");
//instance_deactivate_layer("Instances2");
//instance_deactivate_layer("Bullets");
instance_deactivate_layer("Player");
instance_deactivate_layer("Enemies");
instance_deactivate_layer("Weapons");
you_win_text = layer_sequence_create("Phase_transition", 0, 0, seq_transition_you_win);
//layer_set_visible("Effect_Transition_Pixelate", 1);
alarm[2] = 60;
alarm[0] = 180;
alarm[1] = 210;
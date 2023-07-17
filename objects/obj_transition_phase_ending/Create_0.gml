/// @description Insert description here
// You can write your code in this editor

instance_deactivate_layer("Enemies");
instance_deactivate_layer("Player");
player_ship_going_forward = layer_sequence_create("Phase_transition", 0, 0, seq_transition_player_ship_out);
layer_set_visible("Effect_Transition_Pixelate", 1);
alarm[0] = 120;
alarm[1] = 150;
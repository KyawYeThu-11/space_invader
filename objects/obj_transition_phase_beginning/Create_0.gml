/// @description Insert description here
// You can write your code in this editor


layer_set_visible("Effect_Transition_Pixelate", 1);

//will change what sequence to display depending on phases
if room == rm_phase_1 { 
	start_of_game = layer_sequence_create("Phase_transition", 0, 0, seq_transition_game_start);
}
else {
beginning_of_phase = layer_sequence_create("Phase_transition", 0, 0, seq_transition_phase);
}
alarm[0] = 180;
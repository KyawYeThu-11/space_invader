/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Enemy) {
	instance_deactivate_layer("Enemies");
//instance_deactivate_layer("Instances");
//instance_deactivate_layer("Instances1");
//instance_deactivate_layer("Instances2");
	instance_deactivate_layer("Bullets");
	instance_deactivate_layer("Player");
}
if instance_exists(obj_boss1) {
	instance_destroy(obj_boss1_hp);
	instance_destroy(obj_boss1);
	instance_deactivate_layer("Instances_1");
	instance_deactivate_layer("Instances_2");
	instance_deactivate_layer("Player");
}
if instance_exists(obj_boss2) {
	instance_destroy(obj_boss2);
	instance_deactivate_layer("Instances_1");
	instance_deactivate_layer("Instances_2");
	instance_deactivate_layer("Player");
}
if instance_exists(obj_boss3) {
	instance_destroy(obj_boss3_vul_area);
	//add all destoy codes
	instance_destroy(obj_boss3);
	instance_destroy(obj_boss3_hp);
	instance_destroy(obj_boss3_missile);
	instance_deactivate_layer("Instances_1");
	instance_deactivate_layer("Instances_2");
	instance_deactivate_layer("Player");
}

//else {
//	instance_deactivate_layer("Bullets");
//	instance_deactivate_layer("Instances_1");
//	instance_deactivate_layer("Instances_2");
//	instance_deactivate_layer("Player");
//}

game_over_text = layer_sequence_create("Phase_transition", 0, 0, seq_transition_game_over);
layer_set_visible("Effect_Transition_Pixelate", 1);
//alarm[2] = 120;
alarm[0] = 240;
alarm[1] = 270;
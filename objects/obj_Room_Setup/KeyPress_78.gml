/// @description Insert description here
// You can write your code in this editor
if room == rm_phase_1 {
	room_goto_next();
}
else {
	if instance_exists(obj_transition_boss_coming) {
		if room == rm_phase_4 {
			//instance_destroy(obj_boss3_vul_area);
			//add all destoy codes
			instance_destroy(obj_boss3);
			instance_destroy(obj_boss3_hp);
			instance_destroy(obj_boss3_missile);
			force_end_game = instance_create_layer(0, 0, "Phase_Transition", obj_transition_game_ending);
		}
		else {
			if instance_exists(obj_boss1) {
				instance_destroy(obj_boss1_hp);
				instance_destroy(obj_boss1);
				global.score+=1500;
			}
			if instance_exists(obj_boss2) {
				obj_boss2.boss2_can_shoot = false;
				instance_destroy(obj_boss2_hp);
				instance_destroy(obj_boss2);
			    layer_destroy_instances("Instances_2");
			    layer_destroy_instances("Bullets");
			    global.score+=2000;
			}
			//if instance_exists(obj_boss3) {	
			//	instance_destroy(obj_boss3);
			//	instance_destroy(obj_boss3_hp);
			//	instance_destroy(obj_boss3_missile);
				
			//	//layer_destroy_instances("Bullets");
			//	//layer_destroy_instances("Instances_1");
			//	//layer_destroy_instances("Instances_2");
			//}
			force_end_phase = instance_create_layer(0, 0, "Phase_Transition", obj_transition_phase_ending);
		}
	}
	else {
		if layer_exists("Enemies") {
	instance_deactivate_layer("Enemies");
	instance_deactivate_layer("Bullets");
	to_boss_transition = instance_create_layer(0, 0, "Phase_Transition", obj_transition_boss_coming);
		}
	}
}
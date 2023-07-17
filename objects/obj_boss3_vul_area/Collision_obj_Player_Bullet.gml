/// @description Insert description here
// You can write your code in this editor
if(fade_out){
	fade_out = false;
	obj_boss3.boss3_hp -= 150;
	//instance_destroy(other);
	////dd this to another side
	//effect_create_above(ef_firework, x, y, 1, c_fuchsia) 
	//if (boss3_vul_area_number < 9){
	if (obj_boss3.boss3_hp > 0){
		//boss3_vul_area_number++;
		alarm[0] = 300
		// add the pulling asteriod code here
		astroid_pull_x = obj_Player.x
		//astroid_pull_y = obj_Player.y
		if (astroid_pull_x < 960){
			instance_create_layer(0, -10, "Instances_1", obj_boss3_leg_left)
			//instance_create_layer(1920, -100, "Instances_1", obj_boss3_leg_right)
		}else{
			instance_create_layer(1920, -10, "Instances_1", obj_boss3_leg_right)
		}
		
	}
	//if (boss3_vul_area_number == 9){
	if (obj_boss3.boss3_hp <= 0 ){
		instance_destroy()
		//add all destoy codes
		instance_destroy(obj_boss3);
		instance_destroy(obj_boss3_hp);
		instance_destroy(obj_boss3_missile);
		//layer_clear_fx("Instances_2");
		layer_set_visible("Effect_Transition_Pixelate", 1);
		the_ending_transition = instance_create_layer(0, 0, "Phase_transition", obj_transition_game_ending);
	} 
}
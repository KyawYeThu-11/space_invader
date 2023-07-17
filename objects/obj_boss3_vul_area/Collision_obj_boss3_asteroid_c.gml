/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(fade_out){
	fade_out = false;
	obj_boss3.boss3_hp -= 100;
	//instance_destroy(other);
	////dd this to another side
	//effect_create_above(ef_firework, x, y, 1, c_fuchsia) 
	//if (boss3_vul_area_number < 9){
	if (obj_boss3.boss3_hp > 0){
		//boss3_vul_area_number++;
		alarm[0] = 300
		// add the pulling asteriod code here
		
	}
	//if (boss3_vul_area_number == 9){
	if (obj_boss3.boss3_hp <= 0 ){
		instance_destroy()
		//add all destoy codes
		instance_destroy(obj_boss3);
		instance_destroy(obj_boss3_hp);
		//layer_clear_fx("Instances_2");
	} 
}
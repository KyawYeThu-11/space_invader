/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_boss2)){

	if(boss2_can_shoot){
		instance_create_layer(obj_boss2.x+1088, obj_boss2.y+288, "Instances_2", obj_boss2_missile,
		{
	    image_angle : 180,
		})
		//effect_create_above(ef_flare, obj_boss2.x+733, obj_boss2.y+213, 1, c_red)
		//effect_create_above(ef_flare, obj_boss2.x+806, obj_boss2.y+226, 1, c_red)
		//effect_create_above(ef_flare, obj_boss2.x+894, obj_boss2.y+236, 1, c_red)
		//effect_create_above(ef_flare, obj_boss2.x+1148, obj_boss2.y+215, 1, c_red)
		boss2_can_shoot = false
		alarm[0] = 60
	}
}
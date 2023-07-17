/// @description Insert description here
// You can write your code in this editor
//if (fade_out){
//	effect_create_above(ef_ring, x, y, 3, c_red)
//}
//effect_create_above(ef_ring, x, y, 3, c_red)

//if instance_exists(obj_boss3)==false {
//	instance_destroy()
//}
x = obj_boss3.x + boss3_vul_area_coordinates[boss3_vul_area_number][0];  // Adjust the position based on boss's coordinates
y = obj_boss3.y + boss3_vul_area_coordinates[boss3_vul_area_number][1];                // Adjust the vertical position as needed
if(obj_boss3.boss3_hp <= 0){
	instance_destroy();
}

image_angle += 0.7

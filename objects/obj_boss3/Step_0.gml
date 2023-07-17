/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region TEMPORARY - MAKE REGENERATION
elapsed_time += delta_time;                             // Update the elapsed time
var hp_increase = hp_increase_per_second * delta_time;  // Calculate the amount of HP to increase based on the elapsed time
if (boss3_hp < boss3_hp_max) {
   boss3_hp += hp_increase;                                 // increase the HP
}

if (boss3_hp < 0) {
    boss3_hp = 0;                                        // Ensure the HP does not go below 0
}


#endregion
//////////movement - can change the playership object

//x_fixer = 640 // (width of boss1 - width of playership) / 2
//move_towards_point(Object_player.x - x_fixer, y, spd)

//obj_boss2.x = clamp(obj_boss2.x, 0, 640); // boundary 


#region MOVEMENT

///////floatin movement
// Set the boss's floating motion properties
//	TIME SAVER
boss3_y_pos_time += delta_time;

if (!boss3_y_pos_save){
	obj_boss3.y = -200 + floatHeightY * sin(floatSpeedY * boss3_y_pos_time / 1000);
}
if (!boss3_x_pos_save){
	obj_boss3.x = -90 + floatHeightX * cos(floatSpeedX * boss3_x_pos_time / 1000);
}


//START THE ROOM AND SLIDE THE BOSS
if (boss3_start&&(obj_boss3.y != -200)){
	obj_boss3.y += 5;
	if (obj_boss3.y >= -200){
		boss3_start = false;
		boss3_y_pos_time = 0
		boss3_y_pos_save = 0
		boss3_x_pos_time = 0
		boss3_x_pos_save = 0
	}
}

#endregion


#region SHOOTER CHECKER - SHOULD DELETE THIS LATER
//if keyboard_check(ord("1")){
//	canon2_1()
//}
//if keyboard_check(ord("2")){
//	canon2_2()
//}
//if keyboard_check(ord("3")){
//	canon2_3()
//}

//if keyboard_check(ord("4")){
//	laser2_1(1)
//}
//if keyboard_check(ord("5")){
//	laser2_1(3)
//}
//if keyboard_check(ord("6")){
//	laser2_1(3)
//}

//if keyboard_check(ord("7")){
//	laser2_2(3)
//}
//if keyboard_check(ord("8")){
//	laser2_3(3)
//}
//if keyboard_check(ord("9")){
//	laser2_4(3)
//}
//if keyboard_check(ord("0")){
//	laser2_5(3)
//}
#endregion


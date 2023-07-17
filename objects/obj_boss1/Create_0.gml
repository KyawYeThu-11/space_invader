/// @description Insert description here
// You can write your code in this editor
//counter = 0;
#region GLOBAL VARIABLES - MUST DELETE
	//global.key_player_left = ord("A");
	//global.key_player_right = ord("D");
	//global.key_player_shoot = vk_space;
	
	//global.player_lives = 3;
	//global.damage = 1;
	//global.camera_zoom = 2;
#endregion
//audio_play_sound(bossing_coming, 100, false, 1, 0, random_range(0.8, 1.2))
elapsed_time = 0;                // Variable to track the elapsed time
hp_increase_per_second = 0.000001;     // The amount of HP to increase per second
instance_create_layer(x, y, "Instances_1", obj_boss1_hp)
#region ROOM START VARIABLES
boss1_hp = 1000
boss1_hp_max = 1000
// to count the attack and if 0 my mod4, will do combo attack
counter = 1; 
// Its boss speeds
floatSpeed = 0.0005;  // Adjust the speed of the float
//floatHeight = 0.5; // Adjust the height of the float
floatHeight = 20;// Adjust the height of the float
bossSpeed = 1;
// Vertical speed

// if true, make combo attack
combo_number_1 = false
combo_number_2 = false
// how many attacks in one set, can be 1, 2, 3
combo_attack_1 = 0
combo_attack_2 = 0
// for combo attack we will save the code for attack type and use later
action_1_1 = 0
action_1_2 = 0
action_1_3 = 0
action_2_1 = 0
action_2_2 = 0
action_2_3 = 0
/////// time saver

boss1_y_pos_time = 0 // its gonna increase as game goes
boss1_y_pos_save = 1 // save the time when boss stops and start, boss move when 0
//////////////Initialize the boss/////////
boss1_start = true
//alarm[4] = 90
//obj_boss1.y

//function boss1_slide(){
//	//-640 to -10
	
//}
#endregion

#region RANDOM ATTACK
alarm[0] = 300

function random_attack_basic(a){
	switch(a){
	case "0":
		canon_1()
	break;
	case "1":
		canon_2()
	break;
	case "2":
		canon_3()
	break;
	case "3":
		canon_4()
	break;
	case "4":
		canon_5()
	break;
	case "5":
		canon_6()
	break;
	case "6":
		laser_1()
		
	break;
	case "7":
		laser_2()
	break;
	case "8":
		laser_3()
	break;
	case "9":
		attack_s_c1c3()
	break;
	case "10":
		attack_s_c2c5()
	break;
	case "11":
		attack_s_c4c6()
	break;
	case "12":
		attack_s_l1l3()
	break;
	case "13":
		attack_d_l2_l2()
	break;
	case "14":
		attack_d_c2_c2()
	break;
	case "15":
		attack_d_c5_c5()
	break;
	//default:
	//	attack_d_c5_c5()
	//break;
	}		
}

function random_attack_combo(a){
	switch(a){
	case "0":
		attack_s_c1c2c3()
	break;
	case "1":
		attack_s_c1c3c5()
	break;
	case "2":
		attack_s_c2c4c6()
	break;
	case "3":
		attack_s_c4c5c6()
	break;
	case "4":
		attack_s_l1l2l3()
	break;
	case "5":
		attack_d_l2_l1l3()
	break;
	case "6":
		attack_d_c2_c1c3()
	break;
	case "7":
		attack_d_c5_c4c6()
	break;
	case "8":
		attack_d_l2_c3c4()
	break;
	case "9":
		attack_d_l2_c2c5()
	break;
	case "10":
		attack_d_l2_c1c6()
	break;
	case "11":
		attack_t_c1_c2_c3()
	break;
	case "12":
		attack_t_c1_c3_c5()
	break;
	case "13":
		attack_t_c2_c2_c2()
	break;
	case "14":
		attack_t_c2_c4_c6()
	break;
	case "15":
		attack_t_c3_c2_c1()
	break;
	case "16":
		attack_t_c4_c5_c6()
	break;
	case "17":
		attack_t_c5_c3_c1()
	break;
	case "18":
		attack_t_c6_c4_c2()
	break;
	case "19":
		attack_t_c6_c5_c4()
	break;
	case "20":
		attack_t_l2_l2_l2()
	break;
	}
}
#endregion

#region COORDINATE TO CREATE THE INSTANCE BULLETS HAVE TO FIX IT 
//////////Canon part////////////////
//canon and laser shooting positions 
//function are in later 50 is half of the canon sprite size 
c1_x = 95-50
c1_y = 566-50
c2_x = 257 - 50
c2_y = 563- 50
c3_x = 408- 50
c3_y = 666- 50
c4_x = 677- 50
c4_y = 567- 50
c5_x = 827- 50
c5_y = 567- 50
c6_x = 993- 50
c6_y = 566- 50
l1_x = 563+ 7
l1_y = 284+ 13
l2_x = 549+ 7
l2_y = 228+ 13
l3_x = 579+ 7
l3_y = 284+ 13
#endregion
 
///////////////////////attack combinations
#region ATTACK COMBINATIONS
///////will have basic and combo types
// s - attack at the same time 
// d - combo that using alarm and changing var combo_number
// t - triple

#region SINGLE ATTACK -  BASIC (1 OR 2) - 4 

function attack_s_c1c3(){
	canon_1()
	canon_3()
}
function attack_s_c2c5(){
	canon_2()
	canon_5()
}
function attack_s_c4c6(){
	canon_4()
	canon_6()
}
function attack_s_l1l3(){
	laser_1()
	laser_3()
}
#endregion

#region SINGLE ATTACK - COMBO (3 OR MORE) - 5
function attack_s_c1c2c3(){
	canon_1()
	canon_2()
	canon_3()
	alarm[2] = 60
}
function attack_s_c4c5c6(){
	canon_4()
	canon_5()
	canon_6()
	alarm[2] = 60
}
function attack_s_c1c3c5(){
	canon_1()
	canon_3()
	canon_5()
	alarm[2] = 60
}
function attack_s_c2c4c6(){
	canon_2()
	canon_4()
	canon_6()
}
function attack_s_l1l2l3(){
	laser_1()
	laser_2()
	laser_3()
}
#endregion

#region DOUBLE ATTACK -  BASIC (1 OR 2) - 3
function attack_d_l2_l2(){
	combo_number_1 = true
	laser_2()
	action_1_1 = laser_2
	alarm[3] = 60
}
function attack_d_c2_c2(){
	combo_number_1_1 = true
	canon_2()
	action_1_1 = canon_2
	alarm[3] = 60
}
function attack_d_c5_c5(){
	combo_number_1_1 = true
	canon_5()
	action_1_1 = canon_5
	alarm[3] = 30
}
#endregion

#region DOUBLE ATTACK -  COMBO (3 OR MORE) - 6
function attack_d_l2_l1l3(){
	combo_number_1 = true
	laser_2()
	action_1_1 = laser_1
	action_1_2 = laser_3
	combo_attack_1 = 2
	alarm[1] = 60
}
function attack_d_c2_c1c3(){
	combo_number_1 = true
	canon_2()
	action_1_1 = canon_1
	action_1_2 = canon_3
	combo_attack_1 = 2
	alarm[1] = 60
}
function attack_d_c5_c4c6(){
	combo_number_1 = true
	canon_5()
	action_1_1 = canon_4
	action_1_2 = canon_6
	combo_attack_1 = 2
	alarm[1] = 60
}
function attack_d_l2_c3c4(){
	combo_number_1 = true
	laser_2()
	action_1_1 = canon_3
	action_1_2 = canon_4
	combo_attack_1 = 2
	alarm[1] = 60
}
function attack_d_l2_c2c5(){
	combo_number_1 = true
	laser_2()
	action_1_1 = canon_2
	action_1_2 = canon_5
	combo_attack_1 = 2
	alarm[1] = 60
}
function attack_d_l2_c1c6(){
	combo_number_1 = true
	laser_2()
	action_1_1 = canon_1
	action_1_2 = canon_6
	combo_attack_1 = 2
	alarm[1] = 60
}
#endregion

#region TRIPLE ATTACK - COMBO (3 OR MORE) - 10
function attack_t_l2_l2_l2(){
	combo_number_1 = true
	combo_number_2 = true
	laser_2()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = laser_2
	action_2_1 = laser_2
	alarm[1] = 60
}
function attack_t_c2_c2_c2(){
	combo_number_1 = true
	combo_number_2 = true
	canon_2()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_2
	action_2_1 = canon_2
	alarm[1] = 60
}
function attack_t_c1_c2_c3(){
	combo_number_1 = true
	combo_number_2 = true
	canon_1()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_3
	action_2_1 = canon_2
	alarm[1] = 60
}
function attack_t_c3_c2_c1(){
	combo_number_1 = true
	combo_number_2 = true
	canon_3()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_1
	action_2_1 = canon_2
	alarm[1] = 60
}
function attack_t_c1_c3_c5(){
	combo_number_1 = true
	combo_number_2 = true
	canon_1()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_5
	action_2_1 = canon_3
	alarm[1] = 60
}
function attack_t_c5_c3_c1(){
	combo_number_1 = true
	combo_number_2 = true
	canon_5()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_1
	action_2_1 = canon_3
	alarm[1] = 60
}
function attack_t_c2_c4_c6(){
	combo_number_1 = true
	combo_number_2 = true
	canon_2()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_6
	action_2_1 = canon_4
	alarm[1] = 60
}
function attack_t_c6_c4_c2(){
	combo_number_1 = true
	combo_number_2 = true
	canon_6()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_2
	action_2_1 = canon_4
	alarm[1] = 60
}
function attack_t_c4_c5_c6(){
	combo_number_1 = true
	combo_number_2 = true
	canon_4()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_6
	action_2_1 = canon_5
	alarm[1] = 60
}
function attack_t_c6_c5_c4(){
	combo_number_1 = true
	combo_number_2 = true
	canon_6()
	//combo_attack_1 = 1 // doesnt matter for one attack
	action_1_1 = canon_4
	action_2_1 = canon_5
	alarm[1] = 60
}
#endregion

#region WILL DELETE LATER

//////////// d type of attack combos (uses the alarm )
//function laser_2_d(){
//	combo_number_1 = true
//	laser_2()
//	action_1 = laser_2
//	alarm[1] = 60
//}
//function laser_2_13_d(){
//	combo_number_1 = true
//	laser_2()
//	action_1_1 = laser_1
//	action_1_2 = laser_3
//	combo_attack_1 = 2
//	alarm[1] = 60
//}
////////////// t type of attack combos (uses the alarm twice)
//function laser_2_t(){
//	combo_number_1 = true
//	combo_number_2 = true
//	laser_2()
//	action_1 = laser_2
//	action_2 = laser_2
//	alarm[1] = 60
//}
#endregion

#endregion

#region SINGLE ATTACK (BASIC) - 9 MOST BASIC ATTACK 
/////////////////////// left to right total 6 canons and 3 lasers
function canon_1() {
	a_1 = irandom(44)
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1+45
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1+90
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1+135
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1+180
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1+225
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1+270
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", obj_boss1_canon,
	{
    direction : a_1+315
	})
}

function canon_2() {
	a_2 = irandom(44)
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : a_2
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : 45 + a_2
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : 90 + a_2
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : 135 + a_2
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : 180 + a_2
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : 225 + a_2
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : 270 + a_2
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", obj_boss1_canon,
	{
    direction : 315 + a_2
	})
}

function canon_3() {
	a_3 = irandom(44)
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : a_3
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : 45 + a_3
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : 90 + a_3
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : 135 + a_3
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : 180 + a_3
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : 225 + a_3
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : 270 + a_3
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", obj_boss1_canon,
	{
    direction : 315 + a_3
	})
}

function canon_4() {
	a_4 = irandom(44)
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : a_4
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : 45 + a_4
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : 90 + a_4
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : 135 + a_4
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : 180 + a_4
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : 225 + a_4
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : 270 + a_4
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", obj_boss1_canon,
	{
    direction : 315 + a_4
	})
}

function canon_5() {
	a_5 = irandom(44)
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 0 + a_5
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 45 + a_5
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 90 + a_5
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 135 + a_5
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 180 + a_5
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 225 + a_5
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 270 + a_5
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", obj_boss1_canon,
	{
    direction : 315 + a_5
	})
}

function canon_6() {
	a_6 = irandom(44)
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : a_6
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : 45 + a_6
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : 90 + a_6
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : 135 + a_6
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : 180 + a_6
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : 225 + a_6
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : 270 + a_6
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", obj_boss1_canon,
	{
    direction : 315 + a_6
	})
}

function laser_1() {
	//audio_play_sound(boss_lasers, 0, false, 1, 0, random_range(0.8, 1.2))
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss1_laser,
	{
    direction : 210,
	image_angle : 120,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss1_laser,
	{
    direction : 240,
	image_angle : 150,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss1_laser,
	{
    direction : 270,
	image_angle : 180,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss1_laser,
	{
    direction : 300,
	image_angle : 210,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss1_laser,
	{
    direction : 330,
	image_angle : 240,
	})
}

function laser_2() {
	//audio_play_sound(boss_lasers, 0, false, 1, 0, random_range(0.8, 1.2))
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss1_laser,
	{
    direction : 210,
	image_angle : 120,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss1_laser,
	{
    direction : 240,
	image_angle : 150,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss1_laser,
	{
    direction : 270,
	image_angle : 180,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss1_laser,
	{
    direction : 300,
	image_angle : 210,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss1_laser,
	{
    direction : 330,
	image_angle : 240,
	})
}

function laser_3() {
	//audio_play_sound(boss_lasers, 0, false, 1, 0, random_range(0.8, 1.2))
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss1_laser,
	{
    direction : 210,
	image_angle : 120,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss1_laser,
	{
    direction : 240,
	image_angle : 150,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss1_laser,
	{
    direction : 270,
	image_angle : 180,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss1_laser,
	{
    direction : 300,
	image_angle : 210,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss1_laser,
	{
    direction : 330,
	image_angle : 240,
	})
}

#endregion
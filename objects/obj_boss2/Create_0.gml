/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
// ALARM[0] - MAIN ALARM FOR CHOOSING AND STARTING ATTACK
// ALARM[1, 2, 3, 4, 5] FOR BASIC ATTACK 
// ALARM[6, 7, 8, 9] TRAP ATTACK 
#region GLOBAL VARIABLES - MUST DELETE
	//global.key_player_left = ord("A");
	//global.key_player_right = ord("D");
	//global.key_player_shoot = vk_space;

	//global.player_lives = 3;
	//global.damage = 1;
	//global.camera_zoom = 2;
#endregion
boss2_counter = 1;
alarm[0] = 300

//////
trapping = false
elapsed_time = 0;                // Variable to track the elapsed time
hp_increase_per_second = 0.00001;     // The amount of HP to increase per second
instance_create_layer(x, y, "Instances_2", obj_boss2_hp)
instance_create_layer(x, y, "Instances_2", obj_boss2_vul_area)

#region ROOM START VARIABLES
boss2_hp = 10000
boss2_hp_max = 10000
boss2_attack_trap = false // triggers the trap attack constant
// to count the attack and if 0 my mod4, will do combo attack
counter = 1; 
// Its boss speeds
floatSpeed = 0.0005;  // Adjust the speed of the float
//floatHeight = 0.5; // Adjust the height of the float
floatHeight = 20;// Adjust the height of the float
bossSpeed = 1;
// Vertical speed

// WILL MAKE CHANGE IN HERE 

//// how many attacks in one set, can be 1, 2, 3
//combo_attack_1 = 0
//combo_attack_2 = 0
//// for combo attack we will save the code for attack type and use later
action2_1_1 = 0
action2_1_2 = 0
action2_1_3 = 0
action2_2_1 = 0
action2_2_2 = 0
action2_2_3 = 0
action2_3_1 = 0
action2_3_2 = 0
action2_3_3 = 0
action2_4_1 = 0
action2_4_2 = 0
action2_4_3 = 0
action2_5_1 = 0
action2_5_2 = 0
action2_5_3 = 0
/////// time saver

boss2_y_pos_time = 0 // its gonna increase as game goes
boss2_y_pos_save = 1 // save the time when boss stops and start, boss move when 0
//////////////Initialize the boss/////////
boss2_start = true
//alarm[4] = 90
//obj_boss1.y

//function boss1_slide(){
//	//-640 to -10
	
//}
#endregion

#region RANDOM ATTACK
//alarm[0] = 300
// THE FUNCTIONS WILL BE CHANGED!!!!!!!!!!!!!!!!!!
function random_attack_normal(a){
	switch(a){
	case "0":
		attack2_c1c3_c2_c1c3c_c2()
	break;
	case "1":
		attack2_c1_c2_c3()
	break;
	case "2":
		attack2_c3_c2_c1()
	break;
	case "3":
		attack2_5l1_3l1_1l1()
	break;
	case "4":
		attack2_5l2_3l2_1l2()
	break;
	case "5":
		attack2_5l3_3l3_1l3()
	break;
	case "6":
		attack2_5l4_3l4_1l4()
	break;
	case "7":
		attack2_5l5_3l5_1l5()
	break;
	case "8":
		attack2_5l1_3l1_1l1()
	break;
	case "9":
		attack2_1l2_3l2_5l2()
	break;
	case "10":
		attack2_1l3_3l3_5l3()
	break;
	case "11":
		attack2_1l4_3l4_5l4()
	break;
	case "12":
		attack2_1l5_3l5_5l5()
	break;
	case "13":
		attack2_3l13l23l3()
	break;
	case "14":
		attack2_3l43l5()
	break;
	case "15":
		attack2_5l15l3()
	break;
	case "16":
		attack2_5l45l5()
	break;
	case "17":
		attack2_5l15l5()
	break;
	case "18":
		attack2_5l1()
	break;
	case "19":
		attack2_5l2()
	break;
	case "20":
		attack2_5l3()
	break;
	case "21":
		attack2_5l4()
	break;
	case "22":
		attack2_5l5()
	break;
	case "23":
		attack2_3l1_3l2_3l3_3l4_3l5()
	break;
	case "24":
		attack2_3l5_3l4_3l3_3l2_3l1()
	break;
	case "25":
		attack2_c1c2c3_c1c2c3_c1c2c3c()
	break;
	}		
}

function random_attack_trap(a){
	switch(a){
	case "0":
		attack2_t_3l23l3_3l23l3()
	break;
	case "1":
		attack2_t_3l23l4_3l23l4()
	break;
	case "2":
		attack2_t_3l33l4_3l33l4()
	break;
	case "3":
		attack2_t_c1_c1c2_c2c3_c3()
	break;
	case "4":
		attack2_t_c2_c1c3_c2()
	break;
	case "5":
		attack2_t_c1c3_c2_c1c3c_c2()
	break;
	}
}
#endregion

#region COORDINATE TO CREATE THE INSTANCE BULLETS HAVE TO FIX IT 
//////////Canon part////////////////
//canon and laser shooting positions 
//function are in later 50 is half of the canon sprite size 
l1_x = 74
l1_y = 489
l2_x = 308
l2_y = 522
l3_x = 707
l3_y = 523
l4_x = 1070
l4_y = 501
l5_x = 1265
l5_y = 467

c1_x = 313 -50
c1_y = 131
c2_x = 525-50
c2_y = 154
c3_x = 752-50
c3_y = 99
#endregion
 
///////////////////////attack combinations
#region ATTACK COMBINATIONS - HAVE TO CHANGE
boss2_combo_counter = 0

#region	SIMPLE ATTACKS WHILE MOVING 
#region CANON - 4 ATTACK
function attack2_c1c2c3_c1c2c3_c1c2c3c(){
	boss2_combo_counter = 3
	action2_1_1 = canon2_1
	action2_1_2 = canon2_2
	action2_1_3 = canon2_3
	action2_2_1 = canon2_1
	action2_2_2 = canon2_2
	action2_2_3 = canon2_3
	action2_3_1 = canon2_1
	action2_3_2 = canon2_2
	action2_3_3 = canon2_3
	alarm[1] = 40
}
function attack2_c1c3_c2_c1c3c_c2(){
	boss2_combo_counter = 4
	action2_1_1 = canon2_1
	action2_1_2 = canon2_3
	action2_2_1 = canon2_2
	action2_3_1 = canon2_1
	action2_3_2 = canon2_3
	action2_4_1 = canon2_2
	alarm[1] = 40
}
function attack2_c1_c2_c3(){
	boss2_combo_counter = 3
	action2_1_1 = canon2_1
	action2_2_1 = canon2_2
	action2_3_1 = canon2_3
	alarm[1] = 40
}
function attack2_c3_c2_c1(){
	boss2_combo_counter = 3
	action2_1_1 = canon2_3
	action2_2_1 = canon2_2
	action2_3_1 = canon2_1
	alarm[1] = 40
}

#endregion

#region LASER - 22 ATTACK
function attack2_5l1_3l1_1l1(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_1_5
	action2_2_1 = laser2_1_3
	action2_3_1 = laser2_1_1
	alarm[1] = 40
}
function attack2_5l2_3l2_1l2(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_3_5
	action2_2_1 = laser2_3_3
	action2_3_1 = laser2_3_1
	alarm[1] = 40
}
function attack2_5l3_3l3_1l3(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_3_5
	action2_2_1 = laser2_3_3
	action2_3_1 = laser2_3_1
	alarm[1] = 40
}
function attack2_5l4_3l4_1l4(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_4_5
	action2_2_1 = laser2_4_3
	action2_3_1 = laser2_4_1
	alarm[1] = 40
}
function attack2_5l5_3l5_1l5(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_5_5
	action2_2_1 = laser2_5_3
	action2_3_1 = laser2_5_1
	alarm[1] = 40
}
function attack2_5l1_3l1_1l1(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_1_5
	action2_2_1 = laser2_1_3
	action2_3_1 = laser2_1_1
	alarm[1] = 40
}
function attack2_1l2_3l2_5l2(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_2_1
	action2_2_1 = laser2_2_3
	action2_3_1 = laser2_2_5
	alarm[1] = 40
}
function attack2_1l3_3l3_5l3(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_3_1
	action2_2_1 = laser2_3_3
	action2_3_1 = laser2_3_5
	alarm[1] = 40
}
function attack2_1l4_3l4_5l4(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_4_1
	action2_2_1 = laser2_4_3
	action2_3_1 = laser2_4_5
	alarm[1] = 40
}
function attack2_1l5_3l5_5l5(){
	boss2_combo_counter = 3
	action2_1_1 = laser2_5_1
	action2_2_1 = laser2_5_3
	action2_3_1 = laser2_5_5
	alarm[1] = 40
}
function attack2_3l13l23l3(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_1_3
	action2_1_2 = laser2_2_3
	action2_1_3 = laser2_3_3
	alarm[1] = 40
}
function attack2_3l43l5(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_4_3
	action2_1_2 = laser2_5_3
	alarm[1] = 40
}
function attack2_5l15l3(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_1_5
	action2_1_2 = laser2_3_5
	alarm[1] = 40
}
function attack2_5l45l5(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_4_5
	action2_1_2 = laser2_5_5
	alarm[1] = 40
}
function attack2_5l15l5(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_1_5
	action2_1_2 = laser2_5_5
	alarm[1] = 40
}
function attack2_5l1(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_1_5
	alarm[1] = 40
}
function attack2_5l2(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_2_5
	alarm[1] = 40
}
function attack2_5l3(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_3_5
	alarm[1] = 40
}
function attack2_5l4(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_4_5
	alarm[1] = 40
}
function attack2_5l5(){
	boss2_combo_counter = 1
	action2_1_1 = laser2_5_5
	alarm[1] = 40
}
function attack2_3l1_3l2_3l3_3l4_3l5(){
	boss2_combo_counter = 5
	action2_1_1 = laser2_1_3
	action2_2_1 = laser2_2_3
	action2_3_1 = laser2_3_3
	action2_4_1 = laser2_4_3
	action2_5_1 = laser2_5_3
	alarm[1] = 40
}
function attack2_3l5_3l4_3l3_3l2_3l1(){
	boss2_combo_counter = 5
	action2_1_1 = laser2_5_3
	action2_2_1 = laser2_4_3
	action2_3_1 = laser2_3_3
	action2_4_1 = laser2_2_3
	action2_5_1 = laser2_1_3
	alarm[1] = 40
}
#endregion

#endregion

#region TRAP - 6 ATTACKS
function attack2_t_3l23l3_3l23l3(){
	boss2_attack_trap = true
	obj_boss2.bossSpeed = 0
	boss2_combo_counter = 2
	action2_1_1 = laser2_2_3
	action2_1_2 = laser2_3_3
	action2_2_1 = laser2_2_3
	action2_2_2 = laser2_3_3
	alarm[6] = 120
}
function attack2_t_3l23l4_3l23l4(){
	boss2_attack_trap = true
	obj_boss2.bossSpeed = 0
	boss2_combo_counter = 2
	action2_1_1 = laser2_2_3
	action2_1_2 = laser2_4_3
	action2_2_1 = laser2_2_3
	action2_2_2 = laser2_4_3
	alarm[6] = 120
}
function attack2_t_3l33l4_3l33l4(){
	boss2_attack_trap = true
	obj_boss2.bossSpeed = 0
	boss2_combo_counter = 2
	action2_1_1 = laser2_3_3
	action2_1_2 = laser2_4_3
	action2_2_1 = laser2_3_3
	action2_2_2 = laser2_4_3
	alarm[6] = 120
}
function attack2_t_c1_c1c2_c2c3_c3(){
	boss2_attack_trap = true
	obj_boss2.bossSpeed = 0
	boss2_combo_counter = 4
	action2_1_1 = canon2_1
	action2_2_1 = canon2_1
	action2_2_2 = canon2_2
	action2_3_1 = canon2_2
	action2_3_2 = canon2_3
	action2_4_1 = canon2_3
	alarm[6] = 120
}
function attack2_t_c2_c1c3_c2(){
	boss2_attack_trap = true
	obj_boss2.bossSpeed = 0
	boss2_combo_counter = 3
	action2_1_1 = canon2_2
	action2_2_1 = canon2_1
	action2_2_2 = canon2_3
	//action2_3_1 = canon2_1
	action2_3_1 = canon2_2
	//action2_3_3 = canon2_3
	alarm[6] = 120
}
function attack2_t_c1c3_c2_c1c3c_c2(){
	boss2_attack_trap = true
	obj_boss2.bossSpeed = 0
	boss2_combo_counter = 4
	action2_1_1 = canon2_1
	action2_1_2 = canon2_3
	action2_2_1 = canon2_2
	action2_3_1 = canon2_1
	action2_3_2 = canon2_3
	action2_4_1 = canon2_2
	alarm[6] = 120
}
#endregion

#endregion


#region SINGLE ATTACK (BASIC) - 3 CANON ATTACKS + 5 LASER * 3 TYPES (SHOOT, 1, 3, 5)
/////////////////////// left to right total 6 canons and 3 lasers
#region CANON
function canon2_1() {
	instance_create_layer(x+c1_x, y+c1_y, "Instances_2", obj_boss2_canon,
	{
    direction : 270,
	speed: 6,
	})
}

function canon2_2() {
	instance_create_layer(x+c2_x, y+c2_y, "Instances_2", obj_boss2_canon,
	{
    direction : 270,
	speed: 6,
	})
}

function canon2_3() {
	instance_create_layer(x+c3_x, y+c3_y, "Instances_2", obj_boss2_canon,
	{
    direction : 270,
	speed: 6,
	})
}
#endregion
#region LASER1

function laser2_1_5() {
	//effect_create_above(ef_flare, x+l1_x, y+l1_y, 1, c_purple)
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 210,
	image_angle : 120,
	speed: 8,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 330,
	image_angle : 240,
	speed: 8,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_1_3() {
	////effect_create_above(ef_flare, x+l1_x, y+l1_y, 1, c_purple)
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_1_1() {
	//effect_create_above(ef_flare, x+l1_x, y+l1_y, 1, c_purple)
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
#endregion
#region LASER2
function laser2_2_5() {
	//effect_create_above(ef_flare, x+l2_x, y+l2_y, 1, c_purple)
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 210,
	image_angle : 120,
	speed: 8,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 330,
	image_angle : 240,
	speed: 8,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_2_3() {
	//effect_create_above(ef_flare,x+l2_x, y+l2_y, 1, c_purple)
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_2_1() {
	//effect_create_above(ef_flare, x+l2_x, y+l2_y, 1, c_purple)
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
#endregion
#region LASER3
function laser2_3_5() {
	//effect_create_above(ef_spark, x+l3_x, y+l3_y, 1, c_purple)
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 210,
	image_angle : 120,
	speed: 8,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 330,
	image_angle : 240,
	speed: 8,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}

function laser2_3_3() {
	//effect_create_above(ef_spark, x+l3_x, y+l3_y, 1, c_purple)
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_3_1() {
	//effect_create_above(ef_spark, x+l3_x, y+l3_y, 1, c_purple)
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}

#endregion
#region LASER4
function laser2_4_5() {
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 210,
	image_angle : 120,
	speed: 8,
	})
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 330,
	image_angle : 240,
	speed: 8,
	})
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_4_3() {
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_4_1() {
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
#endregion
#region LASER5 
function laser2_5_5() {
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 210,
	image_angle : 120,
	speed: 8,
	})
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 330,
	image_angle : 240,
	speed: 8,
	})
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_5_3() {
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 240,
	image_angle : 150,
	speed: 8,
	})
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 300,
	image_angle : 210,
	speed: 8,
	})
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
function laser2_5_1() {
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss2_laser,
	{
	direction : 270,
	image_angle : 180,
	speed: 8,
	})
}
#endregion

#endregion
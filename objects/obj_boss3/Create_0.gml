/// @description Insert description here
// You can write your code in this editor
// ALARM[0] - HOMING MISSILE
// ALARM[1] - NORMAL ATTACK
// ALARM[2] - SIDE ATTACKS
#region GLOBAL VARIABLES - MUST DELETE
	//global.key_player_left = ord("A");
	//global.key_player_right = ord("D");
	//global.key_player_shoot = vk_space;

	//global.player_lives = 3;
	//global.damage = 1;
	//global.camera_zoom = 2;
#endregion
obj_boss3.x = -90
obj_boss3.y = -800
boss3_counter = 0;
//alarm[10] = 300
//alarm[11] = 120
//////
elapsed_time = 0;                // Variable to track the elapsed time
hp_increase_per_second = 0.000002;     // The amount of HP to increase per second
//instance_create_layer(x, y, "Instances_1", obj_boss3_hp)
//instance_create_layer(0, -500, "Instances_1", obj_boss3_vul_area)
alarm[3] = 150
//instance_create_layer(0, -100, "Instances_1", obj_boss3_leg_left)
//instance_create_layer(1920, -100, "Instances_1", obj_boss3_leg_right)
#region ROOM START VARIABLES
boss3_hp = 1000
boss3_hp_max = 1000
// to count the attack and if 0 my mod4, will do combo attack
counter = 1; 
// Its boss speeds
floatSpeedY = 0.0005;  // Adjust the speed of the float
floatHeightY = 20;// Adjust the height of the float

floatSpeedX = 0.0005;  // Adjust the speed of the float
floatHeightX = 20;// Adjust the height of the float

// Vertical speed but no horizontal speed



/////// time saver

boss3_y_pos_time = 0 // its gonna increase as game goes
boss3_y_pos_save = 1 // save the time when boss stops and start, boss move when 0
boss3_x_pos_time = 0 // its gonna increase as game goes
boss3_x_pos_save = 1 // save the time when boss stops and start, boss move when 0
//////////////Initialize the boss/////////
boss3_start = true

#endregion

#region RANDOM ATTACK
alarm[0] = 300 // MISSILES
alarm[1] = 120 // SINGLE ATTACK
alarm[2] = 360

// THE FUNCTIONS WILL BE CHANGED!!!!!!!!!!!!!!!!!!
function attack3_normal(b){
	switch(b){
	case "0":
		canon3_1()
	break;
	case "1":
		canon3_2()
	break;
	case "2":
		canon3_3()
	break;
	case "3":
		canon3_4()
	break;
	case "4":
		canon3_5()
	break;
	case "5":
		laser3_1(10)
	break;
	case "6":
		laser3_2(10)
	break;
	case "7":
		laser3_3(10)
	break;
	case "8":
		laser3_4(10)
	break;
	case "9":
		laser3_5(10)
	break;
	case "10":
		laser3_6(10)
	break;
	case "11":
		laser3_7(10)
	break;
	case "12":
		laser3_8(10)
	break;
	}		
}

function attack3_missile(a){
	switch(a){
	case "0":
		missile1()
	break;
	case "1":
		missile2()
	break;
	}
}
function attack3_side(c){
	switch(c){
	case "0":
		laser3_1(0)
		laser3_2(0)
		laser3_3(0)
		laser3_4(0)
		audio_play_sound(laser_side_boss3, 0, false, 1, 0, random_range(0.8, 1.2))
	break;
	case "1":
		laser3_5(0)
		laser3_6(0)
		laser3_7(0)
		laser3_8(0)
		audio_play_sound(laser_side_boss3, 0, false, 1, 0, random_range(0.8, 1.2))
	break;
	case "2":
		canon3_1()
		canon3_2()
		canon3_3()
		canon3_4()
		canon3_5()
	break;
	}
}
#endregion

#region COORDINATE TO CREATE THE INSTANCE BULLETS HAVE TO FIX IT 
//////////Canon part////////////////
//canon and laser shooting positions 
//function are in later 50 is half of the canon sprite size 
l1_x = 287
l1_y = 454
l2_x = 423
l2_y = 299
l3_x = 508
l3_y = 263
l4_x = 688
l4_y = 255
l5_x = 1385
l5_y = 246
l6_x = 1541
l6_y = 273
l7_x = 1623
l7_y = 311
l8_x = 1775
l8_y = 469

c1_x = 678 -50
c1_y = 712
c2_x = 847-50
c2_y = 636
c3_x = 1019-50
c3_y = 594
c4_x = 1212-50
c4_y = 640
c5_x = 1396-50
c5_y = 711

h1_x = 774
h1_y = 338
h2_x = 1248
h2_y = 357
#endregion
 

#region SINGLE ATTACK (BASIC) - 3 CANON ATTACKS + 5 LASER * 3 TYPES (SHOOT, 1, 3, 5)
/////////////////////// left to right total 6 canons and 3 lasers
#region HOMING MISSILE - 2
function missile1() {
	//effect_create_above(ef_flare, x+l1_x, y+l1_y, 1, c_purple)
	instance_create_layer(x+h1_x, y+h1_y, "Instances_2", obj_boss3_missile)
}
function missile2() {
	//effect_create_above(ef_flare, x+l1_x, y+l1_y, 1, c_purple)
	instance_create_layer(x+h2_x, y+h2_y, "Instances_2", obj_boss3_missile)
}
#endregion

#region CANON - 6
function canon3_1() {
	instance_create_layer(x+c1_x, y+c1_y, "Instances_2", obj_boss3_canon,
	{
    direction :230,
	speed: 6,
	})
}

function canon3_2() {
	instance_create_layer(x+c2_x, y+c2_y, "Instances_2", obj_boss3_canon,
	{
    direction : 250,
	speed: 6,
	})
}

function canon3_3() {
	instance_create_layer(x+c3_x, y+c3_y, "Instances_2", obj_boss3_canon,
	{
    direction : 270,
	speed: 6,
	})
}
function canon3_4() {
	instance_create_layer(x+c4_x, y+c4_y, "Instances_2", obj_boss3_canon,
	{
    direction : 290,
	speed: 6,
	})
}
function canon3_5() {
	instance_create_layer(x+c5_x, y+c5_y, "Instances_2", obj_boss3_canon,
	{
    direction : 310,
	speed: 6,
	})
}
#endregion
#region LASER - 8

function laser3_1(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l1_x, y+l1_y, "Instances_2", obj_boss3_laser,
	{
	direction : 315 + a ,
	image_angle : 225 + a,
	speed: 8,
	})
}
function laser3_2(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l2_x, y+l2_y, "Instances_2", obj_boss3_laser,
	{
	direction : 315 + a ,
	image_angle : 225 + a,
	speed: 8,
	})
}
function laser3_3(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l3_x, y+l3_y, "Instances_2", obj_boss3_laser,
	{
	direction : 315 + a ,
	image_angle : 225 + a,
	speed: 8,
	})
}
function laser3_4(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l4_x, y+l4_y, "Instances_2", obj_boss3_laser,
	{
	direction : 315 + a ,
	image_angle : 225 + a,
	speed: 8,
	})
}
function laser3_5(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l5_x, y+l5_y, "Instances_2", obj_boss3_laser,
	{
	direction : 225 + a ,
	image_angle : 135 + a,
	speed: 8,
	})
}
function laser3_6(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l6_x, y+l6_y, "Instances_2", obj_boss3_laser,
	{
	direction : 225 + a ,
	image_angle : 135 + a,
	speed: 8,
	})
}
function laser3_7(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l7_x, y+l7_y, "Instances_2", obj_boss3_laser,
	{
	direction : 225 + a ,
	image_angle : 135 + a,
	speed: 8,
	})
}
function laser3_8(p) {
	a = random_range(-p, p)
	instance_create_layer(x+l8_x, y+l8_y, "Instances_2", obj_boss3_laser,
	{
	direction : 225 + a ,
	image_angle : 135 + a,
	speed: 8,
	})
}
#endregion

#endregion
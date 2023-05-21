/// @description Insert description here
// You can write your code in this editor
/////////////////////attack randomly
alarm[0] = 300

function random_attack(a){
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
		canon_left()
	break;
	case "10":
		canon_right()
	break;
	case "11":
		canon_1_3_5()
	break;
	case "12":
		canon_2_4_6()
	break;
	case "13":
		canon_2_5()
	break;
	case "14":
		laser_1_3()
	break;
	}
}


//////////Canon part////////////////
//canon and laser shooting positions 
//function are in later
c1_x = 220
c1_y = 570
c2_x = 420
c2_y = 570
c3_x = 620
c3_y = 570
c4_x = 820
c4_y = 570
c5_x = 1020
c5_y = 570
c6_x = 1220
c6_y = 570
l1_x = 693
l1_y = 548
l2_x = 766
l2_y = 602
l3_x = 841
l3_y = 550
///////////////////////attack combinations
function canon_left(){
	canon_1()
	canon_2()
	canon_3()
}
function canon_right(){
	canon_4()
	canon_5()
	canon_6()
}
function canon_1_3_5(){
	canon_1()
	canon_3()
	canon_5()
}
function canon_2_4_6(){
	canon_2()
	canon_4()
	canon_6()
}
function canon_2_5(){
	canon_2()
	canon_5()
}

function laser_1_3(){
	laser_1()
	laser_3()
}


/////////////////////// left to right total 6 canons and 3 lasers
function canon_1() {
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 0
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 45
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 90
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 135
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 180
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 225
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 270
	})
	instance_create_layer(x+c1_x, y+c1_y, "Instances", Obj_boss1_canon,
	{
    direction : 315
	})
}

function canon_2() {
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 0
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 45
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 90
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 135
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 180
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 225
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 270
	})
	instance_create_layer(x+c2_x, y+c2_y, "Instances", Obj_boss1_canon,
	{
    direction : 315
	})
}

function canon_3() {
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 0
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 45
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 90
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 135
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 180
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 225
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 270
	})
	instance_create_layer(x+c3_x, y+c3_y, "Instances", Obj_boss1_canon,
	{
    direction : 315
	})
}

function canon_4() {
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 0
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 45
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 90
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 135
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 180
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 225
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 270
	})
	instance_create_layer(x+c4_x, y+c4_y, "Instances", Obj_boss1_canon,
	{
    direction : 315
	})
}

function canon_5() {
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 0
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 45
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 90
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 135
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 180
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 225
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 270
	})
	instance_create_layer(x+c5_x, y+c5_y, "Instances", Obj_boss1_canon,
	{
    direction : 315
	})
}

function canon_6() {
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 0
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 45
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 90
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 135
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 180
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 225
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 270
	})
	instance_create_layer(x+c6_x, y+c6_y, "Instances", Obj_boss1_canon,
	{
    direction : 315
	})
}

function laser_1() {
	instance_create_layer(x+l1_x, y+l1_y, "Instances", Obj_boss1_laser,
	{
    direction : 210,
	image_angle : 120,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances", Obj_boss1_laser,
	{
    direction : 240,
	image_angle : 150,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances", Obj_boss1_laser,
	{
    direction : 270,
	image_angle : 180,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances", Obj_boss1_laser,
	{
    direction : 300,
	image_angle : 210,
	})
	instance_create_layer(x+l1_x, y+l1_y, "Instances", Obj_boss1_laser,
	{
    direction : 330,
	image_angle : 240,
	})
}

function laser_2() {
	instance_create_layer(x+l2_x, y+l2_y, "Instances", Obj_boss1_laser,
	{
    direction : 210,
	image_angle : 120,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances", Obj_boss1_laser,
	{
    direction : 240,
	image_angle : 150,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances", Obj_boss1_laser,
	{
    direction : 270,
	image_angle : 180,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances", Obj_boss1_laser,
	{
    direction : 300,
	image_angle : 210,
	})
	instance_create_layer(x+l2_x, y+l2_y, "Instances", Obj_boss1_laser,
	{
    direction : 330,
	image_angle : 240,
	})
}

function laser_3() {
	instance_create_layer(x+l3_x, y+l3_y, "Instances", Obj_boss1_laser,
	{
    direction : 210,
	image_angle : 120,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances", Obj_boss1_laser,
	{
    direction : 240,
	image_angle : 150,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances", Obj_boss1_laser,
	{
    direction : 270,
	image_angle : 180,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances", Obj_boss1_laser,
	{
    direction : 300,
	image_angle : 210,
	})
	instance_create_layer(x+l3_x, y+l3_y, "Instances", Obj_boss1_laser,
	{
    direction : 330,
	image_angle : 240,
	})
}
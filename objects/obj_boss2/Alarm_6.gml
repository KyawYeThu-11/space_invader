/// @description Insert description here
// You can write your code in this editor

if(action2_1_1){
	action2_1_1();
	action2_1_1 = 0;
}
if(action2_1_2){
	action2_1_2();
	action2_1_2 = 0;
}
if(action2_1_3){
	action2_1_3();
	action2_1_3 = 0;
}

if (boss2_combo_counter == 1){
	boss2_combo_counter = 0;
	alarm[10]=120;
} else {
	boss2_combo_counter = boss2_combo_counter - 1; 
	alarm[7] = 80;
}
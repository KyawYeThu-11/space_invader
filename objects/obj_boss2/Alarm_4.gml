/// @description Insert description here
// You can write your code in this editor
if(action2_4_1){
	action2_4_1();
	action2_4_1 = 0;
}
if(action2_4_2){
	action2_4_2();
	action2_4_2 = 0;
}
if(action2_4_3){
	action2_4_3();
	action2_4_3 = 0;
}

if (boss2_combo_counter == 1){
	boss2_combo_counter = 0;
	alarm[0]=120;
} else {
	boss2_combo_counter = boss2_combo_counter - 1; 
	alarm[5] = 40
}
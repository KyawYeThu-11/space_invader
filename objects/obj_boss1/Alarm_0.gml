/// @description Insert description here
// You can write your code in this editor
if ((counter mod 4)==0){
	// Stop the boss
	boss1_y_pos_save = boss1_y_pos_time;
	floatSpeed = 0; 
	floatHeight = 0; 
	bossSpeed = 0;
	//boss1_y_pos_save = boss1_y_pos_time;
	random_attack_number = irandom(20)
	counter++
	random_attack_combo(random_attack_number)
	audio_play_sound(boss1_stop, 1, false, 1, 0, random_range(0.8, 1.2))
	alarm[0] = 300
}else{
	//bossSpeed = 0
	random_attack_number = irandom(15)
	counter++
	random_attack_basic(random_attack_number)
	alarm[0] = 180
}


/// @description Insert description here
// You can write your code in this editor

// attack chooser
//attack2_c1c2c3_c1c2c3_c1c2c3c()
if ((boss2_counter mod 5)==0){
	boss2_random_attack = irandom(5)
	random_attack_trap(boss2_random_attack)
	audio_play_sound(trap_attack, 0, false, 1, 0, random_range(0.8, 1.2))
	trapping = true
}
else{
	boss2_random_attack = irandom(25)
	random_attack_normal(boss2_random_attack)
}
boss2_counter++


// trail for trap attack
//boss2_attack_trap = true
//alarm[1] = 600
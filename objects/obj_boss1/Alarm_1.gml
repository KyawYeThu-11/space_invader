/// @description Insert description here
// You can write your code in this editor
//if (combo_number_1){
//	action_1();
//	combo_number_1 = false
//}
// ORDER - ACTION_2 => ACTION_1

if (combo_number_2){
	switch(combo_attack_2){
	case "3":
		action_2_3();
		action_2_3 = 0;
	case "2":
		action_2_2();
		action_2_2 = 0;
	default:
		action_2_1();
		action_2_1 = 0;
	break;
	}
	combo_number_2 = false // combo_number_1 will be still "true"
	alarm[1] = 60
	combo_attack_2 = 0 // set back
}else{
	switch(combo_attack_1){
	case "3":
		action_1_3();
		action_1_3 = 0;
	case "2":
		action_1_2();
		action_1_2 = 0;
	default:
		action_1_1();
		action_1_1 = 0;
	break;
	}
	combo_attack_1 = 0 // set back 
	combo_number_1 = false
	// Move the boss after small delay
	alarm[2] = 60
}
//if we come to here, its should be the combos that uses alarm 
//so we have to put the combo_number 1
//combo_number_1 = false

// stop the boss temporary for stop while doing combo attack
//bossSpeed = 1


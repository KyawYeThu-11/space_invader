/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region TEMPORARY - MAKE REGENERATION
elapsed_time += delta_time;                             // Update the elapsed time
var hp_increase = hp_increase_per_second * delta_time;  // Calculate the amount of HP to increase based on the elapsed time
if (boss2_hp < boss2_hp_max) {
   boss2_hp += hp_increase;                                 // increase the HP
}

if (boss2_hp < 0) {
    boss2_hp = 0;                                        // Ensure the HP does not go below 0
}

#endregion
//////////movement - can change the playership object

x_fixer = 640 // (width of boss1 - width of playership) / 2
//move_towards_point(Object_player.x - x_fixer, y, spd)

obj_boss2.x = clamp(obj_boss2.x, 0, 640); // boundary 

#region	TRIGGER TO TRAP ATTACK
if (boss2_attack_trap){
	laser2_1_1()
	laser2_5_1()
}


#endregion
#region MOVEMENT
// Get the player's x-coordinate
var playerX = obj_Player.x;

// Define the boss's speed (adjust as needed)
//var bossSpeed = 1;

// Check if the boss is to the left or right of the player
if (obj_boss2.x < (playerX - x_fixer))
{
    // Move the boss towards the player (to the right)
    obj_boss2.x += bossSpeed;
}
else if (x > (playerX - x_fixer))
{
    // Move the boss towards the player (to the left)
    obj_boss2.x -= bossSpeed;
}

///////floatin movement
// Set the boss's floating motion properties
// I DECLARING THESE TWO IN "ROOM START" EVENTS
//var floatSpeed = 0.001;  // Adjust the speed of the float
//var floatHeight = 0.5; // Adjust the height of the float
//	TIME SAVER AND
boss2_y_pos_time += delta_time;
if (!boss2_y_pos_save){
	obj_boss2.y = -10 + floatHeight * sin(floatSpeed * boss2_y_pos_time / 1000);
}
//START THE ROOM AND SLIDE THE BOSS
if (boss2_start&&(obj_boss2.y != -10)){
	obj_boss2.y += 5;
	if (obj_boss2.y >= -10){
		boss2_start = false;
		boss2_y_pos_time = 0
		boss2_y_pos_save = 0
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


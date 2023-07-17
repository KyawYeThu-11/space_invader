/// @description Insert description here
// You can write your code in this editor
#region TEMPORARY - MAKE REGENERATION
elapsed_time += delta_time;                             // Update the elapsed time
var hp_increase = hp_increase_per_second * delta_time;  // Calculate the amount of HP to increase based on the elapsed time
if (boss1_hp < boss1_hp_max) {
   boss1_hp += hp_increase;                                 // increase the HP
}

if (boss1_hp < 0) {
    boss1_hp = 0; 
	// Ensure the HP does not go below 0
}

#endregion
//////////movement - can change the playership object

x_fixer = 480 // (width of boss1 - width of playership) / 2
//move_towards_point(Object_player.x - x_fixer, y, spd)

x = clamp(x, 0, 960); // boundary 


#region MOVEMENT
// Get the player's x-coordinate
var playerX = obj_Player.x;

// Define the boss's speed (adjust as needed)
//var bossSpeed = 1;

// Check if the boss is to the left or right of the player
if (obj_boss1.x < (playerX - x_fixer))
{
    // Move the boss towards the player (to the right)
    obj_boss1.x += bossSpeed;
}
else if (x > (playerX - x_fixer))
{
    // Move the boss towards the player (to the left)
    obj_boss1.x -= bossSpeed;
}

///////floatin movement
// Set the boss's floating motion properties
// I DECLARING THESE TWO IN "ROOM START" EVENTS
//var floatSpeed = 0.001;  // Adjust the speed of the float
//var floatHeight = 0.5; // Adjust the height of the float
//	TIME SAVER AND
boss1_y_pos_time += delta_time;
if (!boss1_y_pos_save){
	obj_boss1.y = 50 + floatHeight * sin(floatSpeed * boss1_y_pos_time / 1000);
}
//START THE ROOM AND SLIDE THE BOSS
if (boss1_start&&(obj_boss1.y != 50)){
	obj_boss1.y += 5;
	if (obj_boss1.y >= 50){
		boss1_start = false;
		boss1_y_pos_time = 0
		boss1_y_pos_save = 0
	}
}

#endregion


#region SHOOTER CHECKER - SHOULD DELETE THIS LATER
//if keyboard_check(ord("1")){
//	canon_1()
//}
//if keyboard_check(ord("2")){
//	canon_2()
//}
//if keyboard_check(ord("3")){
//	canon_3()
//}
//if keyboard_check(ord("4")){
//	canon_4()
//}
//if keyboard_check(ord("5")){
//	canon_5()
//}
//if keyboard_check(ord("6")){
//	canon_6()
//}
//if keyboard_check(ord("7")){
//	laser_1()
//}
//if keyboard_check(ord("8")){
//	laser_2()
//}
//if keyboard_check(ord("9")){
//	laser_3()
//}
#endregion


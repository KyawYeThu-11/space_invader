/// @description Insert description here
// You can write your code in this editor
// timer += 1; // Increment the timer by the time passed since the last step
input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);

// Check if the display time has elapsed
/*if (timer >= displayTime)
{
    // Reset the timer
    timer = 0;
    room_goto(rm_Init);
}
*/

// Check if a selected line has changed
var ochange = input_down_p - input_up_p;
if (ochange != 0){
	current_line += ochange;
	audio_play_sound(snd_Impact_1, 1, false);
	// We don't do num_highscores < 1 to account for "GO BACK TO MAIN MENU" button
	if(current_line > num_highscores){current_line = 0;}
	if(current_line < 0){current_line = num_highscores;}
}

// Check if a line is clicked enter
if(input_enter_p){
	if(current_line == num_highscores){
		audio_play_sound(snd_Impact_1, 1, false);
		if (room == rm_high_scores){room_goto(rm_Init);}
		else if (room == rm_highscore_menu_X){room_goto(rm_main_menu);}
	}
}
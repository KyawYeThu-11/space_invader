/// @description Insert description here
// You can write your code in this editor
//code to display the highscores
var startY = 250; // Starting Y position to draw the highscores
var lineHeight = 50; // Vertical spacing between highscores
var x_buffer = 15;
var entry_exists = false;

draw_set_font(main_font_space_invader);

for (var i = 0; i <array_length(global.highscores); i++)
{	
    var highscore = global.highscores[i];
	var timestamp = global.timestamps[i];
    if (highscore!= 0){
		c = c_white;
		xo = 0;
		
		if(i == current_line){
			c = c_green;
			xo = -x_buffer;
		}
		// Draw the highscore with its respective timestamp on the screen
        draw_text_color(global.view_width/4 + xo, startY + i * lineHeight, string(i + 1) + ". " + string(highscore) + " pts" , c_yellow, c_yellow, c, c, 1);	
		draw_text_color((global.view_width/4)*3 + xo, startY + i * lineHeight, timestamp, c_yellow, c_yellow, c, c, 1);	
		
		// at least one entry exists
		entry_exists = true;
	}
}

// If there is no entry at all, show a message
if (entry_exists == false) {
	draw_text_color((global.view_width/2), startY + lineHeight, "There is no history of scores!", c_yellow, c_yellow, c_white, c_white, 1);
}

if (current_line == num_highscores){c = c_green;}
else {c = c_white;}

draw_text_color(global.view_width/2, startY + (max_entry+2) * lineHeight, "GO BACK TO MAIN MENU", c_yellow, c_yellow, c, c, 1);	



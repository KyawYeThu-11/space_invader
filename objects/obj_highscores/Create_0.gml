/// @description Insert description here
// You can write your code in this editor
// Timer variables
// displayTime = 300; // Display time in seconds
// timer = 0; // Timer counter
current_line = 0;
num_highscores = 0;
max_entry = 10;

if(array_length(global.highscores) ==0){
	var newHighscore = global.score;
	var currentTime = string(current_day) + "/" + string(current_month) + "  " + string(current_hour) + ":" + string(current_minute);
	
	array_push(global.highscores, newHighscore);
	array_push(global.timestamps, currentTime);
}
else if (array_length(global.highscores) < max_entry || global.score > global.highscores[array_length(global.highscores)-1])
{
    // Create a new highscore and timestamp entry
    var newHighscore = global.score;
	var currentTime = string(current_day) + "/" + string(current_month) + "  " + string(current_hour) + ":" + string(current_minute);
	
    // Insert the new highscore at the appropriate position
    var inserted = false;
    for (var i = 0; i < array_length(global.highscores); i++)
    {
        if (newHighscore> global.highscores[i])
        {
           array_insert(global.highscores, i, newHighscore);
		   array_insert(global.timestamps, i, currentTime);
           inserted = true;
           break;
        }
    }
    
    // If the score was not inserted yet and there's room, add it at the end
    if (!inserted && array_length(global.highscores) < max_entry)
    {
        array_push(global.highscores, newHighscore);
		array_push(global.timestamps, currentTime);
        inserted = true;
    }
    
    // If the list exceeds 10 entries, remove the lowest score
    if (array_length(global.highscores) > max_entry)
    {
        array_pop(global.highscores);
		array_pop(global.timestamps);
    }
}

// Since the length of global.highscores is always 10, count non-zero entries 
for (var i = 0; i <array_length(global.highscores); i++)
{
	if (global.highscores[i] != 0) {num_highscores++;}
}

highscores_save();


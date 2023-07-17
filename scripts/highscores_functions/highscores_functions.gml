// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_load(file_name){ //load highscores from file to highscores array when we launch the game
	var file = working_directory + file_name;
	var handle = file_text_open_read(file);
	if(handle!=-1){
		var line = file_text_readln(handle);
		if (string_length(line) > 0) {
			if (file_name == "highscores.txt"){
				global.highscores = json_parse(line);
			}
			else if (file_name == "timestamps.txt"){
				global.timestamps = json_parse(line);
			}	
		}
	//	while (!file_text_eof(handle))
    //{
    //    var line = file_text_readln(handle);
     
    //    var playerScore = real(line);
        
    //    array_push(global.highscores, playerScore);
    //}
    
    file_text_close(handle);
	}
}

function highscores_load(){
	array_load("highscores.txt");
	array_load("timestamps.txt");
}

function array_save(file_name){   //save highscores from high_scores array to file when exiting game
	var file = working_directory + file_name;
	var handle = file_text_open_write(file);

	if (handle != -1)
	{
	    //for (var i = 0; i < array_length(global.highscores); i++)
	    //{
	    //    var highscore = string(global.highscores[i]);
              
	    //    // Write the highscore to the file
	    //    file_text_write_string(handle, highscore);
	    //}
		if (file_name == "highscores.txt"){		
			var toSave = json_stringify(global.highscores);
		}
		else if (file_name == "timestamps.txt"){
			var toSave = json_stringify(global.timestamps);
		}
		file_text_write_string(handle, toSave);
	    file_text_close(handle);
	}
}

function highscores_save(){
	array_save("highscores.txt");
	array_save("timestamps.txt");
}

function clean_file(file_name){
	var file = working_directory + file_name;
	var handle = file_text_open_write(file);
	var clean=[];
	clean = json_stringify(clean);
	if(handle!=-1){
		file_text_write_string(handle,clean ); // Write an empty string to the file 
		file_text_close(handle); // Close the file
	}
}

function cleanup(){
	clean_file("highscores.txt");
	clean_file("timestamps.txt");
}
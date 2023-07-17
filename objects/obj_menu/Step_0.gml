if (!global.pause) exit;

input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);

var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_);

if (inputting){
	switch(ds_[# 1, menu_option[page]]){
		case menu_element_type.shift:
			var hInput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if (hInput != 0){
				// audio
				ds_[# 3, menu_option[page]] += hInput;
				ds_[# 3, menu_option[page]] = clamp(ds_[# 3, menu_option[page]], 0, array_length(ds_[# 4, menu_option[page]])-1);
			}
		break;
		case menu_element_type.slider:
			switch(menu_option[page]){
				case 0: 
					if (!audio_is_playing(snd_Engine)) {audio_play_sound(snd_Engine, 1, false);} break;
				case 1: 
					if (!audio_is_playing(snd_Laser_Player)) {audio_play_sound(snd_Laser_Player, 1, false);} break;
				case 2: 
					if (!audio_is_playing(global.background_music)) {audio_play_sound(global.background_music, 1, false);} break;
			}
			var hInput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if (hInput != 0){
				// audio
				ds_[# 3, menu_option[page]] += hInput * 0.01;
				ds_[# 3, menu_option[page]] = clamp(ds_[# 3, menu_option[page]], 0, 1);
				script_execute(ds_[# 2, menu_option[page]], ds_[# 3, menu_option[page]]);
			}
		break;
		case menu_element_type.input:
			var kk = keyboard_lastkey;
			if (kk != vk_enter){
				if (kk != ds_[# 3, menu_option[page]]) //audio
				ds_[# 3, menu_option[page]] = kk;
				variable_global_set(ds_[# 2, menu_option[page]], kk);
			}
		break;
	}
	
}else{
	var ochange = input_down_p - input_up_p;
	if (ochange != 0){
		menu_option[page] += ochange;
		if(menu_option[page] > ds_height-1){menu_option[page] = 0;}
		if(menu_option[page] < 0){menu_option[page] = ds_height - 1;}
		audio_play_sound(snd_Impact_1, 1, false);
	}
}

if(input_enter_p){
	switch(ds_[# 1, menu_option[page]]){
		case menu_element_type.script_runner: script_execute(ds_[# 2, menu_option[page]]); break;
		case menu_element_type.page_transfer:
			audio_stop_all();
			page = ds_[# 2, menu_option[page]]; break;
		case menu_element_type.shift: script_execute(ds_[# 2, menu_option[page]], ds_[# 3, menu_option[page]]);
		case menu_element_type.slider:
		case menu_element_type.input:
			inputting = !inputting;
			break;
	}
	audio_play_sound(snd_Impact_1, 1, false);
}
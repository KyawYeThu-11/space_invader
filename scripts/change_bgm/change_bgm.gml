function set_global_BGM(music){
	if (!audio_is_playing(music)) {
		global.background_music = music;
		audio_play_sound(global.background_music, 1, false);
	}
}

function change_bgm(){
	audio_stop_all();
	switch(argument0){
		case 0: set_global_BGM(snd_BGM_1); break;
		case 1: set_global_BGM(snd_BGM_2); break;
		case 2: set_global_BGM(snd_BGM_3); break;
		case 3: set_global_BGM(snd_BGM_4); break;
		case 4: set_global_BGM(snd_BGM_5); break;
	}
	
}
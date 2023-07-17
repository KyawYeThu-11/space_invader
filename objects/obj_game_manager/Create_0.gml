// paused: This will be true when the game is paused, and false when it's not
paused = false;

if(!audio_is_playing(global.background_music)){audio_play_sound(global.background_music, 1, false);}
/// @description 
damage=global.damage;
time_to_live=game_get_speed(gamespeed_fps)*10;
audio_play_sound(player_laser, 0, false, 1, 0, random_range(0.8, 1.2))
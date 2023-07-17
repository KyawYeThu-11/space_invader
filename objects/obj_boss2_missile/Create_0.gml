/// @description Insert description here
// You can write your code in this editor
#region OLD VERSION
//var missile_cX 

//obj_boss2_missile.speed = 40 // horizontal speed 4
//alarm[0] = 1
//boss2_missile_alarm = 5
#endregion

audio_play_sound(missiles, 0, false, 1, 0, random_range(0.8, 1.2))
//hm_tracker = true
//alarm[0] = 120
target_direction = point_direction(x, y, obj_Player.x, obj_Player.y);
hm_tracker = "start"
alarm[0] = 15

direction = irandom_range(0, 360);
speed = 1; 
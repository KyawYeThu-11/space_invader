/// @description 
current_wave=0;
enemy_waves=[{timer:game_get_speed(gamespeed_fps)*1,object:obj_Enemy_Red,number:6,position_start:{_x:96,_y:96,},position_add:{_x:92,_y:38,}},
{timer:game_get_speed(gamespeed_fps)*5,object:obj_Enemy_Blue,number:8,position_start:{_x:96,_y:96,},position_add:{_x:72,_y:0,}},
{timer:game_get_speed(gamespeed_fps)*5,object:obj_Enemy_Green,number:8,position_start:{_x:room_width*global.camera_zoom-90,_y:-96,},position_add:{_x:-64,_y:-32,}},];

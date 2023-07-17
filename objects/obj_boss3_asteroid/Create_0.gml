/// @description Insert description here
// You can write your code in this editor
// can destoy if its outside of room
audio_play_sound(asteroid, 0, false, 1, 0, random_range(0.8, 1.2))
asteroid_outside_room = false
alarm[0] = 180

// player's coordinate
asteroid_player_x = obj_Player.x
asteroid_player_y = obj_Player.y - 170
// own coordinate
asteroid_x = obj_boss3_vul_area.astroid_pull_x
asteroid_y = 1180

//direction
asteroid_direction = point_direction(asteroid_x, asteroid_y, asteroid_player_x, asteroid_player_y) - 90

// speed
if (asteroid_player_x > asteroid_x){
	asteroid_x_speed = 4
}else{
	asteroid_x_speed = -4
}

asteroid_y_speed = (asteroid_player_y - asteroid_y) / (asteroid_player_x - asteroid_x) * asteroid_x_speed
if (asteroid_y_speed > 8){
	asteroid_y_speed = 8
}
if (asteroid_y_speed < -8){
	asteroid_y_speed = -8
}
if (asteroid_x_speed > 8){
	asteroid_x_speed = 8
}
if (asteroid_x_speed < -8){
	asteroid_x_speed = -8
}
if (asteroid_player_x == asteroid_x) {
	asteroid_x_speed = 0
	asteroid_y_speed = -4
}
//asteroid_x_target = (asteroid_player_x - asteroid_x) / (asteroid_player_y - asteroid_y) * (-100)
//asteroid_x_target = (1280 * asteroid_player_x - 100 * asteroid_x - asteroid_x * asteroid_player_y) / (1180 - asteroid_y)
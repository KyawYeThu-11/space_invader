/// @description Insert description here
// You can write your code in this editor
// can destoy if its outside of room
audio_play_sound(asteroid, 0, false, 1, 0, random_range(0.8, 1.2))
asteroidc_outside_room = false
alarm[0] = 180

// player's coordinate
asteroidc_player_x = obj_Player.x
asteroidc_player_y = obj_Player.y - 170
// own coordinate
//asteroidc_x = obj_boss3_asteroid_c.x
//asteroidc_y = obj_boss3_asteroid_c.y
asteroidc_x = obj_boss3_vul_area.astroid_pull_x
asteroidc_y = 1180

//direction
asteroidc_direction = point_direction(asteroidc_x, asteroidc_y, asteroidc_player_x, asteroidc_player_y) - 90

// speed
if (asteroidc_player_x > asteroidc_x){
	asteroidc_x_speed = 4
}else{
	asteroidc_x_speed = -4
}

asteroidc_y_speed = (asteroidc_player_y - asteroidc_y) / (asteroidc_player_x - asteroidc_x) * asteroidc_x_speed
if (asteroidc_y_speed > 8){
	asteroidc_y_speed = 8
}
if (asteroidc_y_speed < -8){
	asteroidc_y_speed = -8
}
if (asteroidc_x_speed > 8){
	asteroidc_x_speed = 8
}
if (asteroidc_x_speed < -8){
	asteroidc_x_speed = -8
}
if (asteroidc_player_x == asteroidc_x) {
	asteroidc_x_speed = 0
	asteroidc_y_speed = -4
}

//asteroidc_x_target = (asteroidc_player_x - asteroidc_x) / (asteroidc_player_y - asteroidc_y) * (-100)
//asteroidc_x_target = (1280 * asteroidc_player_x - 100 * asteroidc_x - asteroidc_x * asteroidc_player_y) / (1180 - asteroidc_y)
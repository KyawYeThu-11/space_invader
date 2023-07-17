/// @description Insert description here
// You can write your code in this editor
x += asteroidc_x_speed
y += asteroidc_y_speed
//move_towards_point(asteroidc_x_target, -100, 5)
image_angle = asteroidc_direction

//destroy
if (asteroidc_outside_room){
	if ((x<-100)||(x>2080)||(y<-95)){
		instance_destroy();
	}
}

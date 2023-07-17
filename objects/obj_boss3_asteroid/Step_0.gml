/// @description Insert description here
// You can write your code in this editor
x += asteroid_x_speed
y += asteroid_y_speed
//move_towards_point(asteroid_x_target, -100, 5)
image_angle = asteroid_direction

//destroy
if (asteroid_outside_room){
	if ((x<-100)||(x>2080)||(y<-95)){
		instance_destroy();
	}
}

/// @description Insert description here
// You can write your code in this editor
if (hm_tracker == "true"){
	target_direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	direction += sin(degtorad(target_direction - direction));
	image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
	//move_towards_point(obj_Player.x + random_range(-100, 100), y, 3);
	//image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
} 
if (hm_tracker = "false"){
	//move_towards_point(trackerX + random_range(-100, 100), y, 2);
	direction += sin(degtorad(target_direction - direction));
	//image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
	
}
if (hm_tracker = "start"){
	image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
}
// destroy when out of boundaries
if (y >= 1080){
	instance_destroy();
}
if ((y >= 540) && (x < -30)){
	instance_destroy();
}
if ((y >= 540) && (x > 1950)){
	instance_destroy();
}
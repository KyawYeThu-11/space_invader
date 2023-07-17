/// @description Insert description here
// You can write your code in this editor
#region OLD VERSION
////move_towards_point(missile_cX, y, obj_boss2_missile.speed);
//y += 5
//image_angle = 180 - angle_difference(obj_Player, obj_boss2_missile) ;

////var playerX = obj_Player.x;

//// Define the boss's speed (adjust as needed)
////var bossSpeed = 1;

//// Check if the boss is to the left or right of the player
//if ( x < (missile_cX))
//{
//    // Move the boss towards the player (to the right)
//    x += obj_boss2_missile.speed;
//}
////else if (x == (missile_cX))
////{
////	x = x;
////}
//if ( x > (missile_cX))
//{
//    // Move the boss towards the player (to the left)
//    x -= obj_boss2_missile.speed;
//}
////else if (x > (missile_cX ))
////{
////    // Move the boss towards the player (to the left)
////    x -= obj_boss2_missile.speed;
////}
#endregion

////move_towards_point(obj_Player.x + random_range(-100, 100), obj_Player.y + random_range(-100, 100), 2);
//if (hm_tracker){
//	move_towards_point(obj_Player.x + random_range(-100, 100), y, 3);
//	image_angle = point_direction(x, y, obj_Player.x, obj_Player.y); 
//}else{
//	move_towards_point(trackerX + random_range(-100, 100), y, 2);
//}
////move_towards_point(obj_Player.x + random_range(-100, 100), y, 2);
//y+=4
////image_angle = point_direction(x, y, obj_Player.x, obj_Player.y); 
//image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);
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
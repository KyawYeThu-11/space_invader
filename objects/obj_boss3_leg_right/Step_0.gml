/// @description Insert description here
// You can write your code in this editor
//coming to coordinate
//if instance_exists(obj_boss3)==false {
//	instance_destroy()
//}
if ((pulling) &&(obj_boss3_leg_right_moving_forward == true))
{
	move_towards_point(obj_boss3_vul_area.astroid_pull_x, 1090, 5)
	//image angle
	image_angle = 90 + point_direction(x, y, obj_boss3_vul_area.astroid_pull_x, 1090)
}
//creating asteroid
if(obj_boss3_leg_right.y > 1080){
	obj_boss3_leg_right_moving_forward = false
	obj_boss3_leg_right.y -= 5
	// create the asteroid here
	if (created_asteroid == 0){
		if instance_exists(obj_boss3_asteroid)
		{
			instance_create_layer(obj_boss3_vul_area.astroid_pull_x, 1180, "Instances_2", obj_boss3_asteroid_c)
		}else{
			instance_create_layer(obj_boss3_vul_area.astroid_pull_x, 1180, "Instances_2", obj_boss3_asteroid)
		}
		created_asteroid = 1
		//instance_create_layer(500, 500, "Instances_2", obj_boss3_asteroid)
		
	}
}

//moving back
if ((pulling)&&(obj_boss3_leg_right_moving_forward == false)){
	move_towards_point(1910, -100, 5)
	image_angle = point_direction(x, y, 10, -100) + 180
}
//destroying
if (obj_boss3_leg_right.y < -90)
{
	instance_destroy()
}
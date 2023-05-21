/// @description 

#region CAMERA
#endregion

#region MOVEMENT
	var horizontal_input=keyboard_check(global.key_player_right)-keyboard_check(global.key_player_left);
	if(horizontal_input != 0){
		horizontal_speed+=horizontal_input*_acceleration;
		horizontal_speed=clamp(horizontal_speed,-_max_movement_speed,_max_movement_speed);
	}else{
		if(horizontal_speed>_deceleration){
			horizontal_speed -=_deceleration;
		}else if(horizontal_speed<-_deceleration){
			horizontal_speed += _deceleration;
		}else{
			horizontal_speed=0;
		}
	}
	var temp_x=x+horizontal_speed;
	if(temp_x<sprite_width){
		horizontal_speed=0;
	}else if(temp_x>(room_width*global.camera_zoom)-sprite_width){
		horizontal_speed=0;
		x=(room_width*global.camera_zoom)-sprite_width;
	}
	image_angle=horizontal_speed*-1;
	x+=horizontal_speed;		
#endregion



#region SHOOTING
	if(keyboard_check(global.key_player_shoot)){
		if(can_shoot==true){
			can_shoot=false;
			alarm_set(0,timer_shot);
			var bullet=instance_create_layer(x,y-32,"Bullets",obj_Player_Bullet);
			bullet.direction=90;
			bullet.speed=20;
			
		}
	}
			
#endregion
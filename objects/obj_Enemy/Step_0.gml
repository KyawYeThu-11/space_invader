/// @description 
if(shooting.is_enabled){
	shooting.timer-=1;
	if(shooting.timer<=0){
		shooting.can_shoot=true;
	}
	if(shooting.can_shoot==true){
		instance_create_depth(x,y,depth,obj_Laser_Enemy);
		shooting.can_shoot=false;
		shooting.timer=shooting.timer_max;
	}
}
if(y>room_height*global.camera_zoom+64){
	instance_destroy();
}


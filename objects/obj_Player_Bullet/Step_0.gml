/// @description 
time_to_live-=1;
if(time_to_live<=0){
	instance_destroy();
}

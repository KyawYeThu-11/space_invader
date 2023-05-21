/// @description 
enemy_waves[current_wave].timer -= 1;
if(enemy_waves[current_wave].timer<=0){
	for(var i=0;i< enemy_waves[current_wave].number;i++){
		var xx=enemy_waves[current_wave].position_start._x + (i*enemy_waves[current_wave].position_add._x);
		var yy=enemy_waves[current_wave].position_start._y + (i*enemy_waves[current_wave].position_add._y);
		instance_create_layer(xx,yy,"Enemies",enemy_waves[current_wave].object);
	}

current_wave+=1;
if(current_wave>array_length(enemy_waves)-1){
	instance_destroy();
}
}
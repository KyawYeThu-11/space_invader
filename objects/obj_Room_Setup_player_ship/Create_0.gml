/// @description 

// generate layers

 //add camera
//var instance_camera = instance_create_layer(0, 0, "Camera", obj_Camera);

 //add player based on camera
var instance_player = instance_create_layer(
	room_width / 2,
	room_height - 70,
	"Player",
	obj_Player
);

beginning_effect = instance_create_layer(0, 0, "Phase_transition", obj_transition_phase_beginning);


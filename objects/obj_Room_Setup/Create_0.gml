/// @description 

// generate layers

// add camera
var instance_camera = instance_create_layer(0, 0, "Camera", obj_Camera);

// add player based on camera
var instance_player = instance_create_layer(
	instance_camera.width() / 2,
	instance_camera.height() - 128,
	"Player",
	obj_Player
);
instance_create_layer(	instance_camera.width() / 2,
	instance_camera.height() - 128,"Enemies",obj_Spawner_Enemy);
instance_destroy();

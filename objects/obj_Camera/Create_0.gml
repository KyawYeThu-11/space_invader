/// @description 

camera = function() {
	return view_camera[0];
}

width = function() {
	return camera_get_view_width(camera());
};

height = function() {
	return camera_get_view_height(camera());
};

// screen shake

// zoom out
// camera_set_view_size(camera(), width() * global.camera_zoom, height() * global.camera_zoom);
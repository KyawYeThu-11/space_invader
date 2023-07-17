/// @desc Function
/// @param {Real} input
/// @param {Real} in_min
/// @param {Real} in_max
/// @param {Real} out_min
/// @param {Real} out_max
/// @returns {real}
function range_lerp(input, in_min, in_max, out_min, out_max){
	
	var clamp_max = out_max > out_min ? out_max : out_min;
	var clamp_min = out_min < out_max ? out_min : out_max;
	return clamp((input - in_min) * (out_max - out_min) / (in_max - in_min) + out_min, clamp_min, clamp_max);
}
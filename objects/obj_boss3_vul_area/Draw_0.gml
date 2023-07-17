/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_self();
//if put false, make it invisible
if (!fade_out){
	if (image_alpha > 0){
		//alpha -= 0.02;
		//image_alpha = alpha
		image_alpha = 0
	}
	//if (image_alpha == 0){
	//	boss3_vul_area_number++;
	//}
}
///if put true, make it visible
if (fade_out){
	if (image_alpha < 1){
		alpha += 0.02;
		image_alpha = alpha
	}
}

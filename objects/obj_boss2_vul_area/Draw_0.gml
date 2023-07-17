/// @description Insert description here
// You can write your code in this editor
draw_self();
//image_alpha 
if (!fade_out){
	//draw_set_alpha(alpha);
	image_alpha = alpha;
	alpha -= 0.02;
	if (alpha == 0){
		fade_out = true;
	}
}
if (fade_out){
	//draw_set_alpha(alpha);
	image_alpha = alpha;
	alpha += 0.02;
	if (alpha == 1){
		fade_out = false;
	}
}
//draw_set_alpha(alpha);

//draw_text(x, y, "You went through a door");
//draw_set_alpha(1);
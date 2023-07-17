if (!global.pause) exit;

draw_set_font(main_font_space_invader);
var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 88, x_buffer = 20;
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer))+70, start_x = gwidth/2;


// Draw Elements on Left Side
draw_set_valign(fa_middle);
if (menu_pages[page] == 0 || menu_pages[page] == 1) {
	draw_set_halign(fa_middle);

	var ltx = start_x - x_buffer, lty; 

	var yy = 0; repeat(ds_height){
		lty = start_y + (yy*y_buffer);
		xo = 0;
		
		if (yy == ds_height-1) {c = c_red};
		else {c = c_white};
		
		if(yy == menu_option[page]){
			c = c_green;
			xo = -(x_buffer/2);
		}
		
		draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c_yellow, c_yellow, c, c, 1);
		
		yy++;
	}
}
else{
	draw_set_halign(fa_right);

	var ltx = start_x - x_buffer, lty; 

	var yy = 0; repeat(ds_height){
		lty = start_y + (yy*y_buffer);
		xo = 0;
		
		if (yy == ds_height-1) {c = c_red};
		else {c = c_white};
		
		if(yy == menu_option[page]){
			c = c_green;
			xo = -(x_buffer/2);
		}
	
		draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c_yellow, c_yellow, c, c, 1);
		
		yy++;
	}
	c = c_white;
	// Draw Dividing Line
	draw_line(start_x, start_y-y_buffer, start_x, lty+y_buffer);


	// Draw Elements on Right Side
	draw_set_halign(fa_left);

	var rtx = start_x + x_buffer, rty;

	yy = 0; repeat(ds_height){
		rty = start_y + (yy*y_buffer);
		switch(ds_grid[# 1, yy]){
			case menu_element_type.shift:
				var current_val = ds_grid[# 3, yy];
				var current_array = ds_grid[# 4, yy];
				var left_shift = "<< ";
				var right_shift = " >>";
				var c = c_white;

				if (current_val == 0) left_shift = "";
				if (current_val == array_length(ds_grid[# 4, yy])-1) right_shift = "";
			
				if (menu_pages[page] == 2){
					if (inputting and yy == menu_option[page]){c = c_yellow;}
					draw_text_color(rtx, rty, left_shift+current_array[current_val]+right_shift, c, c, c, c, 1);
				}else if (menu_pages[page] == 4){
					if (inputting and yy == menu_option[page]){c = c_yellow;}
					draw_text_color(rtx, rty, left_shift, c, c, c, c, 1);
					draw_sprite(spr_Player_Ship, current_val, rtx+90, rty);
					draw_text_color(rtx+90+50, rty, right_shift, c, c, c, c, 1);
				}
			break;
		
			case menu_element_type.slider:
				var len = 194;
				var current_val = ds_grid[# 3, yy];
				var current_array = ds_grid[# 4, yy];
				var circle_pos = ((current_val - current_array[0])/(current_array[1] - current_array[0]));
				c = c_white;
			
				draw_line_width(rtx, rty, rtx + len, rty, 2);
			
				if (inputting and yy == menu_option[page]){c = c_yellow;}
				draw_circle_color(rtx + (circle_pos*len), rty, 8, c, c, false);
				draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos*100))+"%", c, c, c, c, 1);
			break;
		
			case menu_element_type.input:
				var current_val = ds_grid[# 3, yy];
				var string_val;
			
				switch(current_val){
					//case vk_up: string_val = "UP KEY"; break;
					case vk_left: string_val = "LEFT KEY"; break;
					case vk_right: string_val = "RIGHT KEY"; break;
					case vk_space: string_val = "SPACE"; break;
					//case vk_down: string_val = "DOWN KEY"; break;
					default: string_val = chr(current_val); break;
				}
			
				c = c_white;
				if (inputting and yy == menu_option[page]){c = c_yellow;}
				draw_text_color(rtx, rty, string_val, c, c, c, c, 1);
			break;
		}
	
		yy++;
	}
}

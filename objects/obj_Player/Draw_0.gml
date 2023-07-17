/// @description 
image_index = global.spr_player_skin;
draw_self();
draw_set_font(ft_button);
draw_set_color(c_white);
draw_text(room_width-200,10,"Score: " + string(global.score));



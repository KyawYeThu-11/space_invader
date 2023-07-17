/// @description 

// health
var pc;
pc = (global.hitpoints / 10) * 100;
draw_healthbar(x-50, y+70, x+sprite_width-40, y+60, pc, c_black, c_red, c_lime, 0, true, true)
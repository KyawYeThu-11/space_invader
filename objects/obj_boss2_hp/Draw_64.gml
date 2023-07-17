/// @description Insert description here
// You can write your code in this editor
#region HP COLOR AND APPEARANCE - MAIN HP
var hpRatio = obj_boss2.boss2_hp / obj_boss2.boss2_hp_max ;  // Calculate the HP ratio (between 0 and 1)
//var barColor = make_color_hsv(120 * hpRatio, 65280, 128);  // Calculate the color based on the HP ratio
var barColor = make_color_rgb(255 * (1 - hpRatio), 255 * hpRatio, 0);  // Calculate the color based on the HP ratio

draw_set_color(barColor);  // Set the color for the HP bar

//draw_rectangle(x, y+55, x + obj_boss1.boss1_hp /8 , y + 63, false);  // Draw the HP bar
draw_rectangle(x, y+65, x + obj_boss2.boss2_hp /7.8125 , y + 85, false);
#endregion
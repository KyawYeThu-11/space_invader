/// @description Insert description here
// You can write your code in this editor
#region HP COLOR AND APPEARANCE - MAIN HP
var hpRatio = obj_boss1.boss1_hp / obj_boss1.boss1_hp_max ;  // Calculate the HP ratio (between 0 and 1)
//var barColor = make_color_hsv(120 * hpRatio, 65280, 128);  // Calculate the color based on the HP ratio
var barColor = make_color_rgb(255 * (1 - hpRatio), 255 * hpRatio, 0);  // Calculate the color based on the HP ratio

draw_set_color(barColor);  // Set the color for the HP bar

//draw_rectangle(x, y+55, x + obj_boss1.boss1_hp /8 , y + 63, false);  // Draw the HP bar
draw_rectangle(x+64, y - 5, x +64 + obj_boss1.boss1_hp /1.04 , y + 15, false);
#endregion 

#region COLOR AND APPEARANCE - BORDER OF HP
//var x = 100;             // X coordinate of the rectangle's top-left corner
//var y = 100;             // Y coordinate of the rectangle's top-left corner
//var width = 200;         // Width of the rectangle
//var height = 100;        // Height of the rectangle
//var borderWidth = 2;     // Width of the border
//var borderColor = c_red; // Color of the border

//draw_rectangle(x, y, x + width, y + height, false);  // Draw the inner area of the rectangle
//draw_rectangle_color(x, y, x + width, y + borderWidth, borderColor, borderColor, borderColor, borderColor);                      // Draw the top border
//draw_rectangle_color(x, y + height - borderWidth, x + width, y + height, borderColor, borderColor, borderColor, borderColor);  // Draw the bottom border
//draw_rectangle_color(x, y, x + borderWidth, y + height, borderColor, borderColor, borderColor, borderColor);                      // Draw the left border
//draw_rectangle_color(x + width - borderWidth, y, x + width, y + height, borderColor, borderColor, borderColor, borderColor);      // Draw the right border

#endregion

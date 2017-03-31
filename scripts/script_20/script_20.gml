///draw_text_outlined(x, y, string, colour, outline_colour, image_xscale, image_yscale, image_angle, image_alpha)
var xx = argument0;
var yy = argument1;
var str = argument2;
var xScale = argument5;
var yScale = argument6;
var angle = argument7;
var alpha = argument8;
draw_set_colour(argument4);
draw_text_transformed_colour(xx-1, yy, str, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
draw_text_transformed_colour(xx+1, yy, str, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
draw_text_transformed_colour(xx, yy-1, str, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
draw_text_transformed_colour(xx, yy+1, str, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
draw_set_colour(argument3);
draw_text_transformed_colour(xx, yy, str, xScale, yScale, angle, argument3, argument3, argument3, argument3, alpha);
draw_set_colour(c_white);
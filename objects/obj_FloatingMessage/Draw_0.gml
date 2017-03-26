/// @description Draw message
draw_set_halign(fa_center);
draw_set_font(fnt_FloatingMsg);
draw_text_transformed_colour(x, y, text, image_xscale, image_yscale, image_angle, color, color, color, color, image_alpha);
draw_set_font(-1);
draw_set_halign(fa_left);
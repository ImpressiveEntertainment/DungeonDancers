/// @description Draw message
draw_set_halign(fa_center);
draw_set_font(fnt_FloatingMsg);
draw_text_outlined(x, y, text, color, c_white, image_xscale, image_yscale, image_angle, image_alpha, 20)
draw_set_font(-1);
draw_set_halign(fa_left);
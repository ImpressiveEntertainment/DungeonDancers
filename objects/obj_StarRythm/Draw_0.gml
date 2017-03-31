x1 = x - sprite_width/2;
y1 = y + sprite_height/2;
x2 = x1 + sprite_width;
y2 = y1 + sprite_height/2;
draw_set_alpha(0.35);
draw_ellipse_colour(x1, y1, x2, y2, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
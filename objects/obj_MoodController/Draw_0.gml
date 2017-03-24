for (i = 0; i < RythmPercent; i++)
{
	draw_sprite_ext(spr_TimeBar, image_index, x + sprite_get_width(spr_TimeBar)*i, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha); 
}
draw_rectangle(x, y, x + 4*obj_MainPlayer.RythmMax, y + 16, true);
color = c_white;
draw_text_colour(x + 5, y, "Inspiration: " + string(obj_MainPlayer.Rythm), color, color, color, color, 1);

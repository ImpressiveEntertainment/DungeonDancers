/// @description
draw_self();

if(position_meeting(mouse_x, mouse_y, id))
	CurrentTextColor = RolloverTextColor;
else
	CurrentTextColor = TextColor;

draw_set_font(TextFont);
draw_set_halign(TextAlignH);
draw_set_valign(TextAlignV);
draw_set_color(CurrentTextColor);

draw_text_transformed(x, y, ButtonText, TextXscale, TextYscale, TextRotation);

/// @description
if(global.EDITION_MODE == true)
{
	draw_set_color(c_ltgray);
	draw_rectangle(0, 0, 1024, 32, 0);

	draw_set_font(TextFont);
	draw_set_halign(TextAlignH);
	draw_set_valign(TextAlignV);
	draw_set_color(TextColor);

	var hSpace = 15;

	for(var i = 0; i < MenuOptionsNum; i++;)
	{
		var optionText	= MenuOptions[i];
		var xPos		= hSpace;
		var yPos		= string_height(MenuOptions[i]) / 2;
	
		draw_text_transformed(xPos, yPos, optionText, TextXscale, TextYscale, TextRotation);
	
		hSpace += string_width(MenuOptions[i]);
	}
}

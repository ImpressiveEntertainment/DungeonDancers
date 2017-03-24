/// @description Debug draw track

for (i = 0; i <= TrackNum; i++)
{
	if (i > 0 and TrackNum > 0)
		draw_text(x, y + 15*i, Track[global.world, i]);
	else if TrackNum = 0
		draw_text(x, y, Track[global.world, i]);
}
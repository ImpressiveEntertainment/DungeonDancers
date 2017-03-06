draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha); 

if timerStart > -1
{
    /*
    if timerStart >= 4
        clockText = "READY?";
    else if timerStart > 0
        clockText = string(timerStart);
    else if timerStart = 0
        clockText = "POSE!";
    */
    //draw_sprite(sprite_index,image_index,x,y);
    clockText = "";
}
else
{
    if oPlayer.preDiveTime > 0
    {
        if oPlayer.preDiveTime = maxTime
            clockText = string(oPlayer.preDiveTime) + ".00";
        else
            clockText = string(oPlayer.preDiveTime);
        //draw_sprite(sprite_index,image_index,x,y);
    }
    else if oPlayer.preDiveTime <= 0
        clockText = "TIME UP!";
}

draw_set_font(fInfoScores)

//textX = x - string_width(clockText)/2;
textX = x + sprite_width/2;
//textY = y + sprite_height - 5 + string_height(clockText)/2;
textY = y + sprite_height/2 - 8;

/*
draw_set_alpha(0.55);
draw_roundrect_colour_ext(textX - 15,
textY - 5, 
textX + string_width(clockText) + 15, textY + string_height(clockText) + 5, 
10, 10, c_black, c_black, 0);
draw_set_alpha(1);
*/
// Canviem el color en els últims 3 segons
if !startTicToc or oPlayer.preDiveTime > 4
    color = c_yellow
else
    color = c_red;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text_shadow_ext(textX, textY, clockText, color, color, 90, 3, 0.5, 0);
//draw_text_outlined_ext(textX, textY, clockText, color, color, 1.1, 1.1, image_angle, 0.5);
draw_text_colour(textX, textY, string_hash_to_newline(clockText), color, color, color, color, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_text(textX, textY, clockText);

/* */
/*  */

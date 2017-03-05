if oPlayer.preDiveTime >= 2
{
    alarm[0] = room_speed;
    if !audio_is_playing(global.tictoc)
        audio_play_sound(global.tictoc,10,false);
}
else if oPlayer.preDiveTime > 0.1
{
    alarm[0] = room_speed/2;
    if !audio_is_playing(global.tictoc)
        audio_play_sound(global.tictocFast,10,false);
}


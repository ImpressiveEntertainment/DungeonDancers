/// Compte enrere 3,2,1...

if timerStart > -1
{
    timerStart--;
    alarm[1] = room_speed/2
    if timerStart > 0
    //if timerStart = 3
    {
        if !audio_is_playing(global.shoutTime[timerStart])
            audio_play_sound(global.shoutTime[timerStart],10,false);
        // Movem el public
        with(oParPublic)
            shout = true;
        // Paraula cridada
            publicShout = instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, oPublicDavant.y - 300, oPublicCountdown);
            publicShout.word = string(timerStart);
    }
    else if timerStart = 0
    {
        /*
        if !audio_is_playing(global.shoutTime[timerStart])
            audio_play_sound(global.shoutTime[timerStart],10,false);
        */
        with(oParPublic)
            shout = true;
        // Paraula cridada i efecte de crit
            publicShout = instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, oPublicDavant.y - 300, oPublicCountdown);
            publicShout.word = "Pose";
        if !audio_is_playing(global.goPose)
            audio_play_sound(global.goPose,10,false);
        if !audio_is_playing(global.shout[3])
        {
            audio_sound_pitch(global.shout[3], 1.5);
            audio_play_sound(global.shout[3],10,false);
            audio_sound_pitch(global.shout[3], 1);      // retornem al pitch original
        }
    }
    
}
else
{
    oGameController.goPreDive = true;   // Permet començar la gameplay de PreDive
}

/* */
/*  */

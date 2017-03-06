/// Fer aparèixer el HUD
//tween_appearX = TweenFire(id, x__, true, EaseOutBack, x, view_wview[0]/2, 0.5);

if !appear and timerStart <= 0
{
    appear = true;
    tween_appearX = TweenFire(id, x__, true, EaseOutBack, x, __view_get( e__VW.WView, 0 )/2 - sprite_width/2, 0.25);
}

/// Compte enrere

if !global.pause
{
    // Si ja ha començat la gameplay de PreDive fem compte enrere
    if instance_exists(oCreateDiveFigures)
    {
        obj_SteadyDeltaTime.scale = 1.0;
        if oPlayer.preDiveTime > 0
        {
            image_speed = 0.35;
            // Restem el temps (però segons la velocitat del joc durant PreDive)
            oPlayer.preDiveTime -= global.dt_steady*oGameController.slowTimeSpeed;
            // So de compte enrere
            if oPlayer.preDiveTime < 5 and !startTicToc
            {
                startTicToc = true;
                alarm[0] = room_speed;
            }
        }
        else
        {
            // So de final de temps!
            global.timesUp = true;
            if !timeUpSound
            {
                timeUpSound = true;
                audio_play_sound(global.timeUp,10,false);
            }
            image_speed = 0;
            image_index = 0;
            oPlayer.preDiveTime = 0;
        }
    }
}
else
    obj_SteadyDeltaTime.scale = 0.0;

/// El fem desaparèixer
//Desapareix
if global.timesUp and !goOut
{
    goOut = true;
    TweenDiappear = TweenSimpleMove(x, y, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 10, y, 10, EaseOutQuart);
}

// Destroy
if !TweenExists(TweenDiappear) and goOut
    instance_destroy();


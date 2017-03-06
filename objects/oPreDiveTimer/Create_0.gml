image_speed = 0;
obj_SteadyDeltaTime.scale = 1.0;
global.timesUp = false;

timeUpSound = false;        // Controla si ha sonat el so de final de temps
startTicToc = false;        // Controla si comença el so de compte enrere
timerStart = 4;             // Temporitzador d'abans de començar el compte enrere
alarm[1] = room_speed;
appear = false;

goOut = false;
TweenDiappear = -1;

// Guardem en variable el temps màxim que tenim assignat
if !global.survivalMode
    maxTime = global.preDiveTime;
else
    maxTime = global.SuvPreDiveTime


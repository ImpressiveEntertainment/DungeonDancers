/// player_miss()

PlayerActive = false;
StepPerfection = BAD;	// Falta un script que controli la perfecció del nostre ritme de moviment
player_get_rythm(StepPerfection);
//float_message("Out of rythm!", -60, 0);
audio_play_sound(snd_BadMove,10,false);

//sprite_index = spr_PlayerInactive;

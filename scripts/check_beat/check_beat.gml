/// @desc Check the beat position

if(global.SONG_IS_PLAYING == true && global.ON_BEAT == true)
{
	if(BeatArray[global.BEAT_POSITION] == 1)
		event_user(OnBeatEvent);
}

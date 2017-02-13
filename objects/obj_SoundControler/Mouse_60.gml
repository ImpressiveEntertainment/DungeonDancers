/// @description PITCH UP

if(global.EDITION_MODE == false)
{
	CurrentSongPitch	+= 1 / 16;
	CurrentSongBPM		= CurrentSongPitch * global.SONG_BPM;
	CurrentSongBPS		= CurrentSongBPM / 60;
	CurrentBeatTime		= 1 / CurrentSongBPS;

	audio_sound_pitch(global.SONG_TO_PLAY, CurrentSongPitch);

	global.ACCURACY_MARGIN	= set_accuracy_margin(CurrentSongBPM);

	global.ELAPSED_TIME		+= abs(global.ELAPSED_TIME - global.CURRENT_BEAT_TIME);
}

/// @description BEAT PARSER

if(global.EDITION_MODE == false && global.ALL_AUDIO_GROUPS_LOADED == true)
{	
	if(global.SONG_IS_PLAYING == false)
	{	
		global.SONG_TO_PLAY	= audio_play_sound(global.SONG_TO_PLAY_ID, 1, 1);
		
		audio_sound_pitch(global.SONG_TO_PLAY, global.SONG_PITCH);
		audio_sound_gain(global.SONG_TO_PLAY, .5, 0);
		
		global.SONG_IS_PLAYING	= true;
	}
		
	global.SONG_POSITION	= audio_sound_get_track_position(global.SONG_TO_PLAY);
	global.ELAPSED_TIME		= global.SONG_POSITION + global.SONG_POSITION_ADJUST;
		
	if(global.ELAPSED_TIME >= global.NEXT_BEAT_TIME)
	{
		global.ON_BEAT = true;
		
		global.BEAT_POSITION++;
		
		if(global.BEAT_POSITION >= 16)
			global.BEAT_POSITION = 0;
		
		global.SONG_POSITION_ADJUST	= (frac(global.ELAPSED_TIME) - frac(global.NEXT_BEAT_TIME));
		global.CURRENT_BEAT_TIME	= global.NEXT_BEAT_TIME;
		global.NEXT_BEAT_TIME		+= global.BEAT_TIME;
	}
}

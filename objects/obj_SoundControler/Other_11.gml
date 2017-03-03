/// @description LAUNCH SONG

global.SONG_TO_PLAY	= audio_play_sound(global.SONG_TO_PLAY_ID, 1, 1);
		
audio_sound_pitch(global.SONG_TO_PLAY, global.SONG_PITCH);
		
global.SONG_IS_PLAYING	= true;
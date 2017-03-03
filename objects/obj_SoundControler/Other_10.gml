/// @description SET / RESET SETTINGS

//audio_stop_sound(global.SONG_TO_PLAY);
audio_stop_sync_group(sg);

// RESET SONG SETTINGS //
global.SONG_IS_PLAYING		= false;
global.SONG_PITCH			= 1;
global.SONG_BPM				= 120;
global.SONG_BPS				= global.SONG_BPM / 60;
global.SONG_POSITION		= 0;
global.SONG_POSITION_ADJUST	= 0;

// RESET BEAT SETTINGS //
global.ON_BEAT				= false;
global.NOTE_TYPE			= 16;
global.BEAT_TIME			= global.SONG_BPS / global.NOTE_TYPE;
global.CURRENT_BEAT_TIME	= 0;
global.NEXT_BEAT_TIME		= 0;
global.BEAT_POSITION		= 0;

// RESET GLOBAL SETTINGS //
global.ELAPSED_TIME			= 0;
global.ACCURACY_MARGIN		= set_accuracy_margin(global.SONG_BPM);

// SAFE VARS //
CurrentSongPitch			= global.SONG_PITCH;
CurrentSongBPM				= global.SONG_BPM;
CurrentSongBPS				= global.SONG_BPS;
CurrentBeatTime				= global.BEAT_TIME;

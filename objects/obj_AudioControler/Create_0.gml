/// @description AUDIO SETTINGS

// LOAD AUDIO GROUPS //
//global.ALL_AUDIO_GROUPS_LOADED = false;



AudioGroupsLoaded	= 0;
AudioGroupsToLoad	= load_audio_groups(AudioGroupWorld_1, SFX);

AudioSyncGroup		= audio_create_sync_group(true);

/*
// SET SONG SETTINGS //
global.SONG_TO_PLAY			= 0;

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
*/

/// @description AUDIO SETTINGS

// LOAD AUDIO GROUPS //
global.ALL_AUDIO_GROUPS_LOADED = false;

AudioGroupsLoaded = 0;
AudioGroupsToLoad = load_audio_groups(AudioGroupWorld_1, SFX);

sg = audio_create_sync_group(true);

// SET SONG SETTINGS //
global.SONG_TO_PLAY			= 0;
//global.SONG_TO_PLAY_ID		= Kick;

event_user(0);

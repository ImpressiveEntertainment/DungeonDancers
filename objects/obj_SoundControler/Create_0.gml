/// @description AUDIO SETTINGS

// LOAD AUDIO GROUPS //
global.ALL_AUDIO_GROUPS_LOADED = false;

AudioGroupsLoaded = 0;
AudioGroupsToLoad = load_audio_groups(Music_1);

// SET SONG SETTINGS //
global.SONG_TO_PLAY			= 0;
global.SONG_TO_PLAY_ID		= snd_BgMusic;

event_user(0);

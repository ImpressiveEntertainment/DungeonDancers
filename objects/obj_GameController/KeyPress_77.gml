/// @description Mute Master Volumen On/Off

if MasterVol = 1
	MasterVol = 0;
else
	MasterVol = 1;

audio_master_gain(MasterVol);
/// Music volume off
// You can write your code in this editor
if masterVol = 1
	masterVol = 0;
else
	masterVol = 1;

audio_master_gain(masterVol);

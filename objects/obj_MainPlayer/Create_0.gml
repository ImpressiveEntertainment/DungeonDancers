/// @description PLAYER SETTINGS

event_inherited();

BeatArray = [1, 0, 0, 0,
			 1, 0, 0, 0,
			 1, 0, 0, 0,
			 1, 0, 0, 0];

PlayerStepLenght = sprite_width;

RythmMax			= 100;					// Temps màxim en segons
Rythm				= 30;			// Temps a actualitzar

// Estats del Player (encara no s'utulitzen)
IDLE	= 0;
FEVER	= 1;
DEAD	= 2;

state = IDLE;

// tipus de passos
BAD			= 10;
GOOD		= 11;
NICE		= 11;
PERFECT		= 11;

StepPerfection = GOOD;

Facing = 1;
DisplacementY = -10;		// Apliquem un petit desplaçament vertical a l'sprite del Player per millorar la seva perpectiva en el joc

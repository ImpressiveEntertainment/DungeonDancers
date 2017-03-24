/// @description Init tracks

TracksMax[0] = 4;		// El número màxim de pistes que tenen les dungeons d'aquest món
TrackNum = 0;			// init del número de pistes que carregarem

// Carrega les pistes corresponents a cada món segons el número màxim de pistes
Track[global.world, 0] = "No track";
Track[global.world, 1] = "track #1";
Track[global.world, 2] = "track #2";
Track[global.world, 3] = "track #3";
Track[global.world, 4] = "track #4";

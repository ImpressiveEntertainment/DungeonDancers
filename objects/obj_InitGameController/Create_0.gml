/// @description INITS GAME APP
// Controlarà les inicialitzacions generals de l'aplicació tals com la resolució del joc

// --- Game resolution ---
// Llegirà un arxiu de config.ini general del joc

// --- LOAD game ----
// Quan hi hagi una acció de càrrega de partida, llegirà les dades de partida per inicialitzar-les
score = 0;
global.world = 0;		// Tipus de món en el que ens trobem. (més endavant els crearem. Ara estarà hardcodejat)

// --- Goto Game_4 ---
room_goto_next();
//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Main Game (Header).
// Author:		A.R.Cummings / RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _GAME_H
#define _GAME_H

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
extern const u16 Level1_Palette[256];			// Background palette data (shared 256 colours for all backgrounds).
extern const u16 Stand_Palette[256];			// Sprite palette data (shared 256 colours for all sprites).

/////////////////////////////////////////////////
// Global Functions
/////////////////////////////////////////////////
extern void InitGame(void);
extern void MainGame(void);
extern void InitPalettes(void);

#endif

//***************************************************************************************************
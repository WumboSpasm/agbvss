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

//---------------------------------------------------------------------------------------------------

// Chapter 2.

//--

// Level 1 & Sub-Levels.

extern const u16 level0101_Palette[256];		// Background palette data (shared 256 colours for all backgrounds).
extern const u16 level0102_Palette[256];
extern const u16 level0103_Palette[256];
extern const u16 level0104_Palette[256];
extern const u16 level0105_Palette[256];
extern const u16 level0106_Palette[256];
extern const u16 level0107_Palette[256];

//--

// Level 2 & Sub-Levels.

extern const u16 level0201_Palette[256];
extern const u16 level0202_Palette[256];
extern const u16 level0203_Palette[256];
extern const u16 level0204_Palette[256];
extern const u16 level0205_Palette[256];

//--

// Level 3 & Sub-Levels.

extern const u16 level0301_Palette[256];
extern const u16 level0302_Palette[256];
extern const u16 level0303_Palette[256];
extern const u16 level0304_Palette[256];

//--

// Level 4 & Sub-Levels.

extern const u16 level0401_Palette[256];
extern const u16 level0402_Palette[256];
extern const u16 level0403_Palette[256];
extern const u16 level0404_Palette[256];
extern const u16 level0405_Palette[256];

//---------------------------------------------------------------------------------------------------

extern const u16 Stand_Palette[256];			// Sprite palette data (shared 256 colours for all sprites).

/////////////////////////////////////////////////
// Global Functions
/////////////////////////////////////////////////

extern void InitGame(void);
extern void MainGame(void);
extern void InitPalettes(void);
extern void SB2MovingPlats(void);
extern u8 CheckCollision(u8 s,u8 sFineX,u8 sFineY,u8 c,u8 cFineX, u8 cFineY);

#endif

//***************************************************************************************************
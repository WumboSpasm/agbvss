//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Main Game (Header).
// Author:		A.R.Cummings / RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _GAME_H
#define _GAME_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////

#define MAXLEVELS 95*4							// Max levels in game.

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////

//---------------------------------------------------------------------------------------------------
// Chapter 1.
//--
// Level's 1-4 & Sub-Levels (sub-levels share same palette).

//extern const u16 CHAPTER01_LEVEL01_TILEPALETTE[256]; // Background palette data (shared 256 colours for all backgrounds).
//extern const u16 CHAPTER01_LEVEL02_TILEPALETTE[256];
//extern const u16 CHAPTER01_LEVEL03_TILEPALETTE[256];
//extern const u16 CHAPTER01_LEVEL04_TILEPALETTE[256];

//---------------------------------------------------------------------------------------------------
// Chapter 2.
//--
// Level's 1-4 & Sub-Levels (sub-levels share same palette).

extern const u16 CHAPTER02_LEVEL01_TILEPALETTE[256]; // Background palette data (shared 256 colours for all backgrounds).
extern const u16 CHAPTER02_LEVEL02_TILEPALETTE[256];
extern const u16 CHAPTER02_LEVEL03_TILEPALETTE[256];
extern const u16 CHAPTER02_LEVEL04_TILEPALETTE[256];

//---------------------------------------------------------------------------------------------------
// Chapter 3.
//--
// Level's 1-4 & Sub-Levels (sub-levels share same palette).

extern const u16 CHAPTER03_LEVEL01_TILEPALETTE[256];  // Background palette data (shared 256 colours for all backgrounds).
extern const u16 CHAPTER03_LEVEL02_TILEPALETTE[256];
extern const u16 CHAPTER03_LEVEL03_TILEPALETTE[256];
extern const u16 CHAPTER03_LEVEL04_TILEPALETTE[256];

//---------------------------------------------------------------------------------------------------
// Chapter 4.
//--
// Level's 1-4 & Sub-Levels (sub-levels share same palette).

extern const u16 CHAPTER04_LEVEL01_TILEPALETTE[256]; // Background palette data (shared 256 colours for all backgrounds).
extern const u16 CHAPTER04_LEVEL02_TILEPALETTE[256];
extern const u16 CHAPTER04_LEVEL03_TILEPALETTE[256];
extern const u16 CHAPTER04_LEVEL04_TILEPALETTE[256];

//---------------------------------------------------------------------------------------------------
// Chapter 5.
//--
// Level's 1-4 & Sub-Levels (sub-levels share same palette).

extern const u16 CHAPTER05_LEVEL01_TILEPALETTE[256]; // Background palette data (shared 256 colours for all backgrounds).
extern const u16 CHAPTER05_LEVEL02_TILEPALETTE[256];
extern const u16 CHAPTER05_LEVEL03_TILEPALETTE[256];
extern const u16 CHAPTER05_LEVEL04_TILEPALETTE[256];

//---------------------------------------------------------------------------------------------------
// Chapter 6.
//--
// Level's 1-4 & Sub-Levels (sub-levels share same palette).

extern const u16 CHAPTER06_LEVEL01_TILEPALETTE[256]; // Background palette data (shared 256 colours for all backgrounds).
//extern const u16 CHAPTER06_LEVEL02_TILEPALETTE[256];
extern const u16 CHAPTER06_LEVEL03_TILEPALETTE[256];
//extern const u16 CHAPTER06_LEVEL04_TILEPALETTE[256];

//---------------------------------------------------------------------------------------------------

extern const u16 Stand_Palette[256];			// Sprite palette data (shared 256 colours for all sprites).
extern const s32 ExitCoords[MAXLEVELS];

/////////////////////////////////////////////////
// Global Functions
/////////////////////////////////////////////////

extern void InitGame(void);
extern void MainGame(void);
extern void InitPalettes(void);

/////////////////////////////////////////////////
// Functions.
/////////////////////////////////////////////////

extern void CheckExit(void);

#endif

//***************************************************************************************************
//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Main System (Header).
// Author:		A.R.Cummings / RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _MAIN_H
#define _MAIN_H

/////////////////////////////////////////////////
//structs
/////////////////////////////////////////////////
typedef void (*IntrFuncp)(void);

enum
{
	NULL=-1,
	TITLE_SCREEN,
	IN_GAME,
};
typedef u16 GameState;

/////////////////////////////////////////////////
// Global Variables
/////////////////////////////////////////////////
extern GameState gGameState;
extern u16 gKeyInput;
extern u16 gKeyTap;
extern u32 gTimer;

/////////////////////////////////////////////////
// external functions
/////////////////////////////////////////////////
extern void intr_main(void);
extern void ClearAll(void);
extern void WaitVBlank(void);
extern void IntrDummy(void);
extern void ReadJoypad(void);

//***************************************************************************************************

#endif
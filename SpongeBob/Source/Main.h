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
typedef struct
{
	u8	mSFX_Volume;			// Global SFX Volume
	u8	mMusic_Volume;			// Global Music Volume
	u8  mController_Method;		// Controll Method 1 or 2
	u8  mGameWorld;				// Which Level World are we in?
	u8	mGameLevel;				// Which Sub-Level are we in?
	u8	mSpatulaCount;			// how many spatulas have we found?
	u8	mLives;					// how many lives left?
	u8	mContinues;				// how many continues?
}
GameData;



typedef void (*IntrFuncp)(void);

enum
{
	e_NULL=-1,
	e_LEGAL_SCREEN,
	e_TITLE_SCREEN,
	e_IN_GAME,
};
typedef u16 GameState;

/////////////////////////////////////////////////
// Global Variables
/////////////////////////////////////////////////
extern GameState gGameState;
extern u16 gKeyInput;
extern u16 gKeyTap;
extern u32 gTimer;
extern GameData gGameData;

/////////////////////////////////////////////////
// external functions
/////////////////////////////////////////////////
extern void intr_main(void);
extern void WaitVBlank(void);
extern void IntrDummy(void);
extern void ReadJoypad(void);

#endif

//***************************************************************************************************
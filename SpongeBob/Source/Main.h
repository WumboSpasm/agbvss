//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Main System (Header).
// Author:		A.R.Cummings / RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _MAIN_H
#define _MAIN_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////

// Level number definitions.

enum LEVEL
{

//--

	LEVEL020101=1,				// Chapter 2, Levels & Sub-Levels.
	LEVEL020102=2,
	LEVEL020103=3,
	LEVEL020104=4,
	LEVEL020105=5,
	LEVEL020106=6,
	LEVEL020107=7,

	LEVEL020201=8,
	LEVEL020202=9,
	LEVEL020203=10,
	LEVEL020204=11,
	LEVEL020205=12,

	LEVEL020301=13,
	LEVEL020302=14,
	LEVEL020303=15,
	LEVEL020304=16,

	LEVEL020401=17,
	LEVEL020402=18,
	LEVEL020403=19,
	LEVEL020404=20,
	LEVEL020405=21,

//--

};

/////////////////////////////////////////////////
// Structs.
/////////////////////////////////////////////////

typedef struct
{
	u8	mSFXVolume;								// Global SFX Volume.
	u8	mMusicVolume;							// Global Music Volume.
	u8  mControllerMethod;						// Controll Method 1 or 2.
}
GameParams;

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
// Global Variables.
/////////////////////////////////////////////////

extern GameState gGameState;
extern u16 gKeyInput;
extern u16 gKeyTap;
extern u32 gTimer;
extern GameParams gGameParams;

u8 Level;				 						// Game level.
u8 Spatualas;									// Spatualas found.
u8 Lives;										// SpongeBob lives.
u8 Continues;									// Player continues.


/////////////////////////////////////////////////
// External Functions.
/////////////////////////////////////////////////

extern void intr_main(void);
extern void WaitVBlank(void);
extern void IntrDummy(void);
extern void ReadJoypad(void);

#endif

//***************************************************************************************************
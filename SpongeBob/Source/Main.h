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

/*	LEVEL020101=?,				// Chapter 2, Levels & Sub-Levels.
	LEVEL020102=?,
	LEVEL020103=?,
	LEVEL020104=?,
	LEVEL020105=?,
	LEVEL020106=?,
	LEVEL020107=?,
	LEVEL020108=?,
	LEVEL020109=?,
	LEVEL020110=?,
	LEVEL020111=?,
	LEVEL020112=?,

	LEVEL020201=?,
	LEVEL020202=?,
	LEVEL020203=?,
	LEVEL020204=?,
	LEVEL020205=?,
	LEVEL020206=?,
	LEVEL020207=?,

	LEVEL020301=?,
	LEVEL020302=?,
	LEVEL020303=?,
	LEVEL020304=?,
	LEVEL020305=?,
	LEVEL020306=?,

	LEVEL020401=?,
	LEVEL020402=?,
	LEVEL020403=?,
	LEVEL020404=?,
	LEVEL020405=?,
	LEVEL020406=?,
	LEVEL020407=?,
*/

//--

	LEVEL030301=1,				// Chapter 3, Levels & Sub-Levels.
	LEVEL030302=2,
	LEVEL030303=3,
	LEVEL030304=4,
	LEVEL030305=5,
	LEVEL030306=6,

	LEVEL030401=7,
	LEVEL030402=8,
	LEVEL030403=9,
	LEVEL030404=10,
	LEVEL030405=11,
	LEVEL030406=12,

//--

	LEVEL040101=13,				// Chapter 4, Levels & Sub-Levels.
	LEVEL040102=14,
	LEVEL040103=15,
	LEVEL040104=16,

	LEVEL040201=17,
	LEVEL040202=18,
	LEVEL040203=19,
	LEVEL040204=20,
	LEVEL040205=21,

	LEVEL040301=22,
	LEVEL040302=23,
	LEVEL040303=24,
	LEVEL040304=25,
	LEVEL040305=26,
	LEVEL040306=27,

	LEVEL040401=28,
	LEVEL040402=29,
	LEVEL040403=30,
	LEVEL040404=31,
	LEVEL040405=32,
	LEVEL040406=33,
	LEVEL040407=34,

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
	e_HUB_SCREEN,
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
u8 gFade;
u8 gFadeLevel;

/////////////////////////////////////////////////
// External Functions.
/////////////////////////////////////////////////

extern void intr_main(void);
extern void WaitVBlank(void);
extern void IntrDummy(void);
extern void ReadJoypad(void);

#endif

//***************************************************************************************************
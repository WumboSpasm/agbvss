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
    	LEVELNULL=0,
//--

//	LEVEL010101,				// Chapter 1, Levels & Sub-Levels.
//	LEVEL010102,
//	LEVEL010103,
//	LEVEL010104,
//	LEVEL010105,
//
//	LEVEL010201,
//	LEVEL010202,
//	LEVEL010203,
//	LEVEL010204,
//	LEVEL010205,
//
//	LEVEL010301,
//	LEVEL010302,
//	LEVEL010303,
//	LEVEL010304,
//
//	LEVEL010401,
//	LEVEL010402,
//	LEVEL010403,
//	LEVEL010404,
//	LEVEL010405,

//--

	LEVEL020101,				// Chapter 2, Levels & Sub-Levels.
	LEVEL020102,
	LEVEL020103,
	LEVEL020104,
	LEVEL020105,
	LEVEL020106,
	LEVEL020107,

	LEVEL020201,
	LEVEL020202,
	LEVEL020203,
	LEVEL020204,

	LEVEL020301,
	LEVEL020302,
	LEVEL020303,
	LEVEL020304,
	LEVEL020305,
	LEVEL020306,

	LEVEL020401,
	LEVEL020402,
	LEVEL020403,
	LEVEL020404,
	LEVEL020405,

//--

	LEVEL030101,  				// Chapter 3, Levels & Sub-Levels.
	LEVEL030102,
	LEVEL030103,
	LEVEL030104,
	LEVEL030105,
	LEVEL030106,
	LEVEL030107,

	LEVEL030201,
	LEVEL030202,
	LEVEL030203,
	LEVEL030204,
	LEVEL030205,
	LEVEL030206,
	LEVEL030207,

	LEVEL030301,
	LEVEL030302,
	LEVEL030303,
	LEVEL030304,
	LEVEL030305,
	LEVEL030306,

	LEVEL030401,
	LEVEL030402,
	LEVEL030403,
	LEVEL030404,
	LEVEL030405,
	LEVEL030406,
	LEVEL030407,

//--

	LEVEL040101,				// Chapter 4, Levels & Sub-Levels.
	LEVEL040102,
	LEVEL040103,
	LEVEL040104,

	LEVEL040201,
	LEVEL040202,
	LEVEL040203,
	LEVEL040204,
	LEVEL040205,

	LEVEL040301,
	LEVEL040302,
	LEVEL040303,
	LEVEL040304,
	LEVEL040305,
	LEVEL040306,

	LEVEL040401,
	LEVEL040402,
	LEVEL040403,
	LEVEL040404,
	LEVEL040405,
	LEVEL040406,
	LEVEL040407,

//--

	LEVEL050101,				// Chapter 5, Levels & Sub-Levels.
	LEVEL050102,
	LEVEL050103,

	LEVEL050201, 
	LEVEL050202,
	LEVEL050203,
	LEVEL050204,

	LEVEL050301,
	LEVEL050302,
	LEVEL050303,
	LEVEL050304,
	LEVEL050305,

	LEVEL050401,
	LEVEL050402,
	LEVEL050403,
	LEVEL050404,
	LEVEL050405,
	LEVEL050406,
	LEVEL050407,
	LEVEL050408,

//--
	LEVEL060101,				// Chapter 6, Levels & Sub-Levels.
	LEVEL060102,

	LEVEL060201,
	LEVEL060202,

//	LEVEL060301,

//	LEVEL060401,
//	LEVEL060402,
//	LEVEL060403,
//	LEVEL060404,
	LEVELTERM,

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
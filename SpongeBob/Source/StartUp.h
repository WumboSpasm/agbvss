//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		StartUp (Header).	-> Intro screens when machine is first switched on..
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _STARTUP_H
#define _STARTUP_H

//enum up start up screen states
enum
{
	eCopyRight=1,
	eTHQLogo,
	eNickLogo,
	eClimaxLogo,
};

//functions
extern void InitStartUpScreens(void);
extern void MainStartUpScreens(void);

//data
extern const u16 Start_Copy_Palette[256];
extern const u8  Start_Copy_Character[8*8*107];
extern const u16 Start_Copy_Map[30*20];
extern const u8  Start_Climax_Character[8*8*43];
extern const u16 Start_Climax_Map[30*20];
extern const u8  Start_Nick_Character[8*8*79];
extern const u16 Start_Nick_Map[30*20];
extern const u8  Start_THQ_Character[8*8*76];
extern const u16 Start_THQ_Map[30*20];

extern u8 CurrentScreen;
extern u16 ScreenDelay;
extern u8 CanSkip;

#endif
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
extern u16 Start_Copy_RawBitmap[240*160];
extern u16 Start_THQ_RawBitmap[240*160];
extern u16 Start_Nick_RawBitmap[240*160];
extern u16 Start_Climax_RawBitmap[240*160];

#endif
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
	eCopyWrite = 1,
	eTHQLogo,
	eNickLogo,
	eClimaxLogo,
};

//functions
void InitStartUpScreens(void);
void MainStartUpScreens(void);


#endif
//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		StartUp (Source).<- startup Intro screens when machine is first switched on
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _STARTUP_C

// order of machine start up
//
// Machine switched on -> Copywrite Screen -> THQ Logo -> Nick Logo -> Climax Logo
//
// Then Title FMA
//
// Then Title Screen

#include "Includes.h"
#include "StartUp.h"
#include "Titles.h"

static u8 CurrentScreen;
static u16 ScreenDelay;
static u8 CanSkip;

static void UpdateGFX(void);
static void ChangeScreen(void);

void InitStartUpScreens(void)
{
	gTimer = 0;
	CurrentScreen = eCopyWrite;
	ScreenDelay = (5*60);
	CanSkip = FALSE;

	*(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;	//switch to BG mode 3


}

void MainStartUpScreens(void)
{
	WaitVBlank();
	ReadJoypad();
	UpdateGFX();
	gTimer++;
	if((gTimer==ScreenDelay)||(((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON))&&(CanSkip==TRUE)))
	{
		ChangeScreen();
	}
}

static void UpdateGFX(void)
{
}

static void ChangeScreen(void)
{
	switch(CurrentScreen)
	{
	case eCopyWrite:
		CurrentScreen=eTHQLogo;
		gTimer = 0;
		ScreenDelay = (5*60);
		CanSkip = FALSE;
		break;
	case eTHQLogo:
		CurrentScreen=eNickLogo;
		gTimer = 0;
		ScreenDelay = (5*60);
		CanSkip = FALSE;
		break;
	case eNickLogo:
		CurrentScreen=eClimaxLogo;
		gTimer = 0;
		ScreenDelay = (5*60);
		CanSkip = FALSE;
		break;
	case eClimaxLogo:
		gGameState = e_TITLE_SCREEN;
		InitTitles();
		break;
	default:
		break;
	}
}
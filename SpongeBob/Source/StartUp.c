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
#include "TitlesData.h"

static u8 CurrentScreen;
static u16 ScreenDelay;
static u8 CanSkip;

static void UpdateGFX(void);
static void ChangeScreen(void);

void InitStartUpScreens(void)
{
	gTimer = 0;
	CurrentScreen = eCopyRight;
	ScreenDelay = (5*60);
	CanSkip = FALSE;

	*(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;	//switch to BG mode 3

	LZ77UnCompVram(Start_Copy_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
}

void MainStartUpScreens(void)
{
	WaitVBlank();
	ReadJoypad();
	UpdateGFX();
	if((gTimer==ScreenDelay)||(((gKeyTap&A_BUTTON)||(gKeyTap&START_BUTTON))&&(CanSkip==TRUE)))	//yep this amount of brackets looks horrid but they are in the right place :o)
	{
		ChangeScreen();
	}
}

static void UpdateGFX(void)
{
	//might need to do somat in here later...maybe fade screen ?
}

static void ChangeScreen(void)
{
	switch(CurrentScreen)
	{
	case eCopyRight:
		CurrentScreen=eTHQLogo;
		gTimer = 0;
		ScreenDelay = (5*60);
		CanSkip = FALSE;
		LZ77UnCompVram(Start_THQ_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
		break;
	case eTHQLogo:
		CurrentScreen=eNickLogo;
		gTimer = 0;
		ScreenDelay = (5*60);
		CanSkip = FALSE;
		LZ77UnCompVram(Start_Nick_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
		break;
	case eNickLogo:
		CurrentScreen=eClimaxLogo;
		gTimer = 0;
		ScreenDelay = (5*60);
		CanSkip = FALSE;
		LZ77UnCompVram(Start_Climax_RawBitmap_LZ, (void*)BG_BITMAP0_VRAM);
		break;
	case eClimaxLogo:
		gGameState = e_TITLE_SCREEN;
		InitTitles();
		break;
	default:
		break;
	}
}
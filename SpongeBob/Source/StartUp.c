//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		StartUp (Source).<- startup Intro screens when machine is first switched on
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _STARTUP_C

// order of machine start up
//
// Machine switched on -> Copyright Screen -> THQ Logo -> Nick Logo -> Climax Logo
//
// Then Title FMA
//
// Then Title Screen

#include "Includes.h"
#include "StartUp.h"
#include "Titles.h"
#include "TitlesData.h"
#include "Text_Sys.h"
#include "Plap.h"

static u8 CurrentScreen;
static u16 ScreenDelay;
static u8 CanSkip;

static void ChangeScreen(void);

void InitStartUpScreens(void)
{                
	gTimer = 0;																	// reset timer
	CurrentScreen = eCopyRight;													// set currnet screen
	ScreenDelay = (5*60);														// how long to stay on this screen
	CanSkip = FALSE;															// can we skip before the end
        *(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_LCDC_OFF;

        DmaArrayCopy(3,Start_Copy_RawBitmap,BG_BITMAP0_VRAM,16);                 

	*(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;						// switch to BG mode 3
}

void MainStartUpScreens(void)
{
	WaitVBlank();
	ReadJoypad();
	if((gTimer==ScreenDelay)||(((gKeyTap&B_BUTTON)||(gKeyTap&START_BUTTON))&&(CanSkip==TRUE)))	//yep this amount of brackets looks horrid but they are in the right place :o)
	{
		ChangeScreen();
	}
}

static void ChangeScreen(void)
{
	// order of events
	// set next screen / reset timer / set delay timer / set skipable flag / decompress data into vram

	switch(CurrentScreen)
	{
       	case eCopyRight:
       		CurrentScreen=eTHQLogo;
       		gTimer = 0;
       		ScreenDelay = (5*60);
       		CanSkip = FALSE;
                *(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_LCDC_OFF;                                  // switch of LCDC so no annoying flick of screens
       		DmaArrayCopy(3,Start_THQ_RawBitmap,BG_BITMAP0_VRAM,16);                 
               	*(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;				// switch to BG mode 3
       		break;
       	case eTHQLogo:
       		CurrentScreen=eNickLogo;
       		gTimer = 0;
       		ScreenDelay = (5*60);
       		CanSkip = FALSE;
                *(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_LCDC_OFF;                                  // switch of LCDC so no annoying flick of screens
       		DmaArrayCopy(3,Start_Nick_RawBitmap,BG_BITMAP0_VRAM,16);                 
               	*(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;				// switch to BG mode 3
       		break;
       	case eNickLogo:
       		CurrentScreen=eClimaxLogo;
       		gTimer = 0;
       		ScreenDelay = (5*60);
       		CanSkip = FALSE;
                *(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_LCDC_OFF;                                  // switch of LCDC so no annoying flick of screens
       		DmaArrayCopy(3,Start_Climax_RawBitmap,BG_BITMAP0_VRAM,16);                 
               	*(vu16*)REG_DISPCNT = DISP_MODE_3 | DISP_OBJ_BG_ALL_ON;				// switch to BG mode 3
       		break;
       	case eClimaxLogo:
       		gGameState = e_TITLE_SCREEN;
       		InitTitles();
       		break;
       	default:
       		// ooops should not get here.....
       		break;
	}
}
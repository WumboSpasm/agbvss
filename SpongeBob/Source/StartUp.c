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
#include "Scroll_Engine.h"

static u8 CurrentScreen;
static u16 ScreenDelay;
static u8 CanSkip;

static void ChangeScreen(void);

void InitStartUpScreens(void)
{                
        int x,y;
        
	gTimer = 0;																	// reset timer
	CurrentScreen = eCopyRight;													// set currnet screen
	ScreenDelay = (5*60);														// how long to stay on this screen
	CanSkip = FALSE;															// can we skip before the end
        *(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_LCDC_OFF;

	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,28,TILE_BASE_1);

	DmaArrayCopy(3,menuback_Character,TILE_BASE_ADDR_1,16);         // Load level data.
	DmaArrayCopy(3,menuback_Palette,BG_PLTT,16);

	for (y=0;y<20;y++)
	{
		for (x=0;x<30;x++)
		{
			Bg3_ScreenDat[y*32+x]=menuback_Map[(y*30)+x];   // Back Ripely Layer
		}
	}                        

	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,16);
	
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_BG0_ON|DISP_OBJ_CHAR_1D_MAP;
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
       	        FadeOut();
       		CurrentScreen=eNickLogo;
       		FadeIn();
       		gTimer = 0;
       		ScreenDelay = (5*60);
       		CanSkip = FALSE;
       		break;
       	case eNickLogo:
       	        FadeOut();
       		CurrentScreen=eTHQLogo;
       		FadeIn();
       		gTimer = 0;
       		ScreenDelay = (5*60);
       		CanSkip = FALSE;
       		break;
       	case eTHQLogo:
       	        FadeOut();
       		CurrentScreen=eClimaxLogo;
       		FadeIn();
       		gTimer = 0;
       		ScreenDelay = (5*60);
       		CanSkip = FALSE;
       		break;
       	case eClimaxLogo:
       	        FadeOut();
       		gGameState = e_TITLE_SCREEN;
       		FadeIn();
       		InitTitles();
       		break;
       	default:
       		// ooops should not get here.....
       		break;
	}
}
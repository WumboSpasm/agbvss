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

u8 CurrentScreen;
u16 ScreenDelay;
u8 CanSkip;

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
	SetBgTextControl((vu16*)REG_BG1CNT,BG_PRIORITY_1,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,29,TILE_BASE_3);
	SetBgTextControl((vu16*)REG_BG2CNT,BG_PRIORITY_2,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,30,TILE_BASE_2);
	SetBgTextControl((vu16*)REG_BG3CNT,BG_PRIORITY_0,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,31,TILE_BASE_2);

	DmaArrayCopy(3,Start_Copy_Character,TILE_BASE_ADDR_1,16);         // Load level data.
	DmaArrayCopy(3,Start_Copy_Palette,BG_PLTT,16);

	for (y=0;y<20;y++)
	{
		for (x=0;x<30;x++)
		{
			Bg3_ScreenDat[y*32+x]=Start_Copy_Map[(y*30)+x];   // Back Ripely Layer
		}
	}                        

	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_CHAR_1D_MAP;
}

void MainStartUpScreens(void)
{
	WaitVBlank();
        switch(gFade)
        {             
        case 0:
        	ReadJoypad();
        	if((gTimer==ScreenDelay)||(((gKeyTap&B_BUTTON)||(gKeyTap&START_BUTTON))&&(CanSkip==TRUE)))	//yep this amount of brackets looks horrid but they are in the right place :o)
        	{
        		ChangeScreen();
        	}
                break;
        case 1:
                FadeOut(0);
                break;
        case 2:
                FadeIn();
                break;
        case 3:
                NextMenuSetUp();
                break;
        }
}

static void ChangeScreen(void)
{                         
	switch(CurrentScreen)
	{
       	case eCopyRight:
       	        gFade=1;
       		break;
       	case eNickLogo:
       	        gFade=1;
       		break;
       	case eTHQLogo:
       	        gFade=1;
       		break;
       	case eClimaxLogo:
       	        gFade=1;
       		break;
       	default:
       		// ooops should not get here.....
       		break;
	}
}
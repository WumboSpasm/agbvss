//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		StartUp (Source).<- startup Intro screens when machine is first switched on
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _STARTUP_C

// order of machine start up
//
// Machine switched on -> Copyright Screen -> Nick Logo -> THQ Logo -> Climax Logo
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
#include "Fade.h"

// icky globals
u8 	CurrentScreen;		// Which screen are we on?
u16 	ScreenDelay;		// how long should this screen be up ?
u8 	CanSkip;		// can we skip this screen ?

//----------------------------------------------------------------------------------------------------
// Initialise the Start Up sequence of screens
//----------------------------------------------------------------------------------------------------
void InitStartUpScreens(void)
{                
        int x,y;
        
	gTimer = 0;																	// reset timer
	CurrentScreen = eCopyRight;			// set currnet screen
	ScreenDelay = (5*60);				// how long to stay on this screen
	CanSkip = FALSE;				// can we skip before the end
        *(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_LCDC_OFF;	// set display to mode 0 and switch off lcd until init

	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,31,TILE_BASE_1);

	DmaArrayCopy(3,Start_Copy_Character,TILE_BASE_ADDR_1,16);       // Load level data.
	DmaArrayCopy(3,Start_Copy_Palette,BG_PLTT,16);			// load palette data

	for (y=0;y<20;y++)
	{
		for (x=0;x<30;x++)
		{
			Bg3_ScreenDat[y*32+x]=Start_Copy_Map[(y*30)+x];   // set up the back layer with the copyright screen
		}
	}                        

	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x1800,32);	// upload the map data
	
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_BG0_ON|DISP_OBJ_CHAR_1D_MAP;	
}

//-------------------------------------------------------------------------------------------------
// Main Start Up Loop
//-------------------------------------------------------------------------------------------------
void MainStartUpScreens(void)
{
	WaitVBlank();			// wait for vblank to occur

        switch(gFade)			// see what state of fade we are in
        {             
        case 0:				// not fading
        	ReadJoypad();
        	if((gTimer==ScreenDelay)||(((gKeyTap&B_BUTTON)||(gKeyTap&START_BUTTON))&&(CanSkip==TRUE)))	//yep this amount of brackets looks horrid but they are in the right place :o)
        	{
        		gFade=1;	// ok we need to move to next screen so start fading
        	}
                break;
        case 1:
                FadeOut(0);		// call fade out routine
                break;
        case 2:
                FadeIn();		// call fade back in routine
                break;
        case 3:
                NextMenuSetUp();	// initialise the next screen
                break;
        }
}
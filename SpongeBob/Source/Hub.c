//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Hub/Map Level Select System (Source)
// Author:		RCA Duff.
// (C) 200/1:	Climax.
//***************************************************************************************************

#define _TEXT_SYS_C

#include "Includes.h"
#include "Hub.h"
#include "Text_Sys.h"
#include "Scroll_Engine.h"
#include "SprEng_Control.h"
#include "SprEng_Display.h"
#include "Titles.h"

static void UpdateInput(void);					        // read input and update gamestate accordingly
static void UpdateGFX(void);					        // update Graphics


void InitHub(void)
{
        int x,y;
//-- temp        
	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_1,BG_COLOR_256,BG_MOS_OFF,28,TILE_BASE_1);
	SetBgTextControl((vu16*)REG_BG2CNT,BG_PRIORITY_2,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,30,TILE_BASE_2);
	SetBgTextControl((vu16*)REG_BG3CNT,BG_PRIORITY_0,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,31,TILE_BASE_2);

	DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x0000,32);
	DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x1000,32);
	DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x1800,32);
	
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_BG0_ON|DISP_BG1_ON|DISP_BG2_ON|DISP_BG3_ON|DISP_OBJ_ON|DISP_OBJ_CHAR_1D_MAP;
//-------------------

	//---reset game timer
	gTimer = 0;							// reset timer used to decide the random number bit


        *(vu16 *)REG_IE    = V_BLANK_INTR_FLAG;			// set Vblank interrupt enable flag // No HBlank Ripples
        *(vu16 *)REG_STAT  = STAT_V_BLANK_IF_ENABLE;

#ifdef MUSIC_ON                
        m4aSongNumStart(YOS_BGM_TITLE);//BGM Start
#endif    
	
}

void MainHub(void)
{
      	WaitVBlank();							// Wait 4 VBL.
        switch(gFade)
        {             
        case 0:
        	ReadJoypad();							// Read joypad.
        	UpdateInput();							// Take Key Input and work out what needs to be done from here
        	UpdateGFX();
		gFade = 1;                                                    
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

static void UpdateInput(void)
{

}

static void UpdateGFX(void)
{
	
}
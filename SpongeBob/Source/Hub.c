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
#include "TitlesData.h"

static void UpdateInput(void);					        // read input and update gamestate accordingly
static void UpdateGFX(void);					        // update Graphics

u16 mapxoffset;
u16 mapyoffset;



void InitHub(void)
{
//        int x,y;
//-- temp        
	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_1,BG_COLOR_256,BG_MOS_OFF,28,TILE_BASE_1);

	DmaArrayCopy(3,HubMap_Character,TILE_BASE_ADDR_1,16); // Load 'Speech Bubble' tile data.
	DmaArrayCopy(3,HubMap_Map,MAP_BASE_ADDR+0x0000,32);
	
	DmaArrayCopy(3,HubMap_Palette,BG_PLTT,16);
	
	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_BG0_ON|DISP_OBJ_ON|DISP_OBJ_CHAR_1D_MAP;
//-------------------

	//---reset game timer
	gTimer = 0;							// reset timer used to decide the random number bit

	mapxoffset=0;
	mapyoffset=0;


        *(vu16 *)REG_IE    = V_BLANK_INTR_FLAG;			// set Vblank interrupt enable flag // No HBlank Ripples
        *(vu16 *)REG_STAT  = STAT_V_BLANK_IF_ENABLE;
	*(vu16 *)REG_BG0HOFS = mapxoffset; // Update all fine scroll offset regs. (compute parallax scroll ratios too !).
	*(vu16 *)REG_BG0VOFS = mapyoffset;

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
                break;
        case 1:
                FadeOut(1);
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
	if(gKeyTap&A_BUTTON||gKeyTap&START_BUTTON)
	{
		gFade=1;
	}
	if(gKeyInput&R_KEY&&mapxoffset<((64-30)*8))
	{
		mapxoffset++;
	}
	if(gKeyInput&L_KEY&&mapxoffset>0)
	{
		mapxoffset--;
	}
	if(gKeyInput&D_KEY&&mapyoffset<((32-20)*8))
	{
		mapyoffset++;
	}
	if(gKeyInput&U_KEY&&mapyoffset>0)
	{
		mapyoffset--;
	}
	
}

static void UpdateGFX(void)
{
	*(vu16*)REG_BG0HOFS=mapxoffset; // Update all fine scroll offset regs. (compute parallax scroll ratios too !).
	*(vu16*)REG_BG0VOFS=mapyoffset;
}
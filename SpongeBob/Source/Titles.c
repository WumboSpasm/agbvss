//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Titles (Source).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#include "Includes.h"
#include "Titles.h"
#include "TitlesData.h"
#include "Scroll_Engine.h"

//////////////////////////////////////
// read input and update accordingly
//////////////////////////////////////
void UpdateInput(void)
{
	switch(gGameState)
	{
	case e_TITLE_SCREEN:
		if(gKeyTap&A_BUTTON){InitGame();gGameState=e_IN_GAME;};
		break;
	};
}

void InitTitles(void)
{
	InitTitlesBack();							// Iitialise back screen
}

void MainTitles(void)
{
	WaitVBlank();								// Wait 4 VBL.
	ReadJoypad();								// Read joypad.
//	UpdateInput();
}

void InitTitlesBack(void)
{
	// Very Back
	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,28,CHAR_BASE_0);
	// Middle layer.
	SetBgTextControl((vu16*)REG_BG1CNT,BG_PRIORITY_2,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,29,CHAR_BASE_3);

	//set up Pallette
       	DmaArrayCopy(3,TitlesLayer0_Palette,BG_PLTT,16);				// Set tile data for bg2 action layer.

	// DMA Title Screen Graphics into VRAM
	DmaArrayCopy(3,TitlesLayer0_Character,CHAR_BASE0_ADDR,16);	// Set tile data for bg0 rear layer.
	DmaArrayCopy(3,TitlesLayer1_Character,CHAR_BASE3_ADDR,16);	// Set tile data for bg1 rear middle layer.

	InitLayers();							// update all layers

	// update all layers
	DmaArrayCopy(3,TBg0_ScreenDat,CHAR_BASE3_ADDR+0x2000,16);
	DmaArrayCopy(3,TBg1_ScreenDat,CHAR_BASE3_ADDR+0x2800,16);

	*(vu16*)REG_BG0HOFS=0;			// all at zero for now (could scroll later)
	*(vu16*)REG_BG0VOFS=0;
	*(vu16*)REG_BG1HOFS=0;
	*(vu16*)REG_BG1VOFS=0;

	*(vu16*)REG_DISPCNT=DISP_MODE_0|DISP_BG0_ON|DISP_BG1_ON;	// set which layers to display


}

void InitLayers(void)
{
	u8 x,y;
	for (y=0;y<32;y++)
	{
		for (x=0;x<32;x++)
		{
			TBg0_ScreenDat[y*32+x]=TitlesLayer0_Map[(y*256>>3)+x]; // Update screen map buffer with tile name data.
			TBg1_ScreenDat[y*32+x]=TitlesLayer1_Map[(y*256>>3)+x]; // Update screen map buffer with tile name data.
		}
	}
}

//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Scroll Engine (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.

// Notes:	The middle layer background map should be half the x & y dimensions of the front
//			'action layer' map, plus one half a screen width more in the x-axis. This is required
//			to visually display the map correctly at it's limits.

//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "Scroll_Engine.h"
#include "Text_Sys.h"

/////////////////////////////////////////////////
// Function Definitions.
/////////////////////////////////////////////////

//static void InitFront();
static void InitRear();

//***************************************************************************************************

// Initialise the scroll engine.

void InitScroll()
{

//--

// Set maps and tiles to use for current level.

	switch(Level) 						 	// Get level.
	{

//---------------------------------------------------------------------------------------------------

// Chapter 2.

//--

// Level 1 & Sub-Level.

		case LEVEL020101:
			pBack_Map		 =level0101_Back_Map;		  	// Load pointer to base of back map to use.
			pMid_Map		 =level0101_Mid_Map;	   	  	// Load pointer to base of level mid map to use.
			pAction_MapWidth =level0101_Action_MapWidth; 	// Action map 'width' to use.
			pAction_MapHeight=level0101_Action_MapHeight;	// Action map 'height' to use.
			pAction_Map		 =level0101_Action_Map;	 	 	// Load pointer to base of action map to use.
			pCollision_Map	 =level0101_Collision_Map;	  	// Load pointer to base of collision map to use.
			pTiles			 =level0101_Tiles;		   	  	// Load pointer to base of tiles to use.
			break;
		case LEVEL020102:									// Etc.
			pBack_Map		 =level0102_Back_Map;
			pMid_Map		 =level0102_Mid_Map;
			pAction_MapWidth =level0102_Action_MapWidth;
			pAction_MapHeight=level0102_Action_MapHeight;
			pAction_Map		 =level0102_Action_Map;
			pCollision_Map	 =level0102_Collision_Map;
			pTiles			 =level0102_Tiles;
			break;
		case LEVEL020103:
			pBack_Map		 =level0103_Back_Map;
			pMid_Map		 =level0103_Mid_Map;
			pAction_MapWidth =level0103_Action_MapWidth;
			pAction_MapHeight=level0103_Action_MapHeight;
			pAction_Map		 =level0103_Action_Map;
			pCollision_Map	 =level0103_Collision_Map;
			pTiles			 =level0103_Tiles;
			break;
		case LEVEL020104:
			pBack_Map		 =level0104_Back_Map;
			pMid_Map		 =level0104_Mid_Map;
			pAction_MapWidth =level0104_Action_MapWidth;
			pAction_MapHeight=level0104_Action_MapHeight;
			pAction_Map		 =level0104_Action_Map;
			pCollision_Map	 =level0104_Collision_Map;
			pTiles			 =level0104_Tiles;
			break;
		case LEVEL020105:
			pBack_Map		 =level0105_Back_Map;
			pMid_Map		 =level0105_Mid_Map;
			pAction_MapWidth =level0105_Action_MapWidth;
			pAction_MapHeight=level0105_Action_MapHeight;
			pAction_Map		 =level0105_Action_Map;
			pCollision_Map	 =level0105_Collision_Map;
			pTiles			 =level0105_Tiles;
			break;
		case LEVEL020106:
			pBack_Map		 =level0106_Back_Map;
			pMid_Map		 =level0106_Mid_Map;
			pAction_MapWidth =level0106_Action_MapWidth;
			pAction_MapHeight=level0106_Action_MapHeight;
			pAction_Map		 =level0106_Action_Map;
			pCollision_Map	 =level0106_Collision_Map;
			pTiles			 =level0106_Tiles;
			break;
		case LEVEL020107:
			pBack_Map		 =level0107_Back_Map;
			pMid_Map		 =level0107_Mid_Map;
			pAction_MapWidth =level0107_Action_MapWidth;
			pAction_MapHeight=level0107_Action_MapHeight;
			pAction_Map		 =level0107_Action_Map;
			pCollision_Map	 =level0107_Collision_Map;
			pTiles			 =level0107_Tiles;
			break;

//--

// Level 2 & Sub-Level.

		case LEVEL020201:
			pBack_Map		 =level0201_Back_Map;
			pMid_Map		 =level0201_Mid_Map;
			pAction_MapWidth =level0201_Action_MapWidth;
			pAction_MapHeight=level0201_Action_MapHeight;
			pAction_Map		 =level0201_Action_Map;
			pCollision_Map	 =level0201_Collision_Map;
			pTiles			 =level0201_Tiles;
			break;
		case LEVEL020202:
			pBack_Map		 =level0202_Back_Map;
			pMid_Map		 =level0202_Mid_Map;
			pAction_MapWidth =level0202_Action_MapWidth;
			pAction_MapHeight=level0202_Action_MapHeight;
			pAction_Map		 =level0202_Action_Map;
			pCollision_Map	 =level0202_Collision_Map;
			pTiles			 =level0202_Tiles;
			break;
		case LEVEL020203:
			pBack_Map		 =level0203_Back_Map;
			pMid_Map		 =level0203_Mid_Map;
			pAction_MapWidth =level0203_Action_MapWidth;
			pAction_MapHeight=level0203_Action_MapHeight;
			pAction_Map		 =level0203_Action_Map;
			pCollision_Map	 =level0203_Collision_Map;
			pTiles			 =level0203_Tiles;
			break;
		case LEVEL020204:
			pBack_Map		 =level0204_Back_Map;
			pMid_Map		 =level0204_Mid_Map;
			pAction_MapWidth =level0204_Action_MapWidth;
			pAction_MapHeight=level0204_Action_MapHeight;
			pAction_Map		 =level0204_Action_Map;
			pCollision_Map	 =level0204_Collision_Map;
			pTiles			 =level0204_Tiles;
			break;
		case LEVEL020205:
			pBack_Map		 =level0205_Back_Map;
			pMid_Map		 =level0205_Mid_Map;
			pAction_MapWidth =level0205_Action_MapWidth;
			pAction_MapHeight=level0205_Action_MapHeight;
			pAction_Map		 =level0205_Action_Map;
			pCollision_Map	 =level0205_Collision_Map;
			pTiles			 =level0205_Tiles;
			break;

//--

// Level 3 & Sub-Level.

		case LEVEL020301:
			pBack_Map		 =level0301_Back_Map;
			pMid_Map		 =level0301_Mid_Map;
			pAction_MapWidth =level0301_Action_MapWidth;
			pAction_MapHeight=level0301_Action_MapHeight;
			pAction_Map		 =level0301_Action_Map;
			pCollision_Map	 =level0301_Collision_Map;
			pTiles			 =level0301_Tiles;
			break;
		case LEVEL020302:
			pBack_Map		 =level0302_Back_Map;
			pMid_Map		 =level0302_Mid_Map;
			pAction_MapWidth =level0302_Action_MapWidth;
			pAction_MapHeight=level0302_Action_MapHeight;
			pAction_Map		 =level0302_Action_Map;
			pCollision_Map	 =level0302_Collision_Map;
			pTiles			 =level0302_Tiles;
			break;
		case LEVEL020303:
			pBack_Map		 =level0303_Back_Map;
			pMid_Map		 =level0303_Mid_Map;
			pAction_MapWidth =level0303_Action_MapWidth;
			pAction_MapHeight=level0303_Action_MapHeight;
			pAction_Map		 =level0303_Action_Map;
			pCollision_Map	 =level0303_Collision_Map;
			pTiles			 =level0303_Tiles;
			break;
		case LEVEL020304:
			pBack_Map		 =level0304_Back_Map;
			pMid_Map		 =level0304_Mid_Map;
			pAction_MapWidth =level0304_Action_MapWidth;
			pAction_MapHeight=level0304_Action_MapHeight;
			pAction_Map		 =level0304_Action_Map;
			pCollision_Map	 =level0304_Collision_Map;
			pTiles			 =level0304_Tiles;
			break;

//--

// Level 4 & Sub-Level.

		case LEVEL020401:
			pBack_Map		 =level0401_Back_Map;
			pMid_Map		 =level0401_Mid_Map;
			pAction_MapWidth =level0401_Action_MapWidth;
			pAction_MapHeight=level0401_Action_MapHeight;
			pAction_Map		 =level0401_Action_Map;
			pCollision_Map	 =level0401_Collision_Map;
			pTiles			 =level0401_Tiles;
			break;
		case LEVEL020402:
			pBack_Map		 =level0402_Back_Map;
			pMid_Map		 =level0402_Mid_Map;
			pAction_MapWidth =level0402_Action_MapWidth;
			pAction_MapHeight=level0402_Action_MapHeight;
			pAction_Map		 =level0402_Action_Map;
			pCollision_Map	 =level0402_Collision_Map;
			pTiles			 =level0402_Tiles;
			break;
		case LEVEL020403:
			pBack_Map		 =level0403_Back_Map;
			pMid_Map		 =level0403_Mid_Map;
			pAction_MapWidth =level0403_Action_MapWidth;
			pAction_MapHeight=level0403_Action_MapHeight;
			pAction_Map		 =level0403_Action_Map;
			pCollision_Map	 =level0403_Collision_Map;
			pTiles			 =level0403_Tiles;
			break;
		case LEVEL020404:
			pBack_Map		 =level0404_Back_Map;
			pMid_Map		 =level0404_Mid_Map;
			pAction_MapWidth =level0404_Action_MapWidth;
			pAction_MapHeight=level0404_Action_MapHeight;
			pAction_Map		 =level0404_Action_Map;
			pCollision_Map	 =level0404_Collision_Map;
			pTiles			 =level0404_Tiles;
			break;
		case LEVEL020405:
			pBack_Map		 =level0405_Back_Map;
			pMid_Map		 =level0405_Mid_Map;
			pAction_MapWidth =level0405_Action_MapWidth;
			pAction_MapHeight=level0405_Action_MapHeight;
			pAction_Map		 =level0405_Action_Map;
			pCollision_Map	 =level0405_Collision_Map;
			pTiles			 =level0405_Tiles;
			break;

//---------------------------------------------------------------------------------------------------

	};

//--

	map_x_size_tiles=pAction_MapWidth;		// Get size of map in 8x8's from level map data.
	map_y_size_tiles=pAction_MapHeight;

	map_x_size_pixels=map_x_size_tiles<<3;	// Convert map size to pixel dimensions.
	map_y_size_pixels=map_y_size_tiles<<3;

	map_xpos=0;								// Init. start position in map (32 bit x, y coords).
	map_ypos=0;

	// Rear layer.
	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,28,TILE_BASE_1);
	// Middle layer.
	SetBgTextControl((vu16*)REG_BG1CNT,BG_PRIORITY_2,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,29,TILE_BASE_1);
	// Action layer.
	SetBgTextControl((vu16*)REG_BG2CNT,BG_PRIORITY_1,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,30,TILE_BASE_1);
	// Front layer.
	SetBgTextControl((vu16*)REG_BG3CNT,BG_PRIORITY_0,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,31,TILE_BASE_2);

	DmaCopy(3,pTiles,TILE_BASE_ADDR_1,TILE_BANK_SIZE_1,16); // Load level tile data.

	DmaArrayCopy(3,libFontGame_Char,TILE_BASE_ADDR_2,16); // Load 'Speech Bubble' tile data.

	InitRear();
	
	ClearTextLayer();
	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);

	DmaArrayCopy(3,Bg3_ScreenDat,MAP_BASE_ADDR+0x0000,16);

	UpdateScroll();						 	// Update scroll with current map position.

	DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x0800,16);
	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16);
}

//***************************************************************************************************

// Set background control register.

void SetBgTextControl(vu16 *reg,u16 priority,u16 screen_size,u16 color_mode,u16 mosaic,u16 screenblock,u16 char_base)
{
	*reg=priority|screen_size|color_mode|mosaic|screenblock<<BG_SCREEN_BASE_SHIFT|char_base<<BG_CHAR_BASE_SHIFT;
}

//---------------------------------------------------------------------------------------------------

// Set background rotation control register.

/*void SetBgRotationControl(vu16 *reg,u16 priority,u16 screen_size,u16 color_mode,u16 mosaic,u16 screenblock,u16 char_base,u16 area_over)
{
	*reg=priority|screen_size|color_mode|mosaic|screenblock<<BG_SCREEN_BASE_SHIFT|char_base<<BG_CHAR_BASE_SHIFT|area_over;
}*/

//---------------------------------------------------------------------------------------------------

// Set display control register.

void SetDispControl(vu16* reg,u16 bgMode,u16 obj_window,u16 window0,u16 window1,u16 obj,u16 bg0,u16 bg1,u16 bg2,u16 bg3,u16 blank,u16 format,u16 hblank,u16 frame)
{
	*reg=obj_window|window0|window1|obj|bg3|bg2|bg1|bg0|blank|format|hblank|frame|bgMode;
}

//***************************************************************************************************

// Initialise the 'bg0' front layer map.

/*static void InitFront()
{
	u8 x,y;

	for (y=0;y<32;y++)
	{
		for (x=0;x<32;x++)
		{
			Bg0_ScreenDat[y*32+x]=pSpare_Map[(y*256>>3)+x]; // Update screen map buffer with tile name data.
		}
	}
}*/

//***************************************************************************************************

// Initialise the 'bg3' rear layer map.

static void InitRear()
{
	u8 x,y;

	for (y=0;y<32;y++)
	{
		for (x=0;x<32;x++)
		{
			Bg3_ScreenDat[y*32+x]=pBack_Map[(y*256>>3)+x]; // Update screen map buffer with tile name data.
		}
	}
}

//***************************************************************************************************

// Update 31x21 (8x8) 'bg1' vram screen map buffer (LEGO ALPHA TEAM GBC / PERFECT DARK GBC Styleee :).

void UpdateScroll()
{
	u8 x,y;				   			// Local temp. variables.

//--

// Do the DMA & scroll register updates first - right @ the start of the VBL period !!!.

	DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x0800,16); // DMA copy 'bg2' buffer to vram.
	DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16); // DMA copy 'bg1' buffer to vram.

	*(vu16*)REG_BG0HOFS=map_xpos>>2; // Update all fine scroll offset regs. (compute parallax scroll ratios too !).
	*(vu16*)REG_BG0VOFS=map_ypos>>3;
	*(vu16*)REG_BG1HOFS=x_shift1;
	*(vu16*)REG_BG1VOFS=y_shift1;
	*(vu16*)REG_BG2HOFS=x_shift2;
	*(vu16*)REG_BG2VOFS=y_shift2;
//	*(vu16*)REG_BG3HOFS=0;			// 'Speech Bubble' layer use only.
//	*(vu16*)REG_BG3VOFS=0;

//--

	x_tilepos1=(map_xpos>>1)>>3;	// Get map x coord and divide by '8' to get 8*8 tile rez and store it.
	x_shift1=(map_xpos>>1)&0x0007;	// Isolate amount of x fine shift and store it.
	y_tilepos1=(map_ypos>>2)>>3;	// Get map y coord and divide by '8' to get 8*8 tile rez and store it.
	y_shift1=(map_ypos>>2)&0x0007;	// Isolate amount of y fine shift and store it.

	x_tilepos2=map_xpos>>3;			// Get map x coord and divide by '8' to get 8*8 tile rez and store it.
	x_shift2=map_xpos&0x0007;		// Isolate amount of x fine shift and store it.
	y_tilepos2=map_ypos>>3;			// Get map y coord and divide by '8' to get 8*8 tile rez and store it.
	y_shift2=map_ypos&0x0007;		// Isolate amount of y fine shift and store it.

	for (y=0;y<21;y++) 				// Y size of bg1 screen buffer in 8x8 tiles.
	{
		for (x=0;x<31;x++)			// X size of bg1 screen buffer in 8x8 tiles.
		{
			Bg2_ScreenDat[y*32+x]=pMid_Map[((y_tilepos1+y)*((map_x_size_tiles+(LCD_WIDTH>>3)+2)>>1))+x_tilepos1+x]; // Update screen map buffer with tile name data.
		}
	}

	for (y=0;y<21;y++) 				// Y size of bg2 screen buffer in 8x8 tiles.
	{
		for (x=0;x<31;x++)			// X size of bg2 screen buffer in 8x8 tiles.
		{
			Bg1_ScreenDat[y*32+x]=pAction_Map[((y_tilepos2+y)*map_x_size_tiles)+x_tilepos2+x]; // Update screen map buffer with tile name data.
		}
	}

}

//***************************************************************************************************

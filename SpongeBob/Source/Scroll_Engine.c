//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Scroll Engine (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.

// Notes:	1) The middle layer background map should always be exactly half the x & y dimensions of the
//			front map, for the scroll display and scroll limits to work correctly.

//			2) Even tho the middle layer map is still much larger than the screen, this 'half size' middle
//			layer, should graphically; be able to 'wrap' end to end in the x-axis due to scroll overspill
//			in the x-axis by half a screen width !!!.

//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"

//***************************************************************************************************

// Initialise the scroll engine.

void InitScroll()
{
	map_x_size_tiles=300;	// Get size of map in 8x8's (this will be set from map header data in future !).
	map_y_size_tiles=64;

	map_x_size_pixels=map_x_size_tiles<<3;	// Convert map size to pixel dimensions.
	map_y_size_pixels=map_y_size_tiles<<3;

	map_xpos=0;								// Start position in map (32 bit x, y coords).
	map_ypos=map_y_size_pixels-LCD_HEIGHT;	// @ bottom of map !.

	// Rear layer.
	SetBgTextControl((vu16*)REG_BG0CNT,BG_PRIORITY_3,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,28,CHAR_BASE_0);
	// Middle layer.
	SetBgTextControl((vu16*)REG_BG1CNT,BG_PRIORITY_2,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,29,CHAR_BASE_1);
	// Action layer.
	SetBgTextControl((vu16*)REG_BG2CNT,BG_PRIORITY_1,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,30,CHAR_BASE_2);
	// Front layer.
	SetBgTextControl((vu16*)REG_BG3CNT,BG_PRIORITY_0,BG_SCREEN_SIZE_0,BG_COLOR_256,BG_MOS_OFF,31,CHAR_BASE_1);

	DmaArrayCopy(3,Lev1bg3_Character,CHAR_BASE0_ADDR,16);	// Set tile data for bg0 rear layer.
	InitRear();
	DmaArrayCopy(3,Bg3_ScreenDat,CHAR_BASE3_ADDR+0x2000,16);

	DmaArrayCopy(3,Lev1bg2_Character,CHAR_BASE1_ADDR,16);	// Set tile data for bg1 middle & bg2 action layers.
	DmaArrayCopy(3,Lev1bg1_Character,CHAR_BASE2_ADDR,16);
	UpdateScroll();											// Update scroll with current map position.
	DmaArrayCopy(3,Bg2_ScreenDat,CHAR_BASE3_ADDR+0x2800,16);
	DmaArrayCopy(3,Bg1_ScreenDat,CHAR_BASE3_ADDR+0x3000,16);

//	DmaArrayCopy(3,Lev1bg0_Character,CHAR_BASE1_ADDR,16);	// Set tile data for bg3 front layer.
//	InitFront();
//	DmaArrayCopy(3,Bg2_ScreenDat,CHAR_BASE3_ADDR+0x3800,16);
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

void InitFront()
{
/*	u8 x,y;
	for (y=0;y<32;y++)
	{
		for (x=0;x<32;x++)
		{
			Bg0_ScreenDat[y*32+x]=Lev1bg0_Map[(y*256>>3)+x]; // Update screen map buffer with tile name data.
		}
	}
*/
}

//***************************************************************************************************

// Initialise the 'bg3' rear layer map.

void InitRear()
{
	u8 x,y;
	for (y=0;y<32;y++)
	{
		for (x=0;x<32;x++)
		{
			Bg3_ScreenDat[y*32+x]=Lev1bg3_Map[(y*256>>3)+x]; // Update screen map buffer with tile name data.
		}
	}
}

//***************************************************************************************************

// Update 31x21 (8x8) 'bg1' vram screen map buffer (LEGO ALPHA TEAM GBC / PERFECT DARK GBC Styleee :).

void UpdateScroll()
{
	u8 x,y;				   		// Local temp. variables.

	u8 scroll_speed=2;			// Temp. scroll speed test variable.

//--

// Do the DMA & scroll register updates first - right @ the start of the VBL period !!!.

	DmaArrayCopy(3,Bg2_ScreenDat,CHAR_BASE3_ADDR+0x2800,16); // DMA copy 'bg1' buffer to vram.
	DmaArrayCopy(3,Bg1_ScreenDat,CHAR_BASE3_ADDR+0x3000,16); // DMA copy 'bg2' buffer to vram.

	*(vu16*)REG_BG0HOFS=map_xpos>>2;// Update all fine scroll offset regs. (compute parallax scroll ratios too !).
	*(vu16*)REG_BG0VOFS=map_ypos>>3;
	*(vu16*)REG_BG1HOFS=x_shift1;
	*(vu16*)REG_BG1VOFS=y_shift1;
	*(vu16*)REG_BG2HOFS=x_shift2;
	*(vu16*)REG_BG2VOFS=y_shift2;
	*(vu16*)REG_BG3HOFS=map_xpos<<1;
	*(vu16*)REG_BG3VOFS=0;			// Currently fixed value !.

//--

	x_tilepos1=(map_xpos>>1)>>3;	 // Get map x coord and divide by '8' to get 8*8 tile rez and store it.
	x_shift1=(map_xpos>>1)&0x0007;// Isolate amount of x fine shift and store it.
	y_tilepos1=(map_ypos>>2)>>3;	 // Get map y coord and divide by '8' to get 8*8 tile rez and store it.
	y_shift1=(map_ypos>>2)&0x0007;// Isolate amount of y fine shift and store it.

	x_tilepos2=map_xpos>>3;		// Get map x coord and divide by '8' to get 8*8 tile rez and store it.
	x_shift2=map_xpos&0x0007;	// Isolate amount of x fine shift and store it.
	y_tilepos2=map_ypos>>3;		// Get map y coord and divide by '8' to get 8*8 tile rez and store it.
	y_shift2=map_ypos&0x0007;	// Isolate amount of y fine shift and store it.

	for (y=0;y<21;y++) 			// Y size of bg1 screen buffer in 8x8 tiles.
	{
		for (x=0;x<31;x++)		// X size of bg1 screen buffer in 8x8 tiles.
		{
			Bg2_ScreenDat[y*32+x]=Lev1bg2_Map[((y_tilepos1+y)*(map_x_size_tiles>>1))+x_tilepos1+x]; // Update screen map buffer with tile name data.
		}
	}

	for (y=0;y<21;y++) 			// Y size of bg2 screen buffer in 8x8 tiles.
	{
		for (x=0;x<31;x++)		// X size of bg2 screen buffer in 8x8 tiles.
		{
			Bg1_ScreenDat[y*32+x]=Lev1bg1_Map[((y_tilepos2+y)*map_x_size_tiles)+x_tilepos2+x]; // Update screen map buffer with tile name data.
		}
	}

//--

//	Scroll around map with limits test.

	if (gKeyInput&U_KEY&&map_ypos>0) {map_ypos-=scroll_speed;}
	if (gKeyInput&D_KEY&&map_ypos<map_y_size_pixels-LCD_HEIGHT) {map_ypos+=scroll_speed;}
	if (gKeyInput&L_KEY&&map_xpos>0) {map_xpos-=scroll_speed;}
	if (gKeyInput&R_KEY&&map_xpos<map_x_size_pixels-LCD_WIDTH) {map_xpos+=scroll_speed;}

//--

}

//***************************************************************************************************

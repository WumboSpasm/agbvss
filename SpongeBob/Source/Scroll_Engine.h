//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Scroll Engine (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SCROLL_ENGINE_H
#define _SCROLL_ENGINE_H

/////////////////////////////////////////////////
// Defines.
/////////////////////////////////////////////////
#define CHAR_BASE0_ADDR	VRAM+0x0000	// VRAM tile base address's.
#define CHAR_BASE1_ADDR	VRAM+0x4000
#define CHAR_BASE2_ADDR	VRAM+0x8000
#define CHAR_BASE3_ADDR	VRAM+0xc000
#define CHAR_BASE_0	0
#define CHAR_BASE_1	1
#define CHAR_BASE_2	2
#define CHAR_BASE_3	3

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////
extern void InitScroll();
extern void UpdateScroll();

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////
// Bg3 rear layer data.
extern u8 Lev1bg3_Character[8*8*255];	// No. of 8x8 tiles.
extern u16 Lev1bg3_Map[256*32];			// Size of map in ROM.
u16 Bg3_ScreenDat[32*32];				// Size of screen in VRAM.

// Bg2 middle layer data.
extern u8 Lev1bg2_Character[8*8*255];	// Etc.
extern u16 Lev1bg2_Map[(240*5)*32];
u16 Bg2_ScreenDat[32*21];

// Bg1 action layer data.
extern u8 Lev1bg1_Character[8*8*255];
extern u16 Lev1bg1_Map[(240*10)*64];
u16 Bg1_ScreenDat[32*21];				// This buffer is dynamically updated later !.

void SetBgTextControl(vu16 *reg,u16 priority,u16 screen_size,u16 color_mode,u16 mosaic,u16 screenblock,u16 char_base);
//void SetBgRotationControl(vu16 *reg,u16 priority,u16 screen_size,u16 color_mode,u16 mosaic,u16 screenblock,u16 char_base,u16 area_over);
void SetDispControl(vu16* reg,u16 bgMode,u16 obj_window,u16 window0,u16 window1,u16 obj,u16 bg0,u16 bg1,u16 bg2,u16 bg3,u16 blank,u16 format,u16 hblank,u16 frame);

//---------------------------------------------------------------------------------------------------

// Variables.

u16	map_x_size_tiles;  	// 16-bit map x size in 8x8 tiles.
u16	map_y_size_tiles;	// 16-bit map y size in 8x8 tiles.

u16	map_x_size_pixels;	// 16-bit map x size in pixels.
u16	map_y_size_pixels;	// 16-bit map y size in pixels.

s32	map_xpos;			// signed 32-bit map x-axis co-ordinate.
s32	map_ypos;			// signed 32-bit map y-axis co-ordinate.

u16	x_tilepos1;			// 16-bit map x-axis tile position used for bg1.
u16	y_tilepos1;			// 16-bit map y-axis tile position used for bg1.
u16	x_tilepos2;			// 16-bit map x-axis tile position used for bg2.
u16	y_tilepos2;			// 16-bit map y-axis tile position used for bg2.

u16 x_shift1;			// 16-bit map x-axis fine shift store used for bg1.
u16 y_shift1;			// 16-bit map y-axis fine shift store used for bg1.
u16 x_shift2;			// 16-bit map x-axis fine shift store used for bg2.
u16 y_shift2;			// 16-bit map y-axis fine shift store used for bg2.

//---------------------------------------------------------------------------------------------------

// Data..

// Bg0 front layer data.
//extern u8 Lev1bg0_Character[8*8*255];
//extern u16 Lev1bg0_Map[256*32];
//u16 Bg0_ScreenDat[32*32];

#endif

//***************************************************************************************************
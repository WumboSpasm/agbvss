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

#define TILE_BANK_SIZE_1 8*8*800		// No. of 8*8 256 tiles in this tilebank.
#define TILE_BANK_SIZE_2 8*8*96			// No. of 8*8 256 tiles in this tilebank.

#define TILE_BASE_1	0					// 0 = Points to level tile library (800 tiles).
#define TILE_BASE_2	3					// 3 = Points to 'speech bubble' tile library (96 tiles).#define TILE_BASE_1	0					// 0 = Points to level tile library (800 tiles).

#define TILE_BASE_ADDR_1 VRAM+0x0000	// VRAM tile bank 1 base address (800 tiles).
#define TILE_BASE_ADDR_2 VRAM+0xc800 	// VRAM tile bank 2 base address (96 tiles).
#define MAP_BASE_ADDR	 VRAM+0xe000 	// VRAM map base address.

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////
extern void InitScroll();
extern void UpdateScroll();

/////////////////////////////////////////////////
// Global Variables.
/////////////////////////////////////////////////

u16 Bg3_ScreenDat[32*32];				// Size of screen's in VRAM...
u16 Bg2_ScreenDat[32*21];				// This buffer is dynamically updated later !.
u16 Bg1_ScreenDat[32*21];				// This buffer is dynamically updated later !.

extern u8 Level;						// Test level counter.

u16* pBack_Map;							// Pointer to base of back map to use.
u16* pMid_Map;							// Pointer to base of mid map to use.
u16 pAction_MapWidth;					// Action map 'width' to use.
u16 pAction_MapHeight;					// Action map 'height' to use.
u16* pAction_Map;						// Pointer to base of action map to use.
u16* pCollision_Map;					// Pointer to base of collision map to use (make data 'u8' later).
u8* pTiles;  							// Pointer to base of tiles to use.

//---------------------------------------------------------------------------------------------------

// Chapter 2.

//--

// Level 1 & Sub-Levels.

extern u16 level0101_Back_Map[];		// Back layer map in ROM.
extern u16 level0101_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0101_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0101_Action_MapHeight;
extern u16 level0101_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0101_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0101_Tiles[];		  	// Level tile library in ROM.

extern u16 level0102_Back_Map[];		// Back layer map in ROM.
extern u16 level0102_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0102_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0102_Action_MapHeight;
extern u16 level0102_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0102_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0102_Tiles[];		  	// Level tile library in ROM.

extern u16 level0103_Back_Map[];		// Back layer map in ROM.
extern u16 level0103_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0103_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0103_Action_MapHeight;
extern u16 level0103_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0103_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0103_Tiles[];		  	// Level tile library in ROM.

extern u16 level0104_Back_Map[];		// Back layer map in ROM.
extern u16 level0104_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0104_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0104_Action_MapHeight;
extern u16 level0104_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0104_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0104_Tiles[];		  	// Level tile library in ROM.

extern u16 level0105_Back_Map[];		// Back layer map in ROM.
extern u16 level0105_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0105_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0105_Action_MapHeight;
extern u16 level0105_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0105_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0105_Tiles[];		  	// Level tile library in ROM.

extern u16 level0106_Back_Map[];		// Back layer map in ROM.
extern u16 level0106_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0106_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0106_Action_MapHeight;
extern u16 level0106_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0106_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0106_Tiles[];		  	// Level tile library in ROM.

extern u16 level0107_Back_Map[];		// Back layer map in ROM.
extern u16 level0107_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0107_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0107_Action_MapHeight;
extern u16 level0107_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0107_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0107_Tiles[];		  	// Level tile library in ROM.

//--

// Level 2 & Sub-Levels.

extern u16 level0201_Back_Map[];		// Back layer map in ROM.
extern u16 level0201_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0201_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0201_Action_MapHeight;
extern u16 level0201_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0201_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0201_Tiles[];

extern u16 level0202_Back_Map[];		// Back layer map in ROM.
extern u16 level0202_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0202_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0202_Action_MapHeight;
extern u16 level0202_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0202_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0202_Tiles[];	

extern u16 level0203_Back_Map[];		// Back layer map in ROM.
extern u16 level0203_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0203_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0203_Action_MapHeight;
extern u16 level0203_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0203_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0203_Tiles[];	

extern u16 level0204_Back_Map[];		// Back layer map in ROM.
extern u16 level0204_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0204_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0204_Action_MapHeight;
extern u16 level0204_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0204_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0204_Tiles[];	

extern u16 level0205_Back_Map[];		// Back layer map in ROM.
extern u16 level0205_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0205_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0205_Action_MapHeight;
extern u16 level0205_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0205_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0205_Tiles[];	

//--

// Level 3 & Sub-Levels.

extern u16 level0301_Back_Map[];		// Back layer map in ROM.
extern u16 level0301_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0301_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0301_Action_MapHeight;
extern u16 level0301_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0301_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0301_Tiles[];	

extern u16 level0302_Back_Map[];		// Back layer map in ROM.
extern u16 level0302_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0302_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0302_Action_MapHeight;
extern u16 level0302_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0302_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0302_Tiles[];	

extern u16 level0303_Back_Map[];		// Back layer map in ROM.
extern u16 level0303_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0303_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0303_Action_MapHeight;
extern u16 level0303_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0303_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0303_Tiles[];	

extern u16 level0304_Back_Map[];		// Back layer map in ROM.
extern u16 level0304_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0304_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0304_Action_MapHeight;
extern u16 level0304_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0304_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0304_Tiles[];	

//--

// Level 4 & Sub-Levels.

extern u16 level0401_Back_Map[];		// Back layer map in ROM.
extern u16 level0401_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0401_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0401_Action_MapHeight;
extern u16 level0401_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0401_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0401_Tiles[];		  	// Level tile library in ROM.

extern u16 level0402_Back_Map[];		// Back layer map in ROM.
extern u16 level0402_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0402_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0402_Action_MapHeight;
extern u16 level0402_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0402_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0402_Tiles[];		  	// Level tile library in ROM.

extern u16 level0403_Back_Map[];		// Back layer map in ROM.
extern u16 level0403_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0403_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0403_Action_MapHeight;
extern u16 level0403_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0403_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0403_Tiles[];	

extern u16 level0404_Back_Map[];		// Back layer map in ROM.
extern u16 level0404_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0404_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0404_Action_MapHeight;
extern u16 level0404_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0404_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0404_Tiles[];	

extern u16 level0405_Back_Map[];		// Back layer map in ROM.
extern u16 level0405_Mid_Map[];			// Middle layer map in ROM.
extern u16 level0405_Action_MapWidth;	// Size of map from level 'action layer' map data header.
extern u16 level0405_Action_MapHeight;
extern u16 level0405_Action_Map[];	  	// Action layer map in ROM.
extern u16 level0405_Collision_Map[]; 	// Collsion layer map in ROM (make data 'u8' later).
extern u8  level0405_Tiles[];

//---------------------------------------------------------------------------------------------------

extern u8 libFontGame_Char[8*8*96];		// 'Speech Bubble' tile library in ROM.
extern u8 libFontMenu_Char[8*8*96];		// 'Speech Bubble' tile library in ROM.

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
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
u16 Bg2_ScreenDat[32*32];				// These buffer's are dynamically updated with 'scroll strips' later !.
u16 Bg1_ScreenDat[32*32];

extern u8 Level;						// Test level counter.

u16* pBack_Map;							// Pointer to base of back map to use.
u16* pMid_Map;							// Pointer to base of mid map to use.
u16 pAction_MapWidth;					// Action map 'width' to use.
u16 pAction_MapHeight;					// Action map 'height' to use.
u16* pAction_Map;						// Pointer to base of action map to use.
u8* pCollision_Map;						// Pointer to base of collision map to use.
u8* pTiles;  							// Pointer to base of tiles to use.

//---------------------------------------------------------------------------------------------------
/*
// Chapter 2.

//--

// Level 1 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER02_LEVEL0101_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0101_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0101_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0101_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0101_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0101_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER02_LEVEL01_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER02_LEVEL0102_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0102_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0102_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0102_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0102_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0102_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0103_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0103_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0103_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0103_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0103_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0103_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0104_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0104_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0104_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0104_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0104_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0104_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0105_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0105_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0105_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0105_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0105_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0105_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0106_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0106_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0106_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0106_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0106_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0106_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0107_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0107_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0107_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0107_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0107_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0107_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0108_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0108_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0108_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0108_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0108_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0108_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0109_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0109_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0109_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0109_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0109_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0109_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0110_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0110_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0110_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0110_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0110_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0110_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0111_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0111_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0111_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0111_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0111_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0111_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0112_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0112_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0112_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0112_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0112_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0112_COLLISION[];	// Collsion layer map in ROM.

//--

// Level 2 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER02_LEVEL0201_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0201_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0201_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0201_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0201_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0201_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER02_LEVEL02_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER02_LEVEL0202_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0202_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0202_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0202_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0202_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0202_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0203_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0203_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0203_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0203_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0203_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0203_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0204_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0204_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0204_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0204_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0204_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0204_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0205_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0205_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0205_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0205_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0205_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0205_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0206_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0206_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0206_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0206_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0206_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0206_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0207_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0207_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0207_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0207_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0207_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0207_COLLISION[];	// Collsion layer map in ROM.

//--

// Level 3 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER02_LEVEL0301_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0301_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0301_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0301_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0301_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0301_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER02_LEVEL03_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER02_LEVEL0302_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0302_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0302_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0302_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0302_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0302_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0303_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0303_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0303_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0303_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0303_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0303_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0304_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0304_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0304_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0304_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0304_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0304_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0305_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0305_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0305_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0305_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0305_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0305_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0306_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0306_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0306_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0306_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0306_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0306_COLLISION[];	// Collsion layer map in ROM.

//--

// Level 4 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER02_LEVEL0401_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0401_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0401_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0401_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0401_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0401_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER02_LEVEL04_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER02_LEVEL0402_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0402_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0402_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0402_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0402_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0402_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0403_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0403_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0403_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0403_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0403_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0403_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0404_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0404_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0404_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0404_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0404_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0404_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0405_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0405_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0405_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0405_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0405_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0405_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0406_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0406_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0406_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0406_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0406_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0406_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER02_LEVEL0407_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER02_LEVEL0407_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER02_LEVEL0407_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER02_LEVEL0407_ACTION_HEIGHT;
extern u16 CHAPTER02_LEVEL0407_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER02_LEVEL0407_COLLISION[];	// Collsion layer map in ROM.
*/
//---------------------------------------------------------------------------------------------------

// Chapter 3.

//--

// Level 1 & Sub-Levels (sub-levels share same tile library).

//--

// Level 2 & Sub-Levels (sub-levels share same tile library).

//--

// Level 3 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER03_LEVEL0301_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0301_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0301_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0301_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0301_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0301_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER03_LEVEL03_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER03_LEVEL0302_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0302_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0302_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0302_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0302_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0302_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0303_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0303_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0303_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0303_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0303_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0303_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0304_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0304_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0304_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0304_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0304_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0304_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0305_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0305_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0305_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0305_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0305_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0305_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0306_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0306_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0306_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0306_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0306_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0306_COLLISION[];	// Collsion layer map in ROM.

//--

// Level 4 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER03_LEVEL0401_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0401_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0401_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0401_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0401_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0401_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER03_LEVEL04_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER03_LEVEL0402_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0402_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0402_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0402_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0402_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0402_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0403_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0403_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0403_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0403_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0403_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0403_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0404_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0404_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0404_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0404_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0404_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0404_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0405_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0405_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0405_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0405_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0405_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0405_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER03_LEVEL0406_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER03_LEVEL0406_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER03_LEVEL0406_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER03_LEVEL0406_ACTION_HEIGHT;
extern u16 CHAPTER03_LEVEL0406_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER03_LEVEL0406_COLLISION[];	// Collsion layer map in ROM.

//---------------------------------------------------------------------------------------------------

// Chapter 4.

//--

// Level 1 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER04_LEVEL0101_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0101_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0101_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0101_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0101_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0101_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER04_LEVEL01_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER04_LEVEL0102_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0102_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0102_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0102_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0102_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0102_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0103_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0103_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0103_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0103_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0103_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0103_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0104_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0104_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0104_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0104_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0104_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0104_COLLISION[];	// Collsion layer map in ROM.

//--

// Level 2 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER04_LEVEL0201_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0201_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0201_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0201_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0201_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0201_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER04_LEVEL02_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER04_LEVEL0202_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0202_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0202_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0202_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0202_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0202_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0203_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0203_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0203_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0203_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0203_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0203_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0204_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0204_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0204_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0204_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0204_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0204_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0205_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0205_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0205_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0205_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0205_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0205_COLLISION[];	// Collsion layer map in ROM.

//--

// Level 3 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER04_LEVEL0301_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0301_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0301_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0301_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0301_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0301_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER04_LEVEL03_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER04_LEVEL0302_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0302_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0302_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0302_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0302_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0302_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0303_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0303_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0303_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0303_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0303_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0303_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0304_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0304_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0304_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0304_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0304_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0304_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0305_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0305_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0305_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0305_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0305_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0305_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0306_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0306_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0306_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0306_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0306_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0306_COLLISION[];	// Collsion layer map in ROM.

//--

// Level 4 & Sub-Levels (sub-levels share same tile library).

extern u16 CHAPTER04_LEVEL0401_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0401_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0401_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0401_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0401_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0401_COLLISION[];	// Collsion layer map in ROM.

extern u8  CHAPTER04_LEVEL04_TILEBANK[];   	// Level tile library in ROM.

extern u16 CHAPTER04_LEVEL0402_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0402_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0402_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0402_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0402_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0402_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0403_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0403_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0403_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0403_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0403_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0403_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0404_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0404_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0404_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0404_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0404_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0404_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0405_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0405_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0405_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0405_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0405_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0405_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0406_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0406_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0406_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0406_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0406_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0406_COLLISION[];	// Collsion layer map in ROM.

extern u16 CHAPTER04_LEVEL0407_BACK[]; 		// Back layer map in ROM.
extern u16 CHAPTER04_LEVEL0407_MID[];  		// Middle layer map in ROM.
extern u16 CHAPTER04_LEVEL0407_ACTION_WIDTH;// Size of map from level 'action layer' map data header.
extern u16 CHAPTER04_LEVEL0407_ACTION_HEIGHT;
extern u16 CHAPTER04_LEVEL0407_ACTION[];	// Action layer map in ROM.
extern u8  CHAPTER04_LEVEL0407_COLLISION[];	// Collsion layer map in ROM.

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
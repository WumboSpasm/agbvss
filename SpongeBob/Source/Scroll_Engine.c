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
/*
// Chapter 2.

//--

// Level 1 & Sub-Levels.

		case LEVEL020101:
			pBack_Map		 =CHAPTER02_LEVEL0101_BACK;	  	// Load pointer to base of back map to use.
			pMid_Map		 =CHAPTER02_LEVEL0101_MID; 	  	// Load pointer to base of level mid map to use.
			pAction_MapWidth =CHAPTER02_LEVEL0101_ACTION_WIDTH;	// Action map 'width' to use.
			pAction_MapHeight=CHAPTER02_LEVEL0101_ACTION_HEIGHT;// Action map 'height' to use.
			pAction_Map		 =CHAPTER02_LEVEL0101_ACTION; 	// Load pointer to base of action map to use.
			pCollision_Map	 =CHAPTER02_LEVEL0101_COLLISION;// Load pointer to base of collision map to use.
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;  	// Load pointer to base of tiles to use.
			break;
		case LEVEL020102:									// Etc.
			pBack_Map		 =CHAPTER02_LEVEL0102_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0102_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0102_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0102_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0102_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0102_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020103:
			pBack_Map		 =CHAPTER02_LEVEL0103_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0103_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0103_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0103_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0103_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0103_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020104:
			pBack_Map		 =CHAPTER02_LEVEL0104_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0104_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0104_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0104_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0104_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0104_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020105:
 			pBack_Map		 =CHAPTER02_LEVEL0105_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0105_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0105_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0105_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0105_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0105_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
	   	case LEVEL020106:
 			pBack_Map		 =CHAPTER02_LEVEL0106_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0106_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0106_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0106_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0106_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0106_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020107:
 			pBack_Map		 =CHAPTER02_LEVEL0107_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0107_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0107_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0107_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0107_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0107_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020108:
 			pBack_Map		 =CHAPTER02_LEVEL0108_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0108_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0108_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0108_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0108_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0108_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020109:
 			pBack_Map		 =CHAPTER02_LEVEL0109_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0109_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0109_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0109_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0109_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0109_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020110:
 			pBack_Map		 =CHAPTER02_LEVEL0110_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0110_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0110_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0110_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0110_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0110_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020111:
 			pBack_Map		 =CHAPTER02_LEVEL0111_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0111_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0111_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0111_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0111_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0111_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020112:
 			pBack_Map		 =CHAPTER02_LEVEL0112_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0112_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0112_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0112_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0112_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0112_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL020201:
 			pBack_Map		 =CHAPTER02_LEVEL0201_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0201_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0201_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0201_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0201_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0201_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020202:
 			pBack_Map		 =CHAPTER02_LEVEL0202_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0202_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0202_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0202_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0202_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0202_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020203:
 			pBack_Map		 =CHAPTER02_LEVEL0203_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0203_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0203_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0203_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0203_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0203_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020204:
 			pBack_Map		 =CHAPTER02_LEVEL0204_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0204_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0204_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0204_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0204_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0204_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020205:
 			pBack_Map		 =CHAPTER02_LEVEL0205_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0205_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0205_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0205_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0205_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0205_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020206:
 			pBack_Map		 =CHAPTER02_LEVEL0206_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0206_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0206_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0206_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0206_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0206_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020207:
 			pBack_Map		 =CHAPTER02_LEVEL0207_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0207_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0207_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0207_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0207_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0207_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL020301:
 			pBack_Map		 =CHAPTER02_LEVEL0301_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0301_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0301_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0301_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0301_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0301_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020302:
 			pBack_Map		 =CHAPTER02_LEVEL0302_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0302_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0302_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0302_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0302_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0302_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020303:
 			pBack_Map		 =CHAPTER02_LEVEL0303_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0303_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0303_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0303_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0303_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0303_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020304:
 			pBack_Map		 =CHAPTER02_LEVEL0304_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0304_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0304_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0304_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0304_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0304_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020305:
 			pBack_Map		 =CHAPTER02_LEVEL0305_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0305_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0305_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0305_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0305_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0305_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020306:
 			pBack_Map		 =CHAPTER02_LEVEL0306_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0306_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0306_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0306_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0306_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0306_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL020401:
 			pBack_Map		 =CHAPTER02_LEVEL0401_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0401_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0401_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0401_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0401_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0401_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
	   	case LEVEL020402:
 			pBack_Map		 =CHAPTER02_LEVEL0402_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0402_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0402_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0402_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0402_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0402_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020403:
 			pBack_Map		 =CHAPTER02_LEVEL0403_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0403_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0403_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0403_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0403_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0403_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020404:
 			pBack_Map		 =CHAPTER02_LEVEL0404_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0404_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0404_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0404_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0404_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0404_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020405:
 			pBack_Map		 =CHAPTER02_LEVEL0405_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0405_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0405_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0405_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0405_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0405_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020406:
 			pBack_Map		 =CHAPTER02_LEVEL0406_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0406_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0406_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0406_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0406_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0406_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020407:
 			pBack_Map		 =CHAPTER02_LEVEL0407_BACK;
			pMid_Map		 =CHAPTER02_LEVEL0407_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0407_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0407_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0407_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0407_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
*/
//---------------------------------------------------------------------------------------------------

// Chapter 3.

//--

// Level 1 & Sub-Levels.

//--

// Level 2 & Sub-Levels.

//--

// Level 3 & Sub-Levels.

		case LEVEL030301:
			pBack_Map		 =CHAPTER03_LEVEL0301_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0301_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0301_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0301_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0301_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0301_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030302:
			pBack_Map		 =CHAPTER03_LEVEL0302_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0302_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0302_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0302_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0302_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0302_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030303:
			pBack_Map		 =CHAPTER03_LEVEL0303_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0303_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0303_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0303_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0303_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0303_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030304:
			pBack_Map		 =CHAPTER03_LEVEL0304_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0304_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0304_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0304_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0304_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0304_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030305:
			pBack_Map		 =CHAPTER03_LEVEL0305_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0305_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0305_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0305_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0305_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0305_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030306:
			pBack_Map		 =CHAPTER03_LEVEL0306_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0306_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0306_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0306_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0306_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0306_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL030401:
			pBack_Map		 =CHAPTER03_LEVEL0401_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0401_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0401_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0401_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0401_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0401_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030402:
			pBack_Map		 =CHAPTER03_LEVEL0402_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0402_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0402_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0402_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0402_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0402_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030403:
			pBack_Map		 =CHAPTER03_LEVEL0403_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0403_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0403_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0403_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0403_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0403_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030404:
			pBack_Map		 =CHAPTER03_LEVEL0404_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0404_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0404_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0404_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0404_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0404_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030405:
			pBack_Map		 =CHAPTER03_LEVEL0405_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0405_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0405_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0405_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0405_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0405_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030406:
			pBack_Map		 =CHAPTER03_LEVEL0406_BACK;
			pMid_Map		 =CHAPTER03_LEVEL0406_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0406_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0406_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0406_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0406_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;

//---------------------------------------------------------------------------------------------------

// Chapter 4.

//--

// Level 1 & Sub-Levels.

		case LEVEL040101:
			pBack_Map		 =CHAPTER04_LEVEL0101_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0101_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0101_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0101_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0101_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0101_COLLISION;
			pTiles			 =CHAPTER04_LEVEL01_TILEBANK;
			break;
		case LEVEL040102:
			pBack_Map		 =CHAPTER04_LEVEL0102_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0102_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0102_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0102_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0102_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0102_COLLISION;
			pTiles			 =CHAPTER04_LEVEL01_TILEBANK;
			break;
		case LEVEL040103:
			pBack_Map		 =CHAPTER04_LEVEL0103_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0103_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0103_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0103_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0103_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0103_COLLISION;
			pTiles			 =CHAPTER04_LEVEL01_TILEBANK;
			break;
		case LEVEL040104:
			pBack_Map		 =CHAPTER04_LEVEL0104_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0104_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0104_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0104_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0104_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0104_COLLISION;
			pTiles			 =CHAPTER04_LEVEL01_TILEBANK;
			break;

//--

// Level 2 & Sub-Levels.

		case LEVEL040201:
			pBack_Map		 =CHAPTER04_LEVEL0201_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0201_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0201_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0201_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0201_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0201_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040202:
			pBack_Map		 =CHAPTER04_LEVEL0202_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0202_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0202_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0202_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0202_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0202_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040203:
			pBack_Map		 =CHAPTER04_LEVEL0203_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0203_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0203_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0203_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0203_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0203_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040204:
			pBack_Map		 =CHAPTER04_LEVEL0204_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0204_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0204_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0204_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0204_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0204_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040205:
			pBack_Map		 =CHAPTER04_LEVEL0205_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0205_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0205_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0205_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0205_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0205_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;

//--

// Level 3 & Sub-Levels.

		case LEVEL040301:
			pBack_Map		 =CHAPTER04_LEVEL0301_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0301_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0301_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0301_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0301_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0301_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040302:
			pBack_Map		 =CHAPTER04_LEVEL0302_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0302_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0302_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0302_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0302_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0302_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040303:
			pBack_Map		 =CHAPTER04_LEVEL0303_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0303_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0303_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0303_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0303_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0303_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040304:
			pBack_Map		 =CHAPTER04_LEVEL0304_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0304_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0304_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0304_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0304_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0304_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040305:
			pBack_Map		 =CHAPTER04_LEVEL0305_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0305_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0305_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0305_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0305_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0305_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040306:
			pBack_Map		 =CHAPTER04_LEVEL0306_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0306_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0306_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0306_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0306_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0306_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;

//--

// Level 4 & Sub-Levels.

		case LEVEL040401:
			pBack_Map		 =CHAPTER04_LEVEL0401_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0401_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0401_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0401_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0401_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0401_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040402:
			pBack_Map		 =CHAPTER04_LEVEL0402_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0402_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0402_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0402_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0402_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0402_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040403:
			pBack_Map		 =CHAPTER04_LEVEL0403_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0403_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0403_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0403_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0403_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0403_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040404:
			pBack_Map		 =CHAPTER04_LEVEL0404_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0404_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0404_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0404_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0404_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0404_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040405:
			pBack_Map		 =CHAPTER04_LEVEL0405_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0405_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0405_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0405_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0405_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0405_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040406:
			pBack_Map		 =CHAPTER04_LEVEL0406_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0406_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0406_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0406_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0406_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0406_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040407:
			pBack_Map		 =CHAPTER04_LEVEL0407_BACK;
			pMid_Map		 =CHAPTER04_LEVEL0407_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0407_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0407_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0407_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0407_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
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

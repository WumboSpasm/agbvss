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

static void InitRear();
static void DBlockVerticalStrip(int Layer,int Dir,s32 old_map_xpos,s32 old_map_ypos);
static void DBlockHorizontalStrip(int Layer,int Dir,s32 old_map_xpos,s32 old_map_ypos);

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
			pMid_MapWidth	 =CHAPTER02_LEVEL0101_MID_WIDTH;// Mid. map 'width' to use.
			pMid_MapHeight	 =CHAPTER02_LEVEL0101_MID_HEIGHT;// Mid. map 'height' to use.
			pMid_Map		 =CHAPTER02_LEVEL0101_MID; 	  	// Load pointer to base of level mid map to use.
			pAction_MapWidth =CHAPTER02_LEVEL0101_ACTION_WIDTH;	// Action map 'width' to use.
			pAction_MapHeight=CHAPTER02_LEVEL0101_ACTION_HEIGHT;// Action map 'height' to use.
			pAction_Map		 =CHAPTER02_LEVEL0101_ACTION; 	// Load pointer to base of action map to use.
			pCollision_Map	 =CHAPTER02_LEVEL0101_COLLISION;// Load pointer to base of collision map to use.
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;  	// Load pointer to base of tiles to use.
			break;
		case LEVEL020102:									// Etc.
			pBack_Map		 =CHAPTER02_LEVEL0102_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0102_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0102_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0102_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0102_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0102_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0102_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0102_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020103:
			pBack_Map		 =CHAPTER02_LEVEL0103_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0103_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0103_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0103_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0103_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0103_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0103_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0103_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020104:
			pBack_Map		 =CHAPTER02_LEVEL0104_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0104_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0104_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0104_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0104_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0104_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0104_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0104_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020105:
 			pBack_Map		 =CHAPTER02_LEVEL0105_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0105_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0105_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0105_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0105_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0105_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0105_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0105_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
	   	case LEVEL020106:
 			pBack_Map		 =CHAPTER02_LEVEL0106_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0106_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0106_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0106_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0106_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0106_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0106_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0106_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020107:
 			pBack_Map		 =CHAPTER02_LEVEL0107_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0107_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0107_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0107_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0107_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0107_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0107_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0107_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020108:
 			pBack_Map		 =CHAPTER02_LEVEL0108_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0108_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0108_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0108_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0108_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0108_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0108_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0108_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020109:
 			pBack_Map		 =CHAPTER02_LEVEL0109_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0109_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0109_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0109_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0109_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0109_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0109_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0109_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020110:
 			pBack_Map		 =CHAPTER02_LEVEL0110_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0110_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0110_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0110_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0110_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0110_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0110_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0110_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020111:
 			pBack_Map		 =CHAPTER02_LEVEL0111_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0111_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0111_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0111_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0111_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0111_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0111_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0111_COLLISION;
			pTiles			 =CHAPTER02_LEVEL01_TILEBANK;
			break;
		case LEVEL020112:
 			pBack_Map		 =CHAPTER02_LEVEL0112_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0112_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0112_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER02_LEVEL0201_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0201_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0201_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0201_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0201_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0201_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0201_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020202:
 			pBack_Map		 =CHAPTER02_LEVEL0202_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0202_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0202_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0202_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0202_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0202_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0202_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0202_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020203:
 			pBack_Map		 =CHAPTER02_LEVEL0203_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0203_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0203_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0203_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0203_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0203_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0203_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0203_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020204:
 			pBack_Map		 =CHAPTER02_LEVEL0204_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0204_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0204_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0204_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0204_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0204_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0204_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0204_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020205:
 			pBack_Map		 =CHAPTER02_LEVEL0205_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0205_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0205_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0205_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0205_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0205_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0205_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0205_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020206:
 			pBack_Map		 =CHAPTER02_LEVEL0206_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0206_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0206_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0206_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0206_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0206_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0206_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0206_COLLISION;
			pTiles			 =CHAPTER02_LEVEL02_TILEBANK;
			break;
		case LEVEL020207:
 			pBack_Map		 =CHAPTER02_LEVEL0207_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0207_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0207_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER02_LEVEL0301_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0301_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0301_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0301_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0301_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0301_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0301_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020302:
 			pBack_Map		 =CHAPTER02_LEVEL0302_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0302_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0302_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0302_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0302_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0302_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0302_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0302_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020303:
 			pBack_Map		 =CHAPTER02_LEVEL0303_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0303_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0303_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0303_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0303_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0303_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0303_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0303_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020304:
 			pBack_Map		 =CHAPTER02_LEVEL0304_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0304_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0304_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0304_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0304_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0304_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0304_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0304_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020305:
 			pBack_Map		 =CHAPTER02_LEVEL0305_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0305_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0305_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0305_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0305_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0305_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0305_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0305_COLLISION;
			pTiles			 =CHAPTER02_LEVEL03_TILEBANK;
			break;
		case LEVEL020306:
 			pBack_Map		 =CHAPTER02_LEVEL0306_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0306_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0306_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER02_LEVEL0401_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0401_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0401_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0401_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0401_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0401_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0401_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
	   	case LEVEL020402:
 			pBack_Map		 =CHAPTER02_LEVEL0402_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0402_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0402_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0402_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0402_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0402_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0402_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0402_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020403:
 			pBack_Map		 =CHAPTER02_LEVEL0403_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0403_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0403_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0403_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0403_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0403_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0403_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0403_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020404:
 			pBack_Map		 =CHAPTER02_LEVEL0404_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0404_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0404_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0404_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0404_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0404_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0404_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0404_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020405:
 			pBack_Map		 =CHAPTER02_LEVEL0405_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0405_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0405_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0405_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0405_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0405_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0405_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0405_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020406:
 			pBack_Map		 =CHAPTER02_LEVEL0406_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0406_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0406_MID_HEIGHT;
			pMid_Map		 =CHAPTER02_LEVEL0406_MID;
			pAction_MapWidth =CHAPTER02_LEVEL0406_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER02_LEVEL0406_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER02_LEVEL0406_ACTION;
			pCollision_Map	 =CHAPTER02_LEVEL0406_COLLISION;
			pTiles			 =CHAPTER02_LEVEL04_TILEBANK;
			break;
		case LEVEL020407:
 			pBack_Map		 =CHAPTER02_LEVEL0407_BACK;
			pMid_MapWidth	 =CHAPTER02_LEVEL0407_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER02_LEVEL0407_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER03_LEVEL0301_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0301_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0301_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0301_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0301_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0301_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0301_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030302:
			pBack_Map		 =CHAPTER03_LEVEL0302_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0302_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0302_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0302_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0302_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0302_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0302_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0302_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030303:
			pBack_Map		 =CHAPTER03_LEVEL0303_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0303_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0303_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0303_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0303_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0303_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0303_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0303_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030304:
			pBack_Map		 =CHAPTER03_LEVEL0304_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0304_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0304_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0304_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0304_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0304_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0304_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0304_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030305:
			pBack_Map		 =CHAPTER03_LEVEL0305_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0305_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0305_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0305_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0305_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0305_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0305_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0305_COLLISION;
			pTiles			 =CHAPTER03_LEVEL03_TILEBANK;
			break;
		case LEVEL030306:
			pBack_Map		 =CHAPTER03_LEVEL0306_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0306_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0306_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER03_LEVEL0401_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0401_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0401_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0401_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0401_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0401_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0401_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030402:
			pBack_Map		 =CHAPTER03_LEVEL0402_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0402_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0402_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0402_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0402_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0402_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0402_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0402_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030403:
			pBack_Map		 =CHAPTER03_LEVEL0403_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0403_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0403_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0403_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0403_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0403_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0403_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0403_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030404:
			pBack_Map		 =CHAPTER03_LEVEL0404_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0404_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0404_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0404_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0404_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0404_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0404_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0404_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030405:
			pBack_Map		 =CHAPTER03_LEVEL0405_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0405_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0405_MID_HEIGHT;
			pMid_Map		 =CHAPTER03_LEVEL0405_MID;
			pAction_MapWidth =CHAPTER03_LEVEL0405_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER03_LEVEL0405_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER03_LEVEL0405_ACTION;
			pCollision_Map	 =CHAPTER03_LEVEL0405_COLLISION;
			pTiles			 =CHAPTER03_LEVEL04_TILEBANK;
			break;
		case LEVEL030406:
			pBack_Map		 =CHAPTER03_LEVEL0406_BACK;
			pMid_MapWidth	 =CHAPTER03_LEVEL0406_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER03_LEVEL0406_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER04_LEVEL0101_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0101_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0101_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0101_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0101_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0101_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0101_COLLISION;
			pTiles			 =CHAPTER04_LEVEL01_TILEBANK;
			break;
		case LEVEL040102:
			pBack_Map		 =CHAPTER04_LEVEL0102_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0102_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0102_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0102_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0102_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0102_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0102_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0102_COLLISION;
			pTiles			 =CHAPTER04_LEVEL01_TILEBANK;
			break;
		case LEVEL040103:
			pBack_Map		 =CHAPTER04_LEVEL0103_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0103_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0103_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0103_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0103_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0103_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0103_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0103_COLLISION;
			pTiles			 =CHAPTER04_LEVEL01_TILEBANK;
			break;
		case LEVEL040104:
			pBack_Map		 =CHAPTER04_LEVEL0104_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0104_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0104_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER04_LEVEL0201_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0201_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0201_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0201_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0201_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0201_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0201_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040202:
			pBack_Map		 =CHAPTER04_LEVEL0202_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0202_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0202_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0202_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0202_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0202_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0202_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0202_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040203:
			pBack_Map		 =CHAPTER04_LEVEL0203_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0203_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0203_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0203_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0203_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0203_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0203_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0203_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040204:
			pBack_Map		 =CHAPTER04_LEVEL0204_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0204_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0204_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0204_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0204_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0204_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0204_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0204_COLLISION;
			pTiles			 =CHAPTER04_LEVEL02_TILEBANK;
			break;
		case LEVEL040205:
			pBack_Map		 =CHAPTER04_LEVEL0205_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0205_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0205_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER04_LEVEL0301_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0301_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0301_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0301_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0301_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0301_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0301_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040302:
			pBack_Map		 =CHAPTER04_LEVEL0302_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0302_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0302_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0302_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0302_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0302_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0302_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0302_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040303:
			pBack_Map		 =CHAPTER04_LEVEL0303_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0303_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0303_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0303_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0303_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0303_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0303_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0303_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040304:
			pBack_Map		 =CHAPTER04_LEVEL0304_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0304_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0304_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0304_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0304_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0304_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0304_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0304_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040305:
			pBack_Map		 =CHAPTER04_LEVEL0305_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0305_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0305_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0305_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0305_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0305_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0305_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0305_COLLISION;
			pTiles			 =CHAPTER04_LEVEL03_TILEBANK;
			break;
		case LEVEL040306:
			pBack_Map		 =CHAPTER04_LEVEL0306_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0306_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0306_MID_HEIGHT;
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
			pMid_MapWidth	 =CHAPTER04_LEVEL0401_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0401_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0401_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0401_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0401_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0401_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0401_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040402:
			pBack_Map		 =CHAPTER04_LEVEL0402_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0402_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0402_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0402_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0402_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0402_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0402_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0402_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040403:
			pBack_Map		 =CHAPTER04_LEVEL0403_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0403_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0403_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0403_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0403_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0403_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0403_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0403_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040404:
			pBack_Map		 =CHAPTER04_LEVEL0404_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0404_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0404_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0404_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0404_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0404_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0404_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0404_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040405:
			pBack_Map		 =CHAPTER04_LEVEL0405_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0405_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0405_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0405_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0405_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0405_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0405_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0405_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040406:
			pBack_Map		 =CHAPTER04_LEVEL0406_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0406_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0406_MID_HEIGHT;
			pMid_Map		 =CHAPTER04_LEVEL0406_MID;
			pAction_MapWidth =CHAPTER04_LEVEL0406_ACTION_WIDTH;
			pAction_MapHeight=CHAPTER04_LEVEL0406_ACTION_HEIGHT;
			pAction_Map		 =CHAPTER04_LEVEL0406_ACTION;
			pCollision_Map	 =CHAPTER04_LEVEL0406_COLLISION;
			pTiles			 =CHAPTER04_LEVEL04_TILEBANK;
			break;
		case LEVEL040407:
			pBack_Map		 =CHAPTER04_LEVEL0407_BACK;
			pMid_MapWidth	 =CHAPTER04_LEVEL0407_MID_WIDTH;
			pMid_MapHeight	 =CHAPTER04_LEVEL0407_MID_HEIGHT;
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

	map_x_size_tiles_bg2=pMid_MapWidth;			// Get size of map in 8x8's from level map data.
	map_y_size_tiles_bg2=pMid_MapHeight;
	map_x_size_tiles_bg1=pAction_MapWidth;
	map_y_size_tiles_bg1=pAction_MapHeight;

	map_x_size_pixels_bg2=map_x_size_tiles_bg2<<3;	// Convert map size to pixel dimensions.
	map_y_size_pixels_bg2=map_y_size_tiles_bg2<<3;
	map_x_size_pixels_bg1=map_x_size_tiles_bg1<<3;
	map_y_size_pixels_bg1=map_y_size_tiles_bg1<<3;

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

	BuildScreen();							// Init. screen using current map position before we start using the 8-way strip scroll.
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

// Initialise the 'bg3' rear layer map.

static void InitRear(void)
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

// Init. screen using current map position before we start using the 8-way strip scroll.

void BuildScreen(void)
{
	int x;									// Local variable.
	s32 Temp;

	Temp=map_xpos;							// Store variable.

//--

// Build 'bg1'.

	for(x=0;x<((LCD_HEIGHT+16)<<1);x++)		// + '16 pixel' overdraw.
	{
		old_map_xpos_bg2=map_xpos>>1;		// Update map co-ords store (bg2) (half scroll speed !).
		old_map_ypos_bg2=map_ypos>>1;

		map_ypos++;							// Draw a screenful of map data.

	 	Scroll2Position(2,old_map_xpos_bg2,old_map_ypos_bg2,map_xpos>>1,map_ypos>>1); // Update the screen buffer (bg2).
	}

	map_xpos=Temp;							// Restore variable.

	old_map_xpos_bg2=map_xpos>>1;			// Update map co-ords store (bg2) (half scroll speed !).
	old_map_ypos_bg2=map_ypos>>1;

//--

// Build 'bg2'.

	for(x=0;x<LCD_HEIGHT;x++)
	{
		old_map_xpos_bg1=map_xpos;			// Update map co-ords store (bg1).
		old_map_ypos_bg1=map_ypos;

		map_ypos++;							// Draw a screenful of map data.

		Scroll2Position(1,old_map_xpos_bg1,old_map_ypos_bg1,map_xpos,map_ypos); // Update the screen buffer (bg1).
	}

	map_xpos=Temp;							// Restore variable.

	old_map_xpos_bg1=map_xpos;				// Update map co-ords store (bg1).
	old_map_ypos_bg1=map_ypos;

//--

}

//***************************************************************************************************

// Update the 8-way parallax scroll.

void UpdateScroll(void)
{
 	Scroll2Position(2,old_map_xpos_bg2,old_map_ypos_bg2,map_xpos>>1,map_ypos>>1); // Update the screen buffer (bg2).
	Scroll2Position(1,old_map_xpos_bg1,old_map_ypos_bg1,map_xpos,map_ypos); // Update the screen buffer (bg1).
}

//***************************************************************************************************

// Update the screen buffer(s) (8-way strip scroll routine).

// Inputs: 	1) Layer to update 1='bg1' or 2='bg2'.
// 			2) Old map x-pos for current 'bg(n)'.
//	 		3) Old map y-pos for current 'bg(n)'.
// 			4) New map x-pos for current 'bg(n)'.
// 			5) New map y-pos for current 'bg(n)'.

void Scroll2Position(int Layer,s32 old_map_xpos,s32 old_map_ypos,s32 new_map_xpos,s32 new_map_ypos)
{
	int i=0,Dir=-1;							// Local variables.
	u16 DBlockVal=7;
	s32 ShiftX,ShiftY;

	if(old_map_xpos<new_map_xpos)			// X scroll.
	{
		Dir=1;								// -1=scroll left / +1=scroll right.
		DBlockVal=1;
	}

	while(old_map_xpos!=new_map_xpos)
	{
		old_map_xpos+=Dir;

		if((old_map_xpos&7)==DBlockVal)
		{
			DBlockVerticalStrip(Layer,Dir,old_map_xpos,old_map_ypos);
		}
	}

	i=0;
	Dir=-1;
	DBlockVal=7;

	if(old_map_ypos<new_map_ypos)	   		// Y scroll.
	{
		Dir=1;								// -1=scroll up / +1=scroll down.
		DBlockVal=1;
	}
		
	while(old_map_ypos!=new_map_ypos)
	{
		old_map_ypos+=Dir;

		if((old_map_ypos&7)==DBlockVal)
		{
			DBlockHorizontalStrip(Layer,Dir,old_map_xpos,old_map_ypos);
 		}
	}
	
	ShiftX=(s32)old_map_xpos;				// Calc. hardware x scroll register value.
	ShiftX&=255;							// & with vram width in pixels.
	ShiftY=(s32)old_map_ypos;				// Calc. hardware y scroll register value.
	ShiftY&=255;							// & with vram height in pixels.

	if(Layer==2)							// Update which parallax layer ?.
	{
		*(vu16*)REG_BG1HOFS=(u8)ShiftX;		// Update fine scroll offset regs.
		*(vu16*)REG_BG1VOFS=(u8)ShiftY;

		DmaArrayCopy(3,Bg2_ScreenDat,MAP_BASE_ADDR+0x0800,16); // DMA copy 'bg2' buffer to vram.
	}
	else
	{
		*(vu16*)REG_BG2HOFS=(u8)ShiftX;		// Update fine scroll offset regs.
		*(vu16*)REG_BG2VOFS=(u8)ShiftY;	

		*(vu16*)REG_BG0HOFS=map_xpos>>2; 	// Update fine scroll offset regs. (compute 'bg3' rear parallax scroll ratio too !).
		*(vu16*)REG_BG0VOFS=map_ypos>>3;

//		*(vu16*)REG_BG3HOFS=0;				// 'Speech Bubble' layer use only.
//		*(vu16*)REG_BG3VOFS=0;

		DmaArrayCopy(3,Bg1_ScreenDat,MAP_BASE_ADDR+0x1000,16); // DMA copy 'bg1' buffer to vram.
	}
}

//---------------------------------------------------------------------------------------------------

//	Calculate place to draw vertical strip (left or right of screen based on dir).

static void DBlockVerticalStrip(int Layer,int Dir,s32 old_map_xpos,s32 old_map_ypos)
{
	int y;									// Local variable.
	u16 RealMapX,RealMapY,RealScreenPosX,RealScreenPosY;
	u16 ScreenSide;

	if(Dir==1)								// Draw to either the left or right of the screen depending on scroll direction.
	{
		ScreenSide=LCD_WIDTH;
	}
	else
	{
		ScreenSide=0;
	}						
	
	RealMapX=(old_map_xpos+ScreenSide)>>3; 	
	RealMapY=old_map_ypos>>3;

	RealScreenPosX=RealMapX&31;				// & with vram width in 8*8 tiles.
	RealScreenPosY=RealMapY&31;

	for(y=0;y<21;y++)						// Draw vertical strip with vram buffer wrap.
	{
		if(Layer==2)						// Update which parallax layer ?.
		{
			Bg2_ScreenDat[RealScreenPosX+(((RealScreenPosY+y)&31)*32)]=pMid_Map[RealMapX+((RealMapY+(y+PARALLAX_HEIGHT_ADJUST))*map_x_size_tiles_bg2)];
		}
		else
		{
			Bg1_ScreenDat[RealScreenPosX+(((RealScreenPosY+y)&31)*32)]=pAction_Map[RealMapX+((RealMapY+y)*map_x_size_tiles_bg1)];
		}
	}
}

//---------------------------------------------------------------------------------------------------

//	Calculate place to draw horizontal strip (top or bottom of screen based on dir).

static void DBlockHorizontalStrip(int Layer,int Dir,s32 old_map_xpos,s32 old_map_ypos)
{
	int x;									// Local variable.
	u16 RealMapX,RealMapY,RealScreenPosX,RealScreenPosY;
	u16 ScreenSide;

	if(Dir==1)								// Draw to either the top or bottom of the screen depending on scroll direction.
	{
		ScreenSide=LCD_HEIGHT;
	}
	else
	{
		ScreenSide=0;
	}						
	
	RealMapX=old_map_xpos>>3;
	RealMapY=(old_map_ypos+ScreenSide)>>3;

	RealScreenPosX=RealMapX&31;				// & with vram width in 8*8 tiles.
	RealScreenPosY=RealMapY&31;

	for(x=0;x<31;x++)						// Draw horizontal strip with vram buffer wrap.
	{
		if(Layer==2)					 	// Update which parallax layer ?.
		{
			Bg2_ScreenDat[((RealScreenPosX+x)&31)+(RealScreenPosY*32)]=pMid_Map[(RealMapX+x)+((RealMapY+PARALLAX_HEIGHT_ADJUST)*map_x_size_tiles_bg2)];
		}
		else
		{
			Bg1_ScreenDat[((RealScreenPosX+x)&31)+(RealScreenPosY*32)]=pAction_Map[(RealMapX+x)+(RealMapY*map_x_size_tiles_bg1)];
		}	
	}
}

//***************************************************************************************************

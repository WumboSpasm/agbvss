//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Platform Contour Collision & Tables (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "Scroll_Engine.h"
#include "Contours.h"

//***************************************************************************************************

// Check for platform contours and offset sprite accordingly.

// Note: The address pointer to the current sprite being plotted on screen, is passed into this routine.

void CheckContour(Object* pAO)
{		
	u16 MapX,MapY,Tile1,Tile2,Tile3,Tile4,Tile5; // Local variables.
	u8 XOffset;
	s8 Glue;

	MapX=(pAO->sp_xpos+(pAO->sp_xsize>>1))>>3; // Locate tile position in map under sprites feet.		
	MapY=(pAO->sp_ypos+pAO->sp_ysize)>>3;	

//--

// Check for all contours.

	Tile1=pCollision_Map[MapX+(MapY*map_x_size_tiles)]; // Read tile at current map location.		
	Tile2=pCollision_Map[MapX+((MapY+1)*map_x_size_tiles)]; // Read tile at next y map location down.

	XOffset=pAO->sp_xpos&7;				// Isolate amount of x fine shift and store it.

	if(pAO->sp_yvel>=0)					// If sprite moving downwards, check for any platform contour tiles.
	{
		switch(Tile1)					// Check tile...
		{
			case COLLISION_TILE_0: 		// Empty tile ?.
				if(pAO->sp_type==TYPE_SPONGEBOB&&Tile2==COLLISION_TILE_0) // If SpongeBob sprite - is next tile down in y empty too ?.
				{
					pAO->sp_var4=OFF;	// Reset hit ground flag.
   				 	pAO->sp_aniframe=0;	// Reset animtaion frame counter.
				 	pAO->sp_aninum=8;	// Set aninmation sequence.
					pAO->sp_anitimer=0;	// Reset anim. timer if changing speed below.
					pAO->sp_anispeed=3;	// Set animation speed.
					pAO->sp_aniuser=OFF; // Reset HOLD anim. sequence variable.
					pAO->sp_mode=MODE_STANDJUMPFALL; // Enter stand jump fall mode.
			    }
			   	else
				{
					Glue=pAO->sp_xvel>>8; // Calculate amount of glue to stick sprite to contour tile with, based on sprite's x velocity.
					if(Glue<0){Glue=Glue-(Glue<<1);} // Negate value if it was a negative value.
					if(pAO->sp_yvel>=0&&Tile2!=COLLISION_TILE_1&&Tile2!=COLLISION_TILE_1){pAO->sp_ypos+=Glue;} // If not jumping & also not on a 'flat platfrom' tile area - add gravity.
					pAO->sp_var4=OFF;	// Flag not hit ground.
				}
				break;

			case COLLISION_TILE_1:	 		// Whole 'moon' tile :) ?.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
				pAO->sp_ypos-=Contour01[XOffset]; // Combine y-offset contour. 
				pAO->sp_var4=ON;		// Flag hit ground.
				break;

			case COLLISION_TILE_2:			// 22deg right slope tile 1.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
				pAO->sp_ypos-=Contour02[XOffset]; // Combine y-offset contour.
				pAO->sp_var4=ON;		// Flag hit ground.
				break;

			case COLLISION_TILE_3:			// 22deg right slope tile 2.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
				pAO->sp_ypos-=Contour03[XOffset]; // Combine y-offset contour.
				pAO->sp_var4=ON;		// Flag hit ground.
				break;

			case COLLISION_TILE_4:			// 22deg left slope tile 1.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
				pAO->sp_ypos-=Contour04[XOffset]; // Combine y-offset contour.
				pAO->sp_var4=ON;		// Flag hit ground.
				break;

			case COLLISION_TILE_5:			// 22deg left slope tile 2.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
				pAO->sp_ypos-=Contour05[XOffset]; // Combine y-offset contour.
				pAO->sp_var4=ON;		// Flag hit ground.
				break;

			case COLLISION_TILE_6:			// 45deg right slope tile.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
				pAO->sp_ypos-=Contour06[XOffset]; // Combine y-offset contour.
				pAO->sp_var4=ON;		// Flag hit ground.
				break;

			case COLLISION_TILE_7:			// 45deg left slope tile.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
		   		pAO->sp_ypos-=Contour07[XOffset]; // Combine y-offset contour.
				pAO->sp_var4=ON;		// Flag hit ground.
				break;

			case COLLISION_TILE_8:			// Half 'moon' tile :) ?.
				pAO->sp_ypos=pAO->sp_ypos|7;// Force to bottom of tile ready for contour offset.
		   		pAO->sp_ypos-=Contour08[XOffset]; // Combine y-offset contour.
				pAO->sp_var4=ON;		// Flag hit ground.
				break;
		};
	}

//--

// Check for wall tile 'combinations' (i.e. a wall combination being 2 tiles or more high, else it must be a single wall tile which forms a step up).

	if(pAO->sp_type==TYPE_SPONGEBOB)   	// SpongeBob sprite ?. 
	{
		Tile3=pCollision_Map[(MapX+1)+((MapY)*map_x_size_tiles)]; // Read tile at next y map location down.
		Tile4=pCollision_Map[(MapX+1)+((MapY-1)*map_x_size_tiles)]; // Read tile at next y map location down.
		if(Tile3==COLLISION_TILE_1&&Tile4==COLLISION_TILE_1) // Check for wall tile combination (whole 'moon' tiles) ?.
		{
			pAO->sp_xpos=pAO->sp_xpos&0xfff8; // Force to left of tile.
		}

		Tile3=pCollision_Map[(MapX-1)+((MapY)*map_x_size_tiles)]; // Read tile at next y map location down.
		Tile4=pCollision_Map[(MapX-1)+((MapY-1)*map_x_size_tiles)]; // Read tile at next y map location down.
		if(Tile3==COLLISION_TILE_1&&Tile4==COLLISION_TILE_1) // Check for wall tile combination (whole 'moon' tiles) ?.
		{
			pAO->sp_xpos=pAO->sp_xpos&0xfff8; // Force to right of tile.
			pAO->sp_xpos+=8;
		}
	}

//--

// Check for ceiling tiles.

	if(pAO->sp_yvel<0)					// If sprite moving upwards, check for ceiling tiles.
	{
		Tile5=pCollision_Map[MapX+((MapY-(pAO->sp_ysize>>3)+2)*map_x_size_tiles)]; // Read tile at top of sprite.
		if(Tile5==COLLISION_TILE_9)		// Check for ceiling tile ?.
		{
			pAO->sp_ypos+=8;			// Force to bottom of tile.
			pAO->sp_yvel=0;				// Stop sprite now !.
		}
	}

//--

}

//---------------------------------------------------------------------------------------------------

// Contour tile data.

// Note: 8 definition bytes per tile.

const u8 Contour01[8]={8,8,8,8,8,8,8,8,}; // Whole 'moon' tile :)
const u8 Contour02[8]={1,1,2,2,3,3,4,4,}; // 22deg right slope tile 1.
const u8 Contour03[8]={5,5,6,6,7,7,8,8,}; // 22deg right slope tile 2.
const u8 Contour04[8]={8,8,7,7,6,6,5,5,}; // 22deg left slope tile 1.
const u8 Contour05[8]={4,4,3,3,2,2,1,1,}; // 22deg left slope tile 2.	
const u8 Contour06[8]={1,2,3,4,5,6,7,8,}; // 45deg right slope tile.
const u8 Contour07[8]={8,7,6,5,4,3,2,1,}; // 45deg left slope tile.			
const u8 Contour08[8]={4,4,4,4,4,4,4,4,}; // Half 'moon' tile :)
const u8 Contour09[8]={0,0,0,0,0,0,0,0,}; // Ceiling tile.	

//***************************************************************************************************

//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Sprite To Sprite Collision (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "Scroll_Engine.h"
#include "Collision.h"

//***************************************************************************************************

// Check 'SpongeBob' to 'Moving Platforms'.

void SB2MovingPlats(void)
{
	s8 Collision;								// Local variables.

//	ClearTextLayer();					   		// Assert test only !!!.
//	DmaArrayCopy(3,ScreenDat,TEXT_SCREEN,16);

	Collision=CheckCollision(TYPE_SPONGEBOB,8,0,TYPE_PLATFORMS,0,0); // Check for 'box' collision between 'source' sprite & total number of active 'compare' sprites.

	if(Collision>-1)							// Collision ?.
	{
//		sprintf(DEBUGBUFFER,"COLLISION");  		// Assert test only !!!.
//		PutTextBox(0,17,11,3,DEBUGBUFFER);
 	}
}

//***************************************************************************************************

// Check for 'box' collision between 'source' sprite & total number of active 'compare' sprites.

// Note: 1) The 'source' sprite 'TYPE_n' must be passed in 's'.
//		 2) The fine-x & fine-y collision box offset for the 'source' sprite must be passed in 'sFineX' & sFineY'
//		 3) The 'compare' sprite 'TYPE_n' must be passed in 'c'. 
//		 4) The fine-x & fine-y collision box offset for the 'compare' sprite must be passed in 'cFineX' & cFineY'

u8 CheckCollision(u8 s,u8 sFineX,u8 sFineY,u8 c,u8 cFineX,u8 cFineY)
{
	s8 Collision,x,NumCompareSprs;		// Local variables.

	Object *pAOs;								// Object table pointers.
	Object *pAOc;
	Object *pAOn;

	pAOs=g_pObject;								// Get copy of global object pointer (source).
	pAOc=g_pObject;								// Get copy of global object pointer (compare).
	pAOn=g_pObject;								// Get copy of global object pointer (compare 'n').

	NumCompareSprs=0;

	for(x=0;x!=numUsedObjects;x++,pAOs++)	   	// Scan forward through objects currently in use.
	{
		if(pAOs->sp_type==s){break;}			// Found 'source' sprite slot address ?.
	}

	for(x=0;x!=numUsedObjects;x++,pAOc++,pAOn++) // Scan forward through objects currently in use.
	{
		if(pAOc->sp_type==c){break;}			// Found 'compare' base sprite slot address ?.
	}

	for(NumCompareSprs=1;NumCompareSprs!=numUsedObjects;NumCompareSprs++,pAOn++) // Continue scan forward to find last of active 'compare' sprites.
	{
		if(pAOn->sp_type!=c){NumCompareSprs--;break;} // Found last 'compare'n' sprite ?.
	}

	Collision=-1;								// Default = no sprite hit.

	for(x=0;x<NumCompareSprs;x++,pAOc++)	 	// Loop the number of 'compare' sprites. 
	{ 
		if(pAOc->sp_type!=TYPE_OFF&&pAOc->sp_display==ON&& // If sprite is on, then check for sprite box to box collision. 
		((pAOc->sp_xpos+(pAOc->sp_xsize-cFineX))>=pAOs->sp_xpos+sFineX)&&
		(pAOc->sp_xpos+cFineX<=(pAOs->sp_xpos+(pAOs->sp_xsize-sFineX)))&& 
		((pAOc->sp_ypos+(pAOc->sp_ysize-cFineY))>=pAOs->sp_ypos+sFineY)&& 
		(pAOc->sp_ypos+cFineY<=(pAOs->sp_ypos+(pAOs->sp_ysize-sFineY))))
		{
//			if(pAOc->sp_type!=TYPE_PLATFORMS)	// Don't switch off if collision with 'Moving Platform' ?.
//			{
				pAOc->sp_xpos=-(pAOc->sp_xsize<<1);	// Reset current sprites screen position 'off screen' by twice size !.
				pAOc->sp_ypos=-(pAOc->sp_ysize<<1);
				pAOc->sp_xvel=0;			   	// Reset velocities.
				pAOc->sp_yvel=0;
//			}
			Collision=x;						// 'Compare' sprite hit number (no collision = -1, collision = 0 to n). 
			break;
 		}
	}
	return Collision;
}

//***************************************************************************************************

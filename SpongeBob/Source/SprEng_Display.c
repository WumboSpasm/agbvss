//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Display (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Display.h"
#include "SineCos.h"

//***************************************************************************************************

// Update and display sprites.

void ObjectDisplay(void)
{
	ObjectCreateOAM();					 		// Create OAM buffer.
}

//***************************************************************************************************

// Create OAM buffer.

void ObjectCreateOAM(void)
{
    s16 pA,pB,pC,pD;							// Local rotation/scaling variables.
	u16 OAMOffset,OAMLoop;						// Local OAM update variables.
	Object *pAO;								// Object table pointer.

	ClearOAMRam();								// Initialize OAM RAM memory.

	pAO=g_pObject;								// Get base address of object table.
	OAMOffset=0;								// Init. offset into OAM buffer.

	*(vu16*)REG_MOSAIC=((u16)SpriteMosaic<<12)|((u16)SpriteMosaic<<8); // Set global sprite mosaic value.

	for(OAMLoop=0;OAMLoop!=numUsedObjects;OAMLoop++) // Refresh and update the OAM buffer with all the sprite objects currently in use.
	{
		ObjectOAMBuffer[OAMOffset+0]=OAM_SQUARE|OAM_COLOR_256|pAO->sp_affine|pAO->sp_blend|pAO->sp_mosaic; // Vertical size 64, 256 color mode, mosaic on/off, scaling/rotation on.
		ObjectOAMBuffer[OAMOffset+1]=OAM_SIZE_64x64>>16|OAMLoop<<9; // Horizontal size 64, scaling/rotation parameter 0.
		ObjectOAMBuffer[OAMOffset+2]=pAO->sp_priority<<10|64*(OAMLoop*2); // Priority (relative to background), character name.

		pAO->sp_startX=pAO->sp_xpos+32;  	   	// Adjustment because it takes ob_pos_x,ob_pos_y as (0,0).
		pAO->sp_startY=pAO->sp_ypos+32;  	   	// Object position changes depending upon whether it uses doule size field
		if(pAO->sp_affine==OAM_AFFINE_TWICE)   	// Affine double size used ?.
		{
			pAO->sp_startX-=64;
			pAO->sp_startY-=64;
		}
		else
		{
			pAO->sp_startX-=64/2;
			pAO->sp_startY-=64/2;
		}

		ObjectOAMBuffer[OAMOffset+0]|=(u16)((s32)(pAO->sp_startY)&0x00ff); //  Set object position.
		ObjectOAMBuffer[OAMOffset+1]|=(u16)((s32)(pAO->sp_startX)&0x01ff);

		if(pAO->sp_flipX)					   	// Flip sprite in x-axis ?.
		{
			ObjectOAMBuffer[OAMOffset+1]|=OAM_H_FLIP>>16;
		}
		if(pAO->sp_flipY)					   	// Flip sprite in y-axis ?.
		{
			ObjectOAMBuffer[OAMOffset+1]|=OAM_V_FLIP>>16;
		}

		if(pAO->sp_mosaic)					   	// Use global sprite mosaic for this sprite ?.
		{
			ObjectOAMBuffer[OAMOffset+0]|=OAM_MOS_ON;
		}
		else
		{
			ObjectOAMBuffer[OAMOffset+1]|=OAM_MOS_OFF;
		}

		// Set scaling/rotation parameters.
		pA=FixMul(Cos(pAO->sp_rotate),FixInverse(pAO->sp_scaleX));
		pB=FixMul(Sin(pAO->sp_rotate),FixInverse(pAO->sp_scaleX));
	 	pC=FixMul(-Sin(pAO->sp_rotate),FixInverse(pAO->sp_scaleY)); // You get an odd rotate effect if you leave off the '-' @ge :)
		pD=FixMul(Cos(pAO->sp_rotate),FixInverse(pAO->sp_scaleY));

		ObjectOAMBuffer[OAMOffset+3 ]=*(u16*)(&pA); // Interleave for 64x64 rotatable/scaleable sprites.
		ObjectOAMBuffer[OAMOffset+7 ]=*(u16*)(&pB);
		ObjectOAMBuffer[OAMOffset+11]=*(u16*)(&pC);
		ObjectOAMBuffer[OAMOffset+15]=*(u16*)(&pD);

		pAO++;									// Get next object in object table.
		OAMOffset+=16;							// Offset to next sprite in OAM RAM (bytes).
	}

	UpdateOAMRam();								// Update OAM RAM memory.
}

//***************************************************************************************************

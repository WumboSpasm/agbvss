//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Display (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Animate.h"
#include "SprEng_Display.h"
#include "SineCos.h"

/////////////////////////////////////////////////
// Function Definitions.
/////////////////////////////////////////////////
static void ObjectCreateOAM(void);

//***************************************************************************************************

// Update sprites (display).

void ObjectDisplay(void)
{
	ObjectCreateOAM();					 		// Create sprite OAM buffer.
}

//***************************************************************************************************

// Create sprite OAM buffer.

static void ObjectCreateOAM(void)
{
    s16 pA,pB,pC,pD;									// Local rotation/scaling variables.
	u8 OAMLoop;											// Local OAM update variables.
	Object *pAO;										// Object table pointer.

	pAO=g_pObject;										// Get base address of object table.
	gOAMOffset=0;										// Init. offset into OAM buffer.

	*(vu16*)REG_MOSAIC=((u16)SpriteMosaic<<12)|((u16)SpriteMosaic<<8); // Set global sprite mosaic value.

	for(OAMLoop=0;OAMLoop!=numUsedObjects;OAMLoop++) 	// Refresh and update the OAM buffer with all the sprite objects currently in use.
	{
		ObjectOAMBuffer[gOAMOffset+0]=(u16)((s32)(-pAO->sp_size)&0x00ff); // Reset current sprites screen position 'off screen'.
		ObjectOAMBuffer[gOAMOffset+1]=(u16)((s32)(-pAO->sp_size)&0x01ff);

		if(pAO->sp_type>0)								// Is sprite on ?.
		{
			pAO->sp_screenX=pAO->sp_xpos-map_xpos; 		// Calculate sprite screen co-ords. from world co-ords.
			pAO->sp_screenY=pAO->sp_ypos-map_ypos;

  			if((pAO->sp_screenX<=(0-pAO->sp_size)-8)||  // Check if sprite is off screen.
			(pAO->sp_screenX>=LCD_WIDTH+8)||
			(pAO->sp_screenY<=(0-pAO->sp_size)-8)||
			(pAO->sp_screenY>=LCD_HEIGHT+8))
			{
			}
			else
			{
  				ObjectOAMBuffer[gOAMOffset+0]=OAM_SQUARE|OAM_COLOR_256|pAO->sp_affine|pAO->sp_blend|pAO->sp_mosaic; // Vertical size 64, 256 color mode, mosaic on/off, scaling/rotation on.
				ObjectOAMBuffer[gOAMOffset+1]=(gOAMOffset>>4)<<9;// Scaling/rotation parameter 0.
				ObjectOAMBuffer[gOAMOffset+2]=pAO->sp_priority<<10|64*((gOAMOffset>>4)*2); // Priority (relative to background), character name.

				switch(pAO->sp_size)		   			// Set sprite size.
				{
					case 8:
						ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_8x8>>16; // Horizontal size of square sprite.    			
   	 	   				break;
					case 16:
						ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_16x16>>16; // Etc.    			
   	 			   		break;
					case 32:
					  	ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_32x32>>16;    			
   	 	   				break;
					case 64:
						ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_64x64>>16;    			
    			   		break;
				};

				if(pAO->sp_affine==OAM_AFFINE_TWICE)   	// Affine double size used ?.
				{
					pAO->sp_screenX-=(pAO->sp_size>>1); // Adjustment because it takes ob_pos_x,ob_pos_y as (0,0).
					pAO->sp_screenY-=(pAO->sp_size>>1); // Object position changes depending upon whether it uses doule size field
				}

				ObjectOAMBuffer[gOAMOffset+0]|=(u16)((s32)(pAO->sp_screenY)&0x00ff); // Set object screen position.
				ObjectOAMBuffer[gOAMOffset+1]|=(u16)((s32)(pAO->sp_screenX)&0x01ff);

				if(pAO->sp_flipX)					   	// Flip sprite in x-axis ?.
				{
					ObjectOAMBuffer[gOAMOffset+1]|=OAM_H_FLIP>>16;
				}
				if(pAO->sp_flipY)					   	// Flip sprite in y-axis ?.
				{
					ObjectOAMBuffer[gOAMOffset+1]|=OAM_V_FLIP>>16;
				}

				if(pAO->sp_mosaic)					   	// Use global sprite mosaic for this sprite ?.
				{
					ObjectOAMBuffer[gOAMOffset+0]|=OAM_MOS_ON;
				}
				else
				{
					ObjectOAMBuffer[gOAMOffset+1]|=OAM_MOS_OFF;
				}

				// Set scaling/rotation parameters.
				pA=FixMul(Cos(pAO->sp_rotate),FixInverse(pAO->sp_scaleX));
				pB=FixMul(Sin(pAO->sp_rotate),FixInverse(pAO->sp_scaleX));
		 		pC=FixMul(-Sin(pAO->sp_rotate),FixInverse(pAO->sp_scaleY)); // You get an odd rotate effect if you leave off the '-' @ge :)
				pD=FixMul(Cos(pAO->sp_rotate),FixInverse(pAO->sp_scaleY));

				ObjectOAMBuffer[gOAMOffset+3 ]=*(u16*)(&pA); // Interleave for 64x64 rotatable/scaleable sprites.
				ObjectOAMBuffer[gOAMOffset+7 ]=*(u16*)(&pB);
				ObjectOAMBuffer[gOAMOffset+11]=*(u16*)(&pC);
				ObjectOAMBuffer[gOAMOffset+15]=*(u16*)(&pD);

				ObjectAnimate(pAO);						// Update sprites (animation).

				gOAMOffset+=16;							// Offset to next sprite in OAM RAM (bytes).

				if((gOAMOffset>>4)>=32) {gOAMOffset-=16;} // Prevent '>=32' sprite usage of OAM overspill by re-writing over last sprite again !.
	   		}
		}
		pAO++;											// Get next object in object table.
 	}
	UpdateOAMRam();										// Update OAM RAM memory.
}

//***************************************************************************************************

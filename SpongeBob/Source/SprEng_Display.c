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

//***************************************************************************************************

// Update sprites (display) - (i.e. create actual sprite OAM buffer).

// Sprite sizes supported (taken from offical Nintendo AGB includes 'AgbDefine.h'.

//	OAM_SIZE_8x8	0x00000000							// OBJ 8 x 8 dot.
//	OAM_SIZE_16x16	0x40000000							// OBJ 16 x 16 dot.
//	OAM_SIZE_32x32	0x80000000							// OBJ 32 x 32 dot.
//	OAM_SIZE_64x64	0xc0000000  						// OBJ 64 x 64 dot.
//	OAM_SIZE_16x8	0x00004000							// OBJ 16 x 8 dot.
//	OAM_SIZE_32x8	0x40004000							// OBJ 32 x 8 dot.
//	OAM_SIZE_32x16	0x80004000							// OBJ 32 x 16 dot.
//	OAM_SIZE_64x32	0xc0004000							// OBJ 64 x 32 dot.
//	OAM_SIZE_8x16	0x00008000							// OBJ 8 x 16 dot.
//	OAM_SIZE_8x32	0x40008000							// OBJ 8 x 32 dot.
//	OAM_SIZE_16x32	0x80008000							// OBJ 16 x 32 dot.
//	OAM_SIZE_32x64	0xc0008000							// OBJ 32 x 64 dot.

void ObjectDisplay(void)
{
    s16 pA,pB,pC,pD;									// Local rotation/scaling variables.
	u8 OAMLoop;											// Local OAM update variables.
	Object *pAO;										// Object table pointer.

	ClearOAMBuffer();							 		// Initialize OAM buffer with default parameters.

	pAO=g_pObject;										// Get base address of object table.
	gOAMOffset=0;										// Init. offset into OAM buffer.

	*(vu16*)REG_MOSAIC=((u16)gSpriteMosaic<<12)|((u16)gSpriteMosaic<<8); // Set global sprite mosaic value.

	for(OAMLoop=0;OAMLoop!=numUsedObjects;OAMLoop++) 	// Refresh and update the OAM buffer with all the sprite objects currently in use.
	{
		if(pAO->sp_type!=TYPE_OFF)						// Is sprite on ?.
		{
			pAO->sp_screenX=pAO->sp_xpos-map_xpos;		// Calculate sprite screen co-ords. from world co-ords.
			pAO->sp_screenY=pAO->sp_ypos-map_ypos;

  			if((pAO->sp_screenX<=(0-pAO->sp_xsize)-8)||  // Check if sprite is 'off' screen ?.
			(pAO->sp_screenX>=LCD_WIDTH+8)||
			(pAO->sp_screenY<=(0-pAO->sp_ysize)-8)||
			(pAO->sp_screenY>=LCD_HEIGHT+8))
			{
				pAO->sp_display=OFF;					// Flag sprite is 'off' screen.
			}
			else
			{
				pAO->sp_display=ON;						// Flag sprite is 'on' screen.

	 			ObjectOAMBuffer[gOAMOffset+0]=OAM_COLOR_256|pAO->sp_affine|pAO->sp_blend|pAO->sp_mosaic; // 256 color mode, mosaic on/off, scaling/rotation on.

				if(pAO->sp_affine!=OAM_AFFINE_NONE) // Sprite rotation param. set required for this sprite ?.
				{
					ObjectOAMBuffer[gOAMOffset+1]=gOAMOffset<<5; // Scaling/rotation parameter 0.
				}

				ObjectOAMBuffer[gOAMOffset+2]=pAO->sp_priority<<10|gOAMOffset<<1; // Priority (relative to background), character name (every 4th 64*64 sprite window in vram !!!).

				switch(pAO->sp_xsize)		   			// Set sprite shape & size.
				{
					case 8:								// x=8 * y=8/16/32/64 ?.
						switch(pAO->sp_ysize)
						{
							case 8:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_SQUARE; // Sprite shape.
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_8x8>>16; // Sprite size.    			
								break;
							case 16:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_V_RECTANGLE; // Etc.
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_8x16>>16;    			
   	 			   				break;
							case 32:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_V_RECTANGLE;
							  	ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_8x32>>16;    			
   	 	   						break;
//							This size not supported by AGB hardware.
//							case 64:
//				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_V_RECTANGLE;
//								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_8x64>>16;    			
//    					   		break;
	   					}
   	 	   				break;

					case 16:	   						// x=16 * y=8/16/32/64 ?.
						switch(pAO->sp_ysize)
						{
							case 8:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_H_RECTANGLE;
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_16x8>>16;    			
								break;
							case 16:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_SQUARE;
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_16x16>>16;    			
   	 			   				break;
							case 32:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_V_RECTANGLE;
							  	ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_16x32>>16;    			
   	 	   						break;
//							This size not supported by AGB hardware.
//							case 64:
//				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_V_RECTANGLE;
//								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_16x64>>16;    			
//    					   		break;
	   					}
   	 	   				break;


					case 32:	   						// x=32 * y=8/16/32/64 ?.
						switch(pAO->sp_ysize)
						{
							case 8:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_H_RECTANGLE;
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_32x8>>16;    			
								break;
							case 16:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_H_RECTANGLE;
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_32x16>>16;    			
   	 			   				break;
							case 32:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_SQUARE;
							  	ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_32x32>>16;    			
   	 	   						break;
							case 64:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_V_RECTANGLE;
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_32x64>>16;    			
    					   		break;
	   					}
   	 	   				break;

					case 64:	   						// x=64 * y=8/16/32/64 ?.
						switch(pAO->sp_ysize)
						{
//							This size not supported by AGB hardware.
//							case 8:
//				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_H_RECTANGLE;
//								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_64x8>>16;    			
//								break;
//							This size not supported by AGB hardware.
//							case 16:
//				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_H_RECTANGLE;
//								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_64x16>>16;    			
//   	 			   				break;
							case 32:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_H_RECTANGLE;
							  	ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_64x32>>16;    			
   	 	   						break;
							case 64:
				  				ObjectOAMBuffer[gOAMOffset+0]|=OAM_SQUARE;
								ObjectOAMBuffer[gOAMOffset+1]|=OAM_SIZE_64x64>>16;    			
    					   		break;
	   					}
   	 	   				break;
				};

				if(pAO->sp_affine==OAM_AFFINE_TWICE)	// Affine double size used ?.
				{
					pAO->sp_screenX-=(pAO->sp_xsize>>1); // Adjustment because it takes ob_pos_x,ob_pos_y as (0,0).
					pAO->sp_screenY-=(pAO->sp_ysize>>1); // Object position changes depending upon whether it uses doule size field
				}

				ObjectOAMBuffer[gOAMOffset+0]|=(u16)((s32)(pAO->sp_screenY)&0x00ff); // Set object screen position.
				ObjectOAMBuffer[gOAMOffset+1]|=(u16)((s32)(pAO->sp_screenX)&0x01ff);

				if(pAO->sp_flipX==ON)				   	// Flip sprite in x-axis ?.
				{
					ObjectOAMBuffer[gOAMOffset+1]|=OAM_H_FLIP>>16;
				}
				if(pAO->sp_flipY==ON)				   	// Flip sprite in y-axis ?.
				{
					ObjectOAMBuffer[gOAMOffset+1]|=OAM_V_FLIP>>16;
				}
 
				if(pAO->sp_mosaic==ON)				   	// Use global sprite mosaic for this sprite ?.
				{
					ObjectOAMBuffer[gOAMOffset+0]|=OAM_MOS_ON;
				}
				else
				{
					ObjectOAMBuffer[gOAMOffset+0]|=OAM_MOS_OFF;
				}

				if(pAO->sp_flash==ON)		  		   	// Flash sprite ?.
				{
					pAO->sp_flshspd++;
					if(pAO->sp_flshspd<FlashSpeed>>1) {ObjectOff(pAO);} // Turn OFF sprite ?.
					if(pAO->sp_flshspd>=FlashSpeed) {pAO->sp_flshspd=0;}
					pAO->sp_delay++;
					if(pAO->sp_delay>FlashTimer) {pAO->sp_delay=0;pAO->sp_flshspd=0;pAO->sp_flash=0;} // Stop flashing sprite yet & reset flash flag & timers ?.
				}

				pA=FixMul(Cos(pAO->sp_rotate),FixInverse(pAO->sp_scaleX)); // Set scaling/rotation parameters.
				pB=FixMul(Sin(pAO->sp_rotate),FixInverse(pAO->sp_scaleX));
		 		pC=FixMul(-Sin(pAO->sp_rotate),FixInverse(pAO->sp_scaleY)); // You get an odd rotate effect if you leave off the '-' @ge :)
				pD=FixMul(Cos(pAO->sp_rotate),FixInverse(pAO->sp_scaleY));

				ObjectOAMBuffer[gOAMOffset+3 ]=*(u16*)(&pA); // Interleave for rotatable/scaleable sprites.
				ObjectOAMBuffer[gOAMOffset+7 ]=*(u16*)(&pB);
				ObjectOAMBuffer[gOAMOffset+11]=*(u16*)(&pC);
				ObjectOAMBuffer[gOAMOffset+15]=*(u16*)(&pD);

				ObjectAnimate(pAO);						// Update sprites (animation).

				gOAMOffset+=16;							// Offset to next sprite slot in OAM RAM (words).

				if((gOAMOffset>>4)>31){gOAMOffset-=16;}	// Prevent more than 32 sprite usage of OAM overspill ?.
	   		}
		}
		pAO++;											// Get next object in object table.
 	}
	UpdateOAMRam();										// Update OAM RAM memory.
}

//***************************************************************************************************

// Turn OFF sprite (place it off screen offset by it's physical size).

void ObjectOff(Object* pAO)
{
	ObjectOAMBuffer[gOAMOffset+0]=(u16)((s32)(-(pAO->sp_xsize<<1))&0x00ff); // Reset current sprites screen position 'off screen' by twice size !.
	ObjectOAMBuffer[gOAMOffset+1]=(u16)((s32)(-(pAO->sp_ysize<<1))&0x01ff);
}

//***************************************************************************************************

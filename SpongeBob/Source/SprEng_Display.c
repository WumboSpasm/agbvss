//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Display (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"

//***************************************************************************************************

// Update and display sprites.

void ObjectDisplay(void)
{
   	*(vu16 *)REG_MOSAIC=((u16)ObjectMosaic<<12)|((u16)ObjectMosaic<<8);	// Set mosaic.
   	DmaCopy(3,ObjectOAMBuffer,OAM,32,32);			// DMA transfer of OAM.

	ObjectTest();									// Object test routine.
	ObjectCreateOAM();								// Create OAM buffer.
}

//***************************************************************************************************

// Initialize variables.

void ObjectInitParam(void)
{
    ObjectAffine=0;
    ObjectMosaic=0;
    ObjectScaleX=0x100;
    ObjectScaleY=0x100;
    ObjectRotate=0;
    ObjectPosX=0;
    ObjectPosY=0;
}

//***************************************************************************************************

// Initialize OAM buffer.

void ObjectInitOAM(void)
{
    int i;

    for(i=1;i<16;++i)
    {
		ObjectOAMBuffer[i]=0;
    }
    ObjectCreateOAM();
}

//***************************************************************************************************

// Create OAM buffer.

void ObjectCreateOAM(void)
{
    s16 pA,pB,pC,pD;
    s16 StartX,StartY;

    ObjectOAMBuffer[0]=OAM_SQUARE|OAM_COLOR_256|OAM_AFFINE_NORMAL|OAM_MOS_ON; // Vertical size 64, color mode, mosaic, scaling/rotation on.
    ObjectOAMBuffer[1]=OAM_SIZE_64x64>>16;	// Horizontal size 32, scaling/rotation parameter 0.
    ObjectOAMBuffer[2]=0x0000;				// Palette 0, priority 0, character name 0.

    StartX=ObjectPosX+32;					// Adjustment because it takes ob_pos_x,ob_pos_y as (0,0).
    StartY=ObjectPosY+32;					// Object position changes depending upon whether it uses doule size field

    if(ObjectAffine)						// Affine double size used ?.
    {
		ObjectOAMBuffer[0]|=0x0200;
		StartX-=64;
		StartY-=64;
    }
    else
    {
		StartX-=64/2;
		StartY-=64/2;
    }

    ObjectOAMBuffer[0]|=(u16)((s32)(StartY)&0x00ff); //  Set object position.
    ObjectOAMBuffer[1]|=(u16)((s32)(StartX)&0x01ff);

	// Set scaling/rotation parameters.
    pA=FixMul(Cos(ObjectRotate),FixInverse(ObjectScaleX));
    pB=FixMul(Sin(ObjectRotate),FixInverse(ObjectScaleX));
    pC=FixMul(-Sin(ObjectRotate),FixInverse(ObjectScaleY)); // You get an odd rotate effect if you leave off the '-' @ge :) 
    pD=FixMul(Cos(ObjectRotate),FixInverse(ObjectScaleY));

    ObjectOAMBuffer[ 3]=*(u16*)(&pA);
    ObjectOAMBuffer[ 7]=*(u16*)(&pB);
    ObjectOAMBuffer[11]=*(u16*)(&pC);
    ObjectOAMBuffer[15]=*(u16*)(&pD);
}

//***************************************************************************************************

// Object test routine.

void ObjectTest(void)
{
	// Initialize with START.
    if (gKeyInput&START_BUTTON )
    {
		ObjectInitParam();
    }

	// Double size with A.
    if(gKeyInput&A_BUTTON)
    {
		ObjectAffine^=1;
    }

	// Scale if B & Joypad.
	if(gKeyInput&B_BUTTON )
    {
		if (gKeyInput&U_KEY)
		{
		    ObjectScaleY+=0x10;
		    if(ObjectScaleY>0x400) ObjectScaleY=0x400;
		}
		if (gKeyInput&D_KEY)
		{
		    ObjectScaleY-=0x08;
		    if(ObjectScaleY<0x40) ObjectScaleY=0x40;
		}
		if (gKeyInput&L_KEY)
		{
		    ObjectScaleX-=0x08;
		    if(ObjectScaleX<0x40) ObjectScaleX=0x40;
		}
		if (gKeyInput&R_KEY)
		{
		    ObjectScaleX+=0x10;
		    if(ObjectScaleX>0x400) ObjectScaleX=0x400;
		}
	}

	// Rotate with L & R.
	if (gKeyInput&R_BUTTON)
	{
	    ObjectRotate=(++ObjectRotate)&0xff;
	}
	if (gKeyInput&L_BUTTON)
	{
	    ObjectRotate=(ObjectRotate+0xff)&0xff;
	}

	// Move sprite with limits test.
	if (gKeyInput&U_KEY)
	{
	    ObjectPosY-=1;
	    if(ObjectPosY<0) ObjectPosY=0;
	}
	if (gKeyInput&D_KEY)
	{
	    ObjectPosY+=1;
	    if(ObjectPosY>LCD_HEIGHT-64)ObjectPosY=LCD_HEIGHT-64;
	}
	if (gKeyInput&L_KEY)
	{
	    ObjectPosX-=1;
	    if(ObjectPosX<0)ObjectPosX=0;
	}
	if (gKeyInput&R_KEY)
	{
	    ObjectPosX+=1;
	    if(ObjectPosX>LCD_WIDTH-64) ObjectPosX=LCD_WIDTH-64;
	}

/*	// Mosaic with L & R.
	if (gKeyInput&R_BUTTON)
	{
   	    if(ObjectMosaic<15) ++ObjectMosaic;
	}
	if (gKeyInput&L_BUTTON)
	{
	    if(ObjectMosaic>0) --ObjectMosaic;
	}
*/
}

//***************************************************************************************************

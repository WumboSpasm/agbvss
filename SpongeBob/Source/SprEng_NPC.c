//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - NPC Sprite Control (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Scroll_Engine.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "Contours.h"

//***************************************************************************************************

void SpriteControl02()
{
	Object *pAO;

	pAO=g_pObject;	 				// Get copy of global object pointer.

//--

	pAO->sp_xpos+=(pAO->sp_xvel>>8); // Add velocity into sprite positions.
	pAO->sp_ypos+=(pAO->sp_yvel>>8);

	switch (pAO->sp_mode)			// Get sprite's current mode.
	{

//--

// Static - no movement.

		case MODE_NPC_PATRICK_STATIC:

			break;

//--

// Move left & right.

		case MODE_NPC_PATRICK_LEFTRIGHT:

			if(pAO->sp_xpos<=0){pAO->sp_xvel=RUNMAXVEL;} // Add inertia.
//			if(pAO->sp_xpos>=map_x_size_pixels-pAO->sp_xsize){pAO->sp_xvel=-RUNMAXVEL;} // Add inertia.
			if(pAO->sp_xpos>=512){pAO->sp_xvel=-RUNMAXVEL;} // Add inertia.

			break;

//--

	}								// End of switch statement.

//--

	pAO->sp_rotate+=4;
	if(pAO->sp_rotate>255) {pAO->sp_rotate=0;} // Rotate sprite.

//	CheckContour(pAO);					   	// Check for platform contours and offset sprite accordingly.

//--

}

//***************************************************************************************************

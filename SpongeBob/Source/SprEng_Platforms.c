//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Platforms Sprite Control (Source).
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

void SpriteControl03()
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

		case MODE_PLATFORMS_STATIC:

			break;

//--

// Move platform left & right.

		case MODE_PLATFORMS_LEFTRIGHT:

			if(pAO->sp_xpos<=28*8){pAO->sp_xvel=PLATVEL;} // Add inertia.
			if(pAO->sp_xpos>=60*8){pAO->sp_xvel=-PLATVEL;} // Add inertia.

			break;

//--

// Move platform up & down.

		case MODE_PLATFORMS_UPDOWN:

			if(pAO->sp_ypos<=22*8){pAO->sp_yvel=PLATVEL;} // Add inertia.
			if(pAO->sp_ypos>=32*8){pAO->sp_yvel=-PLATVEL;} // Add inertia.

			break;

//--

	}								// End of switch statement.

//--

//	pAO->sp_rotate+=4;
//	if(pAO->sp_rotate>255) {pAO->sp_rotate=0;} // Rotate sprite.

//--

}

//***************************************************************************************************

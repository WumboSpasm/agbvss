//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Misc. 3 Sprite Control (Source).
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

void SpriteControl04()
{
	Object *pAO;

	pAO=g_pObject;							// Get copy of global pointer instead of using it directly coz it's cozy.

//--

	pAO->sp_xpos+=(pAO->sp_xvel>>8);		// Add velocity into sprite positions.
	pAO->sp_ypos+=(pAO->sp_yvel>>8);

//--

// Move platform up & down.

	if(pAO->sp_xpos<=36*8){pAO->sp_xvel=PLATVEL;} // Add inertia.
	if(pAO->sp_xpos>=50*8){pAO->sp_xvel=-PLATVEL;} // Add inertia.

//--

}

//***************************************************************************************************

//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Misc. 1 Sprite Control (Source).
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

	pAO=g_pObject;				// Get copy of global pointer instead of using it directly coz it's cozy.

//--

	pAO->sp_xpos+=(pAO->sp_xvel>>8); // Add velocity into sprite positions.
	pAO->sp_ypos+=(pAO->sp_yvel>>8);

//--

// Rotate sprite and follow platform contours.

	if(pAO->sp_xpos<=0){pAO->sp_xvel=WALKMAXVEL;} // Add inertia.
	if(pAO->sp_xpos>=map_x_size_pixels-pAO->sp_xsize){pAO->sp_xvel=-WALKMAXVEL;} // Add inertia.

//	if(pAO->sp_xvel<=-WALKMAXVEL) {pAO->sp_xvel=-WALKMAXVEL;} // Limit the velocities.
//	if(pAO->sp_xvel>=WALKMAXVEL) {pAO->sp_xvel=WALKMAXVEL;}

	pAO->sp_rotate+=2;
	if(pAO->sp_rotate>255) {pAO->sp_rotate=0;} // Rotate sprite.

	CheckContour(pAO);			// Check for platform contours and offset sprite accordingly.

//--

}

//***************************************************************************************************

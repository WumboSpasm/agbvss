//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Sprite 1 Control (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"

#include "Scroll_Engine.h"

//***************************************************************************************************

void Sprite1Control()
{
	Object *pAO;

	pAO=g_pObject;				// Get copy of global pointer instead of using it directly coz it's cozy.

	pAO->sp_xvel+=1;			// Acclerate right.
	pAO->sp_yvel-=0;			// Accelerate up.

	if(pAO->sp_xvel>=2) {pAO->sp_xvel=2;} // Limit the velocities.
	if(pAO->sp_yvel<=-2) {pAO->sp_yvel=-2;}

	pAO->sp_xpos+=pAO->sp_xvel; // Add vels into the positions.
	pAO->sp_ypos+=pAO->sp_yvel; // Add vels into the positions.

	pAO->sp_rotate+=4;			// Rotate sprite.
	if(pAO->sp_rotate>=256) {pAO->sp_rotate=0;}
}

//***************************************************************************************************
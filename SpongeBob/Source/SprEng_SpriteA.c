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

//***************************************************************************************************

void Sprite1Control()
{
	Object *pAO;

//	printf("Processing Sprite A\n");

	pAO=g_pObject;				// Get copy of global pointer instead of using it directly coz it's cozy.

	pAO->sp_xvel+=200;			// Acclerate right.
	pAO->sp_yvel-=200;			// Accelerate up.

	if(pAO->sp_xvel>=2000) {pAO->sp_xvel=2000;} // Limit the velocities.
	if(pAO->sp_yvel<=-2000) {pAO->sp_yvel=-2000;}

	pAO->sp_xpos+=pAO->sp_xvel; // Add vels into the positions.
	pAO->sp_ypos+=pAO->sp_yvel; // Add vels into the positions.
}

//***************************************************************************************************
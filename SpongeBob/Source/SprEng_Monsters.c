//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Monsters Sprite Control (Source).
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
	int x;					 		// Local variables.
	s32 XRange,YRange;

	Object *pAOBase; 				// Used to locate another sprite's address 'slot' later.

	Object *pAO;

	pAO=g_pObject;	 				// Get copy of global object pointer.

//--

	pAO->sp_xpos+=(pAO->sp_xvel>>8); // Add velocity into sprite positions.
	pAO->sp_ypos+=(pAO->sp_yvel>>8);

	switch (pAO->sp_mode)			// Get sprite's current mode.
	{

//---------------------------------------------------------------------------------------------------

// Static 'generic' - no movement.

		case MODE_MONSTERS_STATIC:

			break;

//---------------------------------------------------------------------------------------------------

// Clam wait & look left/right.

		case MODE_MONSTERS_CLAM_WAIT:

			pAOBase=g_pObjectBase;	// Get copy of global object pointer.

			for(x=0;x!=numUsedObjects;x++,pAOBase++) // Scan forward through objects currently in use.
			{
				if(pAOBase->sp_type==TYPE_SPONGEBOB){break;} // Found 'SPONGEBOB' sprite slot address ?.
			}

			if(pAOBase->sp_xpos<pAO->sp_xpos) // Flip clam to follow SpongeBob.
			{
				pAO->sp_flipX=ON;	// Set sprite h-flip.
			}
			else
			{
				pAO->sp_flipX=OFF;	// Set sprite h-flip.
			}

			XRange=(pAOBase->sp_xpos+(pAOBase->sp_xsize>>1))-(pAO->sp_xpos+(pAO->sp_xsize>>1)); // Calc. distance between center of clam & center of SpongeBob in x.
			if(XRange>-CLAMRANGE&&XRange<CLAMRANGE)	// Clam side snap if SpongeBob in range.
			{
			 	pAO->sp_aniframe=0;		// Reset animation frame counter.
			 	pAO->sp_aninum=109;		// Set aninmation sequence.
				pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=1;		// Set animation speed.
				pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
				pAO->sp_mode=MODE_MONSTERS_CLAM_SIDESNAP; // Enter clam sidesnap mode.

				// Overide to snap up mode if SpongeBob is in range and above clam !.
				YRange=(pAOBase->sp_ypos+(pAOBase->sp_ysize>>1))-(pAO->sp_ypos+(pAO->sp_ysize>>1)); // Calc. distance between center of clam & center of SpongeBob in y.
				if(YRange<-CLAMRANGE)		// Clam snap up if SpongeBob in range.
				{
					pAO->sp_yvel=CLAMJUMPVEL; // Clam jump up.

				 	pAO->sp_aniframe=0;		// Reset animation frame counter.
				 	pAO->sp_aninum=110;		// Set aninmation sequence.
					pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
					pAO->sp_anispeed=2;		// Set animation speed.
					pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
					pAO->sp_mode=MODE_MONSTERS_CLAM_SNAPUP; // Enter clam snap up mode.
				}
			}

			break;

//--

// Clam side snap.

		case MODE_MONSTERS_CLAM_SIDESNAP:

			pAOBase=g_pObjectBase;	// Get copy of global object pointer.

			for(x=0;x!=numUsedObjects;x++,pAOBase++) // Scan forward through objects currently in use.
			{
				if(pAOBase->sp_type==TYPE_SPONGEBOB){break;} // Found 'SPONGEBOB' sprite slot address ?.
			}

			if(pAOBase->sp_xpos<pAO->sp_xpos) // Flip clam to follow SpongeBob.
			{
				pAO->sp_flipX=ON;	// Set sprite h-flip.
			}
			else
			{
				pAO->sp_flipX=OFF;	// Set sprite h-flip.
			}

			if(pAO->sp_aniuser==ON)		// Animation sequence completed ?.
			{
			 	pAO->sp_aniframe=0;		// Reset animation frame counter.
			 	pAO->sp_aninum=108;		// Set aninmation sequence.
				pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=3;		// Set animation speed.
				pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
				pAO->sp_mode=MODE_MONSTERS_CLAM_WAIT; // Enter clam wait & look left/right mode.
			}

			break;

//--

// Clam snap up.

		case MODE_MONSTERS_CLAM_SNAPUP:

			pAOBase=g_pObjectBase;	// Get copy of global object pointer.

			for(x=0;x!=numUsedObjects;x++,pAOBase++) // Scan forward through objects currently in use.
			{
				if(pAOBase->sp_type==TYPE_SPONGEBOB){break;} // Found 'SPONGEBOB' sprite slot address ?.
			}

			if(pAOBase->sp_xpos<pAO->sp_xpos) // Flip clam to follow SpongeBob.
			{
				pAO->sp_flipX=ON;	// Set sprite h-flip.
			}
			else
			{
				pAO->sp_flipX=OFF;	// Set sprite h-flip.
			}

			pAO->sp_yvel+=GRAVITY;		// Add gravity.
			if(pAO->sp_yvel>=MAXGRAVITY) {pAO->sp_yvel=MAXGRAVITY;} 

 			if(pAO->sp_aniuser==ON&&pAO->sp_var4==ON) // Animation sequence completed & monster hit ground contour tile ?.
			{
				pAO->sp_var4=OFF;		// Reset hit ground flag for next time.

  		 		pAO->sp_yvel=0;			// Freeze y velocity only.

			 	pAO->sp_aniframe=0;		// Reset animation frame counter.
			 	pAO->sp_aninum=108;		// Set aninmation sequence.
				pAO->sp_anitimer=0;		// Reset anim. timer if changing speed below.
				pAO->sp_anispeed=3;		// Set animation speed.
				pAO->sp_aniuser=OFF; 	// Reset HOLD anim. sequence variable.
				pAO->sp_mode=MODE_MONSTERS_CLAM_WAIT; // Enter clam wait & look left/right mode.
			}

			CheckContour(pAO);			// Check for platform contours and offset sprite accordingly.

			break;

//---------------------------------------------------------------------------------------------------


	}								// End of switch statement.

//--

//	pAO->sp_rotate+=4;
//	if(pAO->sp_rotate>255) {pAO->sp_rotate=0;} // Rotate sprite.

//--

}

//***************************************************************************************************

//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Objects (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "SprEng_Common.h"
#include "SprEng_Control.h"
#include "SprEng_Animate.h"
#include "SprEng_Display.h"

//***************************************************************************************************

// ObjectControl1 - was "object_ctrl".

void ObjectControl1()
{
	u32 loop;							// Used as a loop counter.

	g_pObject=object_table;				// Point to start of object table with the global object pointer ( see objects.h )

	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
		switch(g_pObject->sp_type)		// Switch and case should optimise to a table so don't worry about the gayness.
		{
/*			case TYPE_SPRITEA:
				Sprite1Control();
				break;
			case TYPE_SPRITEB:
				Sprite2Control();
				break;
			case TYPE_SPRITEC:
				Sprite3Control();
				break;
			case TYPE_SPRITED:
				Sprite4Control();
				break;
*/
		}
		g_pObject++;					// Advance the global pointer for the next iteration.
	}

	g_pObject=object_table;				// Reset to start of object table with the global object pointer - @ge.

}

//***************************************************************************************************

// ObjectControl2 - same as above, but runs through 'used list' instead of scanning entire object_table.

void ObjectControl2()
{
	u32 loop;							// Used as a loop counter.
	u32* pOU;

	pOU=ObjectUsedList;

	for(loop=0;loop!=numUsedObjects;loop++)
	{
		g_pObject=object_table;			// Point to start of object table with the global object pointer.
		g_pObject+=*pOU;				// Add on the tag index from the active object list.

		switch(g_pObject->sp_type)		// Switch and case should optimise to a table so don't worry about the gayness.
		{
			case TYPE_SPRITEA:
				Sprite1Control();
				break;
			case TYPE_SPRITEB:
				Sprite2Control();
				break;
			case TYPE_SPRITEC:
				Sprite3Control();
				break;
			case TYPE_SPRITED:
				Sprite4Control();
				break;
		}
		if(g_pObject->sp_type!=0)
		{
			pOU++;
		}
	}

	g_pObject=object_table;				// Reset to start of object table with the global object pointer - @ge.

}

//***************************************************************************************************

// ObjectInit - initialise our object array.

void ObjectInit()
{
	u32 loop;							// Used as a loop counter.
	Object* pAO;			   			// Local pointer to object_table.
	u32* pFL;							// Pointer for Free List initialise.

	pAO=object_table;					// Point to start of object table with the object pointer (see objects.h).
	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
		pAO->sp_tag=0;					// Clear sprite list tags.
		pAO->sp_utag=0;

		ObjectClear(pAO);				// Clear and set all default attributes for current sprite.

		pAO++;							// Advance the global pointer for the next iteration.
	}

// Initialise the ObjectFreeList.

	pNextFreeObject=ObjectFreeList;		// Set Free List pointer to start of array.
	numFreeObjects=NUMOBJECTS;			// Initialise free object count with our max number.

	pFL=ObjectFreeList;			  		// Point to start of ObjectFreeList.
	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
		*pFL++=loop;					// Init list with ascending values.
	}

// Initialise the ObjectUsedList.

	pNextUsedObject=ObjectUsedList;		// Set Used List pointer to start of array.
	numUsedObjects=0;					// Initialise used object count.
}

//***************************************************************************************************

// Clear and set all default attributes for current sprite.

void ObjectClear(Object* pAO)
{
	pAO->sp_type=0;
	pAO->sp_mode=0;

	pAO->sp_xpos=0;
	pAO->sp_ypos=0;
	pAO->sp_xvel=0;
	pAO->sp_yvel=0;

	pAO->sp_screenX=0;
	pAO->sp_screenY=0;

	pAO->sp_size=8;
	pAO->sp_xbox=0;
	pAO->sp_ybox=0;
	pAO->sp_spare=0;

	pAO->sp_aninum=0;
	pAO->sp_aniframe=0;
	pAO->sp_anispeed=0;
	pAO->sp_anitimer=0;
	pAO->sp_aniuser=0;

	pAO->sp_flash=0;
	pAO->sp_mask=0;

   	pAO->sp_affine=OAM_AFFINE_NONE;
   	pAO->sp_rotate=0;
	pAO->sp_flipX=OFF;
	pAO->sp_flipY=OFF;
   	pAO->sp_scaleX=0x100;
   	pAO->sp_scaleY=0x100;
	pAO->sp_mosaic=OFF;
	pAO->sp_blend=OAM_OBJ_NORMAL;
	pAO->sp_priority=1;

	pAO->sp_var1=0;
	pAO->sp_var2=0;
	pAO->sp_var3=0;
}

//***************************************************************************************************

// ObjectGet1 - returns a pointer to a free entry in object array.

// Notice this function has a return type so that the pointer to the free slot can be passed back.

Object* ObjectGet1()
{
	Object* pFreeSlot;
	u32 loop;

	pFreeSlot=0;						// Set return pointer to NULL in case we don't find a spare slot.

	g_pObject=object_table;				// Point to start of object table with the global object pointer ( see objects.h )

	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
		if (g_pObject->sp_type==0)		// Is this slot available?
		{
			pFreeSlot=g_pObject;		// If it is then take a pointer to it's location.
			break;						// And get out of the current loop.
		}
		g_pObject++;					// Advance the global pointer for the next iteration.
	}

	return pFreeSlot;					// Return free slot or NULL if none was found.
}

//***************************************************************************************************

// ObjectPut1 - returns an object to "Free" state.

// This may look a bit ridiculous having a function that does just one line of code but because I'm going to do a "FreeList"
// versions of these functions it's cozy to have the array versions as well.

void ObjectPut1(Object* pAO)
{
	ObjectClear(pAO);					// Clear and set all default attributes for current sprite.
}

//***************************************************************************************************

// ObjectGet2 - same as array sweeping version but uses "Free List".

// This function returns an object pointer to a free slot which is found by using the "Free List".

Object* ObjectGet2()
{
	Object*	pFreeSlot;
	u32	tag;

	pFreeSlot=0;				        // Set return pointer to NULL in case we don't find a spare slot.

	if(numFreeObjects!=0)				// Make sure we're not using them all before we try and take one.
	{
		// Free Object list update.
		pFreeSlot=object_table;			// Base of object_table.
		tag=*pNextFreeObject++;			// Get the tag index and advance the pointer.
		numFreeObjects--;				// Decrement free object counter.
		pFreeSlot+=tag;					// Add on the tag to get the required object pointer.
		pFreeSlot->sp_tag=tag;  		// Store the index number. Required when returning slot to Free List.

		// Used Object list update.
		*pNextUsedObject++=tag;			// Store the tag in the active object list.
		pFreeSlot->sp_utag=numUsedObjects; // Store the Used List tag index in the object.
		numUsedObjects++;			   	// Increase the active object count.
	}

	return pFreeSlot;				   	// Return free slot or NULL if none was found.
}

//***************************************************************************************************

// ObjectPut2 - same as	array sweeping version but uses "Free List".

void ObjectPut2(Object* pAO)
{
	u32 tag,tag2,utag;
	Object* pAO2;

	// Free Object List update.
	ObjectClear(pAO); 			  		// Clear and set all default attributes for current sprite.
	pNextFreeObject--;             		// Back up next free object pointer for insertion of the one we're returning.
	numFreeObjects++;			  		// Increment free object count.
	tag=pAO->sp_tag;			  		// Take copy of tag index into object table.
	*pNextFreeObject=tag;		  		// Return tag to Free List.

	// Used Object List update.
	utag=pAO->sp_utag;			  		// Find where the tag for this object was stashed in the active list.
	numUsedObjects--;			  		// Decrement the active object count.
	if (utag!=numUsedObjects)	  		// If our tag is not on the end of the list we can..........
	{
		tag2=ObjectUsedList[numUsedObjects]; // Get the tag that's on the end of the list.
		ObjectUsedList[utag]=tag2;	 	// Move the last tag in the list over the dead one.
		pAO2=object_table;			 	// Base of the object table.
		pAO2+=tag2;					 	// Get pointer to formerly last object in the active list via the tag index.
		pAO2->sp_utag=utag;			 	// Let it know it's position has moved in the active object list.
	}
}

//***************************************************************************************************

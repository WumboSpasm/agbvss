//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Objects (Source).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"

//---------------------------------------------------------------------------------------------------

// An array of Objects. This replaces the original "sprite_tab ds.b sp_numobjs*sp_tabwidth".

Object	object_table[NUMOBJECTS];

// Free List is actually an array of object indices that can be picked off when you need a new object.
// List is initialised from within ObjectInit() to number ascending from 0 to NUMOBJECTS-1.

u32		ObjectFreeList[NUMOBJECTS];

// This is a pointer which floats up and down the array above. It gets advanced when an object is taken and shunts back when
// an object is returned to the free list. It gets initialised to the start of the ObjectFreeList in ObjectInit().

u32*	pNextFreeObject;

// We'll keep tabs on the number of free objects via this little variable as well for convenience.

u32		numFreeObjects;

// Used List is like the opposite of the Free List. It keeps track of all the object tags that are currently "out there".
// Again it's initialised in the ObjectInit() function.

u32		ObjectUsedList[NUMOBJECTS];

// This pointer points to the next position to insert an active object's tag.

u32*	pNextUsedObject;

// This keeps track of the number of objects currently in use.

u32		numUsedObjects;

//***************************************************************************************************

// ObjectControl1 - was "object_ctrl".

void ObjectControl1()
{
	u32			loop;					// Used as a loop counter.

	g_pObject = object_table;			// Point to start of object table with the global object pointer ( see objects.h )

	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
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
		g_pObject++;					// Advance the global pointer for the next iteration.
	}
}

//***************************************************************************************************

// ObjectControl2 - same as above, but runs through 'used list' instead of scanning entire object_table.

void ObjectControl2()
{
	u32			loop;					// Used as a loop counter.
	u32*		pOU;

	pOU = ObjectUsedList;

	for(loop=0;loop!=numUsedObjects;loop++)
	{
		g_pObject = object_table;		// Point to start of object table with the global object pointer.
		g_pObject += *pOU;				// Add on the tag index from the active object list.

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
}

//***************************************************************************************************

// ObjectInit - initialise our object array.

void ObjectInit()
{
	u32			loop;					// Used as a loop counter.
	Object*		pAO;					// Local pointer to ovject_table.
	u32*		pFL;					// Pointer for Free List initialise.

	pAO = object_table;					// Point to start of object table with the object pointer ( see objects.h )
	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
		pAO->sp_type = 0;				// Clear the control type so it won't get processed.
		pAO++;							// Advance the global pointer for the next iteration.
	}

// Initialise the ObjectFreeList.

	pNextFreeObject = ObjectFreeList;	// Set Free List pointer to start of array.
	numFreeObjects = NUMOBJECTS;		// Initialise free object count with our max number.

	pFL = ObjectFreeList;		  		// Point to start of ObjectFreeList.
	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
		*pFL++ = loop;					// Init list with ascending values.
	}

// Initialise the ObjectUsedList.

	pNextUsedObject = ObjectUsedList;	// Set Used List pointer to start of array.
	numUsedObjects = 0;					// Initialise used object count.
}

//***************************************************************************************************

// ObjectGet1 - returns a pointer to a free entry in object array.

// Notice this function has a return type so that the pointer to the free slot can be passed back.

Object* ObjectGet1()
{
	Object*	pFreeSlot;
	u32	   	loop;

	pFreeSlot = 0;						// Set return pointer to NULL in case we don't find a spare slot.

	g_pObject = object_table;			// Point to start of object table with the global object pointer ( see objects.h )

	for(loop=0;loop!=NUMOBJECTS;loop++)
	{
		if ( g_pObject->sp_type == 0 )	// Is this slot available?
		{
			pFreeSlot = g_pObject;		// If it is then take a pointer to it's location.
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
	pAO->sp_type = 0;
}

//***************************************************************************************************

// ObjectGet2 - same as array sweeping version but uses "Free List".

// This function returns an object pointer to a free slot which is found by using the "Free List".

Object* ObjectGet2()
{
	Object*	pFreeSlot;
	u32			tag;

	pFreeSlot = 0;				        		// Set return pointer to NULL in case we don't find a spare slot.

	if(numFreeObjects!=0)						// Make sure we're not using them all before we try and take one.
	{
// Free Object list update.
		pFreeSlot = object_table;				// Base of object_table.
		tag = *pNextFreeObject++;				// Get the tag index and advance the pointer.
		numFreeObjects--;						// Decrement free object counter.
		pFreeSlot += tag;						// Add on the tag to get the required object pointer.
		pFreeSlot->sp_tag = tag;  				// Store the index number. Required when returning slot to Free List.
// Used Object list update.
		*pNextUsedObject++ = tag;				// Store the tag in the active object list.
		pFreeSlot->sp_utag = numUsedObjects;	// Store the Used List tag index in the object.
		numUsedObjects++;						// Increase the active object count.
	}

	return pFreeSlot;							// Return free slot or NULL if none was found.
}

//***************************************************************************************************

// ObjectPut2 - same as	array sweeping version but uses "Free List".

void ObjectPut2(Object* pAO)
{
	u32			tag,tag2,utag;
	Object*	pAO2;

// Free Object List update.
	pAO->sp_type = 0;							// Clear control type.
	pNextFreeObject--;                  		// Back up next free object pointer for insertion of the one we're returning.
	numFreeObjects++;							// Increment free object count.
	tag = pAO->sp_tag;							// Take copy of tag index into object table.
	*pNextFreeObject = tag;						// Return tag to Free List.
// Used Object List update.
	utag = pAO->sp_utag;						// Find where the tag for this object was stashed in the active list.
	numUsedObjects--;							// Decrement the active object count.
	if ( utag != numUsedObjects )				// If our tag is not on the end of the list we can..........
	{
		tag2 = ObjectUsedList[numUsedObjects];	// Get the tag that's on the end of the list.
		ObjectUsedList[utag] = tag2;			// Move the last tag in the list over the dead one.
		pAO2 = object_table;					// Base of the object table.
		pAO2 += tag2;							// Get pointer to formerly last object in the active list via the tag index.
		pAO2->sp_utag = utag;					// Let it know it's position has moved in the active object list.
	}
}

//***************************************************************************************************

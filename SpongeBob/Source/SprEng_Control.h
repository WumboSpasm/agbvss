//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Objects (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_CONTROL_H
#define _SPRENG_CONTROL_H

// Define how many slots we want. Capital letters is standard for a define like this.

#define	NUMOBJECTS 100 // Called sp_numobjs in the original.

// We don't need to convert the variable sp_tabwidth because that was only used for accessing the objects.
// Because we are about to define each object as a structure we can perform access by using just the object number
// because 'C' knows how big an OBJECT is.........

// In order to make it easier to control an object slot attribute set as an entity we define it as a structure type.

typedef struct object
{
	s32	sp_xpos;	// 32-bit world x-axis co-ordinate.
	s32 sp_ypos;	// 32-bit world y-axis co-ordinate.
	s32 sp_xvel;	// 32-bit x-axis velocity.
	s32 sp_yvel;	// 32-bit y-axis velocity.

	u16 sp_size;	// Sprite size in both x & y (i.e. square).
	u16 sp_xbox;	// Sprite collision box size offset in x.
	u16 sp_ybox;	// Sprite collision box size offset in y.
	u16 sp_spare;	// Spare padding attribute.

	u32 sp_frame;	// Object's sprite frame number.
	u32 sp_type;	// Object's primary control routine.
	u32 sp_mode;	// Object's secondary control routine.
	u32 sp_tag;     // Used as a reference as to which slot in the object_table this is if non-linear accessing.
	u32 sp_utag;	// Keeps a record of where this object's insertion point is in the active object tag list.
	u32 sp_aninum;	// Current animation sequence number.
	u32 sp_aniidx;	// Current sequence index value.
	u32 sp_anidur;	// Timer for frame duration.
	s8  sp_aniusr;	// User byte for special anim info.
	s8  sp_anirep;	// Loop repetition counter.

	s8  sp_flash;	// Sprite intermitant display control.
	s8  sp_mask;	// Sprite mask display control.

    u16 sp_affine;	// GBA sprite rotate size/double size h/w feature.
    u16 sp_rotate;	// GBA sprite rotatation angle h/w feature.
	s16 sp_startX;	// Affine scale-x offset adjustment.
	s16 sp_startY;	// Affine scale-y offset adjustment.
	u16 sp_flipX;	// GBA sprite h-flip h/w feature.
	u16 sp_flipY;	// GBA sprite v-flip h/w feature.
    u16 sp_scaleX;	// GBA sprite scale-x h/w feature.
    u16 sp_scaleY;	// GBA sprite scale-y h/w feature.
	u16 sp_mosaic;	// GBA sprite mosaic h/w feature.
	u16 sp_blend;	// GBA sprite alpha blend h/w feature.
	u16 sp_priority;// GBA sprite priority (relative to background) h/w feature.

	u16 sp_var1;	// Multi-purpose variable no.1.
	u16 sp_var2;	// Multi-purpose variable no.2.
	u16 sp_var3;	// Multi-purpose variable no.3.

}Object;

// Beware! Changing the types of the members in the above structure ( S32 to S16 etc. ) may result in misaligned data which
// could cause access errors. Always pad to 32 bits by making sure that 16 bit data is paired and if your using bytes group
// them in 4s so that any following 32 bit data sits aligned in the structure. Once your sure the compiler does padding auto-
// matically you can ignore this.......

// Enums are a good way of allocating numbers to things with a nice friendly tag.
// So instead of having to remember what number type Reggie is we just use his name and the compiler equates that with
// the number 4! Wheeeeeeeeeeeeeeeeeeeeeee.
// We could miss the =1 off the first one if we wanted to start at 0 but we don't coz 0 indicates an empty slot.

enum
{
	TYPE_SPRITEA=1,
	TYPE_SPRITEB,
	TYPE_SPRITEC,
	TYPE_SPRITED,
};

// Now we got all our data definitions out of the way we should look at defining our functions so that other files that need
// to call them know what they will expect to be given in terms of parameters etc.
// I suppose I should have mentioned this earlier but any other file which needs to access stuff in the object system should
// #include this file so it knows what it's dealing with.

// I won't decribe what's going on that much here. If you want to see a description of the fucntions look at them in the main
// file "objects.c" where the code really is............

void ObjectInit(void);
void ObjectControl1(void);
void ObjectControl2(void);
Object* ObjectGet1(void);
void ObjectPut1(Object*);
Object* ObjectGet2(void);
void ObjectPut2(Object*);

// Defines for Individual control routines. These are not included in the file objects.c but each has it's own file to make
// the project less cluttered.

void Sprite1Control(void);
void Sprite2Control(void);
void Sprite3Control(void);
void Sprite4Control(void);

// Some data needs to be accessed globally so we'll let everyone know what the score is with these variables.
// Notice I put a little g_ at the beginning of the variable so that I can see it's a global.
// You don't have to but it's a nice touch.
// Also I put a lower-case "p" at the beginning of any pointers.
// A pointer like this one HAS to have a * to state that it is a pointer.

Object* g_pObject;

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

#endif

//***************************************************************************************************







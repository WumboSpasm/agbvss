//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		GBA Sprite Engine - Objects (Header).
// Author:		A.R.Cummings.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#ifndef _SPRENG_CONTROL_H
#define _SPRENG_CONTROL_H

//---------------------------------------------------------------------------------------------------

#define	NUMOBJECTS 100 // Define how many 'virtual' sprite slots we want.

//---------------------------------------------------------------------------------------------------

// We don't need to convert the variable sp_tabwidth because that was only used for accessing the objects.
// Because we are about to define each object as a structure we can perform access by using just the object number
// because 'C' knows how big an OBJECT is.

// In order to make it easier to control an object slot attribute set as an entity we define it as a structure type.

typedef struct object
{
	u32 sp_type;	// Object's primary control routine.
	u32 sp_mode;	// Object's secondary control routine.
	u32 sp_tag;     // Used as a reference as to which slot in the object_table this is if non-linear accessing.
	u32 sp_utag;	// Keeps a record of where this object's insertion point is in the active object tag list.

	s32	sp_xpos;	// 32-bit world x-axis co-ordinate.
	s32 sp_ypos;	// 32-bit world y-axis co-ordinate.
	s32 sp_xvel;	// 32-bit x-axis velocity.
	s32 sp_yvel;	// 32-bit y-axis velocity.

	s32 sp_screenX;	// Sprite screen position & affine scale-x offset adjustment.
	s32 sp_screenY;	// Sprite screen position & affine scale-y offset adjustment.

	u16 sp_display; // Sprite on/off screen flag.

	u16 sp_xsize;	// Sprite size in x.
	u16 sp_ysize;	// Sprite size in y.

	u16 sp_xbox;	// Sprite collision box displacment in x.
	u16 sp_ybox;	// Sprite collision box displacment in y.

	u16 sp_aninum;	// Current animation sequence number.
	u16 sp_aniframe;// Object's sprite frame number.
	u16 sp_anispeed;// Animation loop repetition speed.
	u16 sp_anitimer;// Timer for animation frame duration.
	u16 sp_aniuser;	// General purpose variable (used for example to denote HOLD frame in animation sequence).
	u16 sp_anispare;// Spare padding attribute.

	u16	sp_flash;	// Sprite intermitant display control.
	u16	sp_delay;	// Sprite intermitant display delay.
	u16	sp_flshspd;	// Sprite intermitant display speed.

    u16 sp_affine;	// GBA sprite rotate size/double size h/w feature.
    u16 sp_rotate;	// GBA sprite rotatation angle h/w feature.
	u16 sp_flipX;	// GBA sprite h-flip h/w feature.
	u16 sp_flipY;	// GBA sprite v-flip h/w feature.
    u16 sp_scaleX;	// GBA sprite scale-x h/w feature.
    u16 sp_scaleY;	// GBA sprite scale-y h/w feature.
	u16 sp_mosaic;	// GBA sprite mosaic h/w feature.
	u16 sp_blend;	// GBA sprite alpha blend h/w feature.
	u16 sp_priority;// GBA sprite priority (relative to background) h/w feature.

	u16 sp_var1;	// Multi-purpose attribute variable no.1. (i.e. sprite direction).
	u16 sp_var2;	// Multi-purpose attribute variable no.2. (i.e. sprite hit points).
	u16 sp_var3;	// Multi-purpose attribute variable no.3. (i.e. sprite power-up).
	u16 sp_var4;	// Multi-purpose attribute variable no.4. (i.e. sprite misc. function i.e. hit ground ?).

	u16 sp_spare;	// Spare attribute.

}Object;

// Beware!, changing the types of the members in the above structure (s32 to s16 etc.) may result in misaligned data which
// could cause access errors. Always pad to 32 bits by making sure that 16 bit data is paired and if your using bytes group
// them in 4s so that any following 32 bit data sits aligned in the structure. Once your sure the compiler does padding
// automatically you can ignore this.

//---------------------------------------------------------------------------------------------------

enum				// Enumerate all sprite control types.
{
	TYPE_OFF,
	TYPE_SPONGEBOB,
	TYPE_PLATFORMS,
	TYPE_PATRICK,
};

enum				// Enumerate all 'SpongeBob' sprite control modes.
{
	MODE_STAND,
	MODE_WALK,
	MODE_RUN,
	MODE_STANDJUMP,
	MODE_STANDJUMPFALL,
	MODE_STANDJUMPLAND,
	MODE_RUNJUMP,
	MODE_RUNJUMPFALL,
	MODE_RUNJUMPLAND,
	MODE_KARATE,
	MODE_FREEFLIGHT,
};

enum				// Enumerate all 'Moving Platform' sprite control modes.
{
	MODE_LEFTRIGHT,
	MODE_UPDOWN,
};

enum				// Enumerate all 'Patrick' sprite control modes.
{
	MODE_LEFTRIGHTSPIN,
};

//---------------------------------------------------------------------------------------------------

void ObjectInit(void);
void ObjectClear(Object*);
void ObjectControl1(void);
void ObjectControl2(void);
Object* ObjectGet1(void);
void ObjectPut1(Object*);
Object* ObjectGet2(void);
void ObjectPut2(Object*);

// Defines for individual control routines.

void SpriteControl00(void);
void SpriteControl01(void);
void SpriteControl02(void);
void SpriteControl03(void);

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







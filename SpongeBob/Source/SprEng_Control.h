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

// Note there are some changes from the original file. I've indicated these with a * in the end of line comment sometimes
// adding a reason for the mod when it's not obvious.

typedef struct object
{
	s32	sp_xpos;	// 32-bit world x-axis co-ordinate.	* I got rid of the low-word stuff because it's not really needed.
	s32 sp_ypos;	// 32-bit world y-axis co-ordinate.
	s32 sp_xvel;	// 32-bit x-axis velocity.			* Made 32-bit because apart from space issues there's no reason
	s32 sp_yvel;	// 32-bit y-axis velocity.			* for it to be 16-bit. Also 32 bit processors like 32-bit #s.
	u32 sp_frame;	// object's sprite frame number.
	u32 sp_type;	// object's primary control routine.
	u32 sp_mode;	// object's secondary control routine.
	u32 sp_tag;     // Used as a reference as to which slot in the object_table this is if non-linear accessing.
	u32 sp_utag;	// Keeps a record of where this object's insertion point is in the active object tag list.
	u32 sp_aninum;	// current animation sequence number.
	u32 sp_aniidx;	// current sequence index value.
	u32 sp_anidur;	// timer for frame duration.
	s8  sp_aniusr;	// user byte for special anim info.
	s8  sp_anirep;	// loop repetition counter.
	s8  sp_flash;	// sprite intermitant display control.
	s8  sp_mask;	// sprite mask display control.
	s32 sp_var1a;	// multi-purpose variable no.1a.
	s32 sp_var1b;	// multi-purpose variable no.1b.
	s32 sp_var2a;	// multi-purpose variable no.2a.
	s32 sp_var2b;	// multi-purpose variable no.2b.
	s32 sp_var3a;	// multi-purpose variable no.3a.
	s32 sp_var3b;	// multi-purpose variable no.3b.
	s32 sp_var4a;	// multi-purpose variable no.4a.
	s32 sp_var4b;	// multi-purpose variable no.4b.
	s32 spr_aux1;	// spare.
	s32 spr_aux2;	// spare.
	s32 spr_aux3;	// spare.
	s32 spr_aux4;	// spare.
	s32 spr_aux5;	// spare.
	s32 spr_aux6;	// spare.
	s32 spr_aux7;	// spare.
	s32 spr_aux8;	// spare.
	s32 spr_aux9;	// spare.
	s32 spr_auxa;	// spare.
	s32 spr_auxb;	// spare.
	s32 spr_auxc;	// spare.
	s32 spr_auxd;	// spare.
	s32 spr_auxe;	// spare.
	s32 spr_auxf;	// spare.
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

Object*	g_pObject;

#endif

//***************************************************************************************************







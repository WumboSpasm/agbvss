//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Random Number Generator (Source).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _RANDOM_C

#include "Includes.h"
#include <stdlib.h>
#include "Random.h"


//----------Generate a random number between 0 and max-----//
u16 GenRand(u16 max)
{
	//---------this is evil, I don't want to do this but if it works cool
#ifdef RAND_MAX
#undef RAND_MAX
#define RAND_MAX max
#endif
	u32 tmp=rand();			// use stand c library function
	return (u16)tmp;		// return the result...
}

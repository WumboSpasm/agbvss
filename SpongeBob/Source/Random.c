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
	u32 tmp=rand();			// use stand c library function
	tmp*=0x100;
	tmp*=max;
	tmp/=RAND_MAX;
	tmp/=0x100;
	return tmp;
}

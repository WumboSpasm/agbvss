//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Random Number Generator (Source).
// Author:		RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

#define _RANDOM_C

#include "Includes.h"
#include "Random.h"

static u32 FindNum(void);
static u32 rgiState[2+55]; // leave this alone

// find me my random number
static u32 FindNum(void)
{
    u32 *piState;
    u32 iState1;
    u32 iState2;
    u32 iRand;
    piState= &rgiState[2];
    iState1= piState[-2];
    iState2= piState[-1];
    iRand=(piState[iState1] + piState[iState2])&((1<<30)-1);
    piState[iState1]=iRand;
    if(++iState1==55)iState1=0;
    if(++iState2==55)iState2=0;
    piState[-2]=iState1;
    piState[-1]=iState2;
    return iRand>>6;
}

// Generate me a random numer up to max
u32 GenRand(u32 max)
{
    u32 power;
    u32 number;
    if(max==0)return max;
    for(power=2;power<max;power<<=1);
    while((number=FindNum()&(power-1))>=max);
    return number;
}

// Init Random Number List
void InitRand(u32 plap)
{
    u32 *piState;
    u32 iState;
    piState=&rgiState[2];
    piState[-2]=55-55;
    piState[-1]=55-24;
    piState[0]=(plap)&((1<<30)-1);
    piState[1]=1;
    for(iState=2;iState<55;iState++)
    {
       	piState[iState]=(piState[iState-1]+piState[iState-2])&((1<<30)-1);
    }
    return;
}

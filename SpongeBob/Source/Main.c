//***************************************************************************************************
// Project:		SpongeBob Squarepants GBA.
// Source:		Main System (Source).
// Author:		A.R.Cummings / RCA Duff.
// (C) 2000/1:	Climax.
//***************************************************************************************************

// Includes.

#include "Includes.h"
#include "Titles.h"

//***************************************************************************************************

/////////////////////////////////////////////////
// Local Variables.
/////////////////////////////////////////////////
u16	gKeyInput;
u16	gKeyTap;
u32	gTimer;
u32	IntrMainBuf[0x200];	// Buffer for interrupt main routine.
vu16 IntrCheck;			// Interrupt check.
GameState gGameState;	// Beaner's gamestate variable.

/////////////////////////////////////////////////
// Function Definitions.
/////////////////////////////////////////////////
static void VBlankIntr(void);
extern void KeyRead(void);

/////////////////////////////////////////////////
// Global Functions.
/////////////////////////////////////////////////
const IntrFuncp IntrTable[15]=
{
    VBlankIntr,			// V Blank interrupt.
    IntrDummy,			// H Blank interrupt.
    IntrDummy,			// V Blank interrupt.
    IntrDummy,			// Timer 0 interrupt.
    IntrDummy,			// Timer 1 interrupt.
    IntrDummy,			// Timer 2 interrupt.
    IntrDummy,			// Timer 3 interrupt.
    IntrDummy,			// Serial communication interrupt.
    IntrDummy,			// DMA 0 interrupt.
    IntrDummy,			// DMA 1 interrupt.
    IntrDummy,			// DMA 2 interrupt.
    IntrDummy,			// DMA 3 interrupt.
    IntrDummy,			// Key interrupt.
    IntrDummy,			// Cassette interrupt (ROM Cart !).
};

//***************************************************************************************************

// Initialise AGB system.

void InitSystem(void)
{
	DmaCopy(3,intr_main,IntrMainBuf,sizeof(IntrMainBuf),16); // Set off interrupt main routine.
	IntrAddrSet(IntrMainBuf);

	// Set BG Control
	*(vu16*)REG_BG0CNT=BG_COLOR_256|BG_SCREEN_SIZE_0|BG_PRIORITY_0|0<<BG_SCREEN_BASE_SHIFT|1<<BG_CHAR_BASE_SHIFT ;
	*(vu16*)REG_BG1CNT=BG_COLOR_256|BG_SCREEN_SIZE_0|BG_PRIORITY_1|1<<BG_SCREEN_BASE_SHIFT|1<<BG_CHAR_BASE_SHIFT ;

	*(vu16*)REG_IE &= 0x7fff;
	*(vu16*)REG_IME=1;							// SetIME
//	*(vu16*)REG_IE=IME_FLAG;					// Set IME
	*(vu16*)REG_IE|=V_BLANK_INTR_FLAG;			// Set of V blank interrupt request flag
	*(vu16*)REG_STAT=STAT_V_BLANK_IF_ENABLE;
}

//***************************************************************************************************

// Main Routine.

void AgbMain(void)
{
	ClearAll();	  								// The first initialization of the system.
	InitSystem();

#ifdef NDEBUG
	gGameState=e_LEGAL_SCREEN;
#else
#ifdef BEANER
	gGameState=e_TITLE_SCREEN;
#else
	gGameState=e_IN_GAME;
#endif
#endif

        switch(gGameState)
        {
       	case e_IN_GAME:
       		InitGame();									// Init. main game.
       		break;
	case e_TITLE_SCREEN:
		InitTitles();
		break;
	};

//---------------------------------------------------------------------------------------------------

	while(1)									// Top level main loop.
	{
	        switch(gGameState)
	        {
	       	case e_IN_GAME:
	       		InitGame();									// Init. main game.
	       		break;
		case e_TITLE_SCREEN:
			InitTitles();
			break;
		};
	}
}

//***************************************************************************************************

// Clears all Ram/VRam/Palette information.

void ClearAll(void)
{
	DmaClear(3,0,EX_WRAM, EX_WRAM_SIZE,       32);	// CPU external Work RAM clear.
	DmaClear(3,0,CPU_WRAM,CPU_WRAM_SIZE-0x200,32);	// CPU internal Work RAM clear.
	DmaClear(3,0,VRAM,    VRAM_SIZE,          32);	// VRAM Clear.
	DmaClear(3,0,OAM,     OAM_SIZE,           32);	// OAM Clear.
	DmaClear(3,0,PLTT,    PLTT_SIZE,          32);	// Palette Clear.
}

//***************************************************************************************************

// Wait for vertical blanking period.

// @ge says - LEAVE THIS ALONE PLEASE AS I HAVE FULLY TESTED IT AND IT WORKS OK !!!.

void WaitVBlank(void)
{
	while((*(vu16*)REG_VCOUNT&0xff)>=160);

	gTimer++;										// Increment game timer.
}

//***************************************************************************************************

// VBL interupt vector (Call music driver from inside here l8r).

// @ge says - LEAVE THIS ALONE PLEASE AS I HAVE FULLY TESTED IT AND IT WORKS OK !!!.

static void VBlankIntr(void)
{
	IntrCheck=V_BLANK_INTR_FLAG;					// Set V blank interrupt check flag.
}

//***************************************************************************************************

// DUMMY interupt vector (NULL interupt).

void IntrDummy(void)
{
}

//***************************************************************************************************

// Read Joypad.

void ReadJoypad(void)
{
	u16 ReadData=(*(vu16*)REG_KEYINPUT^0xffff);
	gKeyTap = ReadData & (ReadData ^ gKeyInput);	// Key Pressed
	gKeyInput = ReadData;							// Key Held
}

//***************************************************************************************************


# ******** C options ****************************************************************
INCLUDES	:=	-I"src"\
				-I"mks4agbSystem"\
				-I"$(AGBDIR)/include"

CFLAGS	:=	-c $(INCLUDES) -mthumb-interwork \
			-nostdlib -Wall # -save-temps

ifeq ($(VERSION),release)
CFLAGS	:=	$(CFLAGS)\
			-O2
else
CFLAGS	:=	$(CFLAGS)\
			-g
endif

# ******** ASM options **************************************************************
ASFLAGS	:=	-I$(AGBDIR)/include -mthumb-interwork

# ******** LINK options *************************************************************
LIBRARY_DIRS:=		\
		-L"$(AGBDIR)/lib"	\
		-L"$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib/gcc-lib/thumb-elf/2.9-arm-000512"\
		-L"$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib"\
		-L"$(CYGNUSDIR)/thumbelf-000512/H-i686-cygwin32/thumb-elf/lib"\
		-L"$(AGBDIR)/src/bin/prev/agb/mlib"\
		-L"../data/Titles"\
		-L"../data/Maps"\
		-L"../data/Sprites/SpongeBob"\
		-L"../data/Sprites/Misc"\

LIBRARIES:=			\
		-l"agbsyscall"	\
		-l"c"			\
		-l"g"			\
		-l"iberty"		\
		-l"m"			\
		-l"stdc++"		\
		-l"agbbackup"	\
		-l"agbir"		\
		-l"agbsyscall"	\
		-l"isagbprn"	\
		-l"termcap"		\
		-l"mpr"			\
		-l"utl"			\
		-l"TitlesGFX"	\
		-l"Maps"		\
		-l"SpongeBob_Sprs"\
		-l"Misc_Sprs"

#		-l"gcc"

LDFLAGS	 :=\
		$(LIBRARY_DIRS)		\
		$(LIBRARIES)		\
		-Map $(MAPFILE)		\
		-Ttext 0x08000000	\
		-Tbss 0x03000000	\
		-Tlnkscript_$(VERSION)\
		$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib/gcc-lib/thumb-elf/2.9-arm-000512/libgcc.a

LD_OPTS_FILE	:=	$(TEMP_DIR)/lopts.txt

# ******** C options ****************************************************************
INCLUDES	:=	src\
				mks4agbSystem\
				$(AGBDIR)/include

INCLUDES	:=$(foreach f, $(INCLUDES), -I"$(f)")

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
		$(AGBDIR)/lib	\
		$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib/gcc-lib/thumb-elf/2.9-arm-000512/\
		$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib\
		$(CYGNUSDIR)/thumbelf-000512/H-i686-cygwin32/thumb-elf/lib\
		$(AGBDIR)/src/bin/prev/agb/mlib\
		../data/Titles\
		../data/Maps\
		../data/Sprites/SpongeBob\
		../data/Sprites/Misc\

LIBRARIES:=			\
		gcc			\
		agbsyscall	\
		c			\
		g			\
		iberty\
		m			\
		stdc++		\
		agbbackup\
		agbir		\
		agbsyscall	\
		isagbprn	\
		termcap		\
		mpr			\
		utl			\
		TitlesGFX	\
		Maps		\
		SpongeBob_Sprs\
		Misc_Sprs


LIBRARY_DIRS	:=	$(foreach l, $(LIBRARY_DIRS),-L$(l))
LIBRARIES		:=	$(foreach l, $(LIBRARIES),-l$(l))

LDFLAGS	 :=\
		$(LIBRARY_DIRS)		\
		$(LIBRARIES)		\
		-Map $(MAPFILE)		\
		-Ttext 0x08000000	\
		-Tbss 0x03000000	\
		-Tlnkscript_$(VERSION)		\
		$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib/gcc-lib/thumb-elf/2.9-arm-000512/libgcc.a

LD_OPTS_FILE	:=	$(TEMP_DIR)/lopts.txt

SOUND_DIR = ../Sound/out/
include $(SOUND_DIR)Soundfiles

.SFILES	=	Crt0.s

.CFILES	=	Main.c \
		Game.c \
		Titles.c \
		Random.c \
		StartUp.c \
		Scroll_Engine.c \
		SprEng_Control.c \
		SprEng_Animate.c \
		SprEng_Display.c \
		SprEng_Common.c \
		SprEng_SpongeBob.c \
		SprEng_Platforms.c \
		SprEng_Patrick.c \
		Sinecos.c \
		Contours.c \
		Text_Sys.c \
		Collision.c \
		Hub.c  \
		Fade.c

.OFILES	=	$(.SFILES:.s=.o) $(.CFILES:.c=.o) $(SOUND_FILES)

.AFILES =	../data/Titles/libTitlesGFX.a \
       		../data/Maps/libMaps.a \
		../data/Sprites/SpongeBob/libSpongeBob_Sprs.a \
		../data/Sprites/Misc/libMisc_Sprs.a

ASFLAGS	=	-I$(AGBDIR)/include -mthumb-interwork

CFLAGS	=	-g -O2 -I$(AGBDIR)/include -mthumb-interwork \
		-nostdlib -Wall # -save-temps

LDFLAGS	 +=	-Map $(MAPFILE) -nostartfiles \
		-Ttext 0x08000000 -Tbss 0x03000000 \
		-L$(AGBDIR)/lib/ -lisagbprn -lagbsyscall \
                -L../data/Titles/ -lTitlesGFX \
                -L../data/Maps/ -lMaps \
                -L../data/Sprites/SpongeBob/ -lSpongeBob_Sprs \
                -L../data/Sprites/Misc/ -lMisc_Sprs \
		-Tlnkscript

DEPENDFILE	=Makedepend
MAPFILE         =SBSPants.map
TARGET_ELF      =SBSPants_release.elf
TARGET_BIN      =SBSPants_release.bin

$(TARGET_BIN): $(TARGET_ELF)
	@objcopy -v -O binary $< $@

$(TARGET_ELF): $(.OFILES) Makefile $(.AFILES) $(DEPENDFILE)
	echo > $(MAPFILE)
	$(CC) -g -o $@ $(.OFILES) -Wl,$(LDFLAGS)

.PHONY: all clean depend data

all:	clean depend data $(TARGET_BIN)

clean:
	-rm $(.OFILES) $(DEPENDFILE)
clean_data:
	$(foreach .ADIR_TMP, $(dir $(.AFILES)), make -C $(.ADIR_TMP) clean;)

depend:
	$(CC) $(CFLAGS) -M $(.CFILES) > $(DEPENDFILE)

$(DEPENDFILE):
	$(CC) $(CFLAGS) -M $(.CFILES) > $(DEPENDFILE)

.SUFFIXES: .s .c .o .a

crt0.o: crt0.s rom_header.s $(AGBDIR)\include\AgbDefine.s \
 $(AGBDIR)\include\AgbMacro.s $(AGBDIR)\include\AgbMemoryMap.s

include $(DEPENDFILE)

data:
	$(foreach .ADIR_TMP, $(dir $(.AFILES)), make -C $(.ADIR_TMP);)
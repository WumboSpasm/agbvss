.SFILES	=	Crt0.s

.CFILES	=	Main.c \
		Game.c \
		Titles.c \
		Scroll_Engine.c \
		SprEng_Control.c \
		SprEng_Display.c \
		SprEng_Common.c \
		SprEng_SpriteA.c \
		SprEng_SpriteB.c \
		SprEng_SpriteC.c \
		SprEng_SpriteD.c \
		Sinecos.c

.OFILES	=	$(.SFILES:.s=.o) $(.CFILES:.c=.o)

.AFILES =       Gamedata/Level1/libLev1bgbmp.a \
		Gamedata/Sprites/libSpriteA.a

ASFLAGS	=	-I$(AGBDIR)/include -mthumb-interwork

CFLAGS	=	-g -O2 -I$(AGBDIR)/include -mthumb-interwork \
		-nostdlib -Wall # -save-temps

LDFLAGS	 +=	-Map $(MAPFILE) -nostartfiles \
		-Ttext 0x08000000 -Tbss 0x03000000 \
		-L$(AGBDIR)/lib/ -lisagbprn -lagbsyscall\
                -LGamedata/Level1/ -lLev1bgbmp \
                -LGamedata/Sprites/ -lSpriteA \
		-Tlnkscript

DEPENDFILE	=	Makedepend
MAPFILE         =       SBSPants.map
TARGET_ELF      =       SBSPants.elf
TARGET_BIN      =       SBSPants.bin

$(TARGET_BIN): $(TARGET_ELF)
	objcopy -v -O binary $< $@

$(TARGET_ELF): $(.OFILES) Makefile $(.AFILES) $(DEPENDFILE)
	@echo > $(MAPFILE)
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

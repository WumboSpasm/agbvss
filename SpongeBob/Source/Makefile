VERSION	?=	release

ifeq ($(VERSION),release)
	TARGET			:=SBSPants_Release
else
	TARGET			:=SBSPants
endif

MAPFILE         :=$(basename $(TARGET)).map
TARGET_ELF      :=$(basename $(TARGET)).elf
TARGET_BIN      :=$(basename $(TARGET)).bin
TEMP_DIR		:=$(VERSION)

SOUNDMON		:=mks4agbSystem/SoundMon.elf

include build/opts.mak

.SFILES	=	Crt0.s

.CFILES	=	Game.c \
			Main.c \
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
			Text_Sys.c

.OFILES		:=	$(foreach f,$(.CFILES) $(.SFILES), $(TEMP_DIR)/$(subst .s,.o,$(subst .c,.o,$(f))))

.AFILES		:=	../data/Titles/libTitlesGFX.a \
       			../data/Maps/libMaps.a \
				../data/Sprites/SpongeBob/libSpongeBob_Sprs.a \
				../data/Sprites/Misc/libMisc_Sprs.a

ALL_DIRS:=	$(foreach d, $(.OFILES), $(dir $(d))wibbleblob)
ALL_DIRS:=	$(foreach d, $(ALL_DIRS), $(subst /wibbleblob,,$(d)))
ALL_DIRS:=	$(foreach d, $(ALL_DIRS), $(subst wibbleblob,,$(d)))
ALL_DIRS:=	$(sort $(ALL_DIRS))

all:	$(ALL_DIRS) $(TARGET_BIN)
	@echo Finished $(VERSION) version : spat out $(TARGET_BIN)

$(ALL_DIRS):
	@echo MkDir $@
	@mkdir $@

$(TARGET_BIN): $(TARGET_ELF)
	@objcopy -v -O binary $< $@

$(TARGET_ELF): $(.OFILES) Makefile $(.AFILES) $(DEPENDFILE) $(LD_OPTS_FILE) $(SOUNDMON)
	@ld @$(LD_OPTS_FILE) -o $@

$(LD_OPTS_FILE): makefile build/opts.mak lnkscript_$(VERSION)
	@echo $(.OFILES) >$@
	@echo $(.AFILES) >>$@
	@echo $(LDFLAGS) >>$@

$(TEMP_DIR)/%.o: ./%.c
	@echo Compile $<
	@$(CC) $(CFLAGS) -o $@ $<

$(TEMP_DIR)/%.o: ./%.s
	@echo Assemble $<
	@as $(ASFLAGS) $< -o $@

.PHONY: clean depend data

DEPENDFILE	=Makedepend

clean:
	-rm $(.OFILES) $(DEPENDFILE)

clean_data:
	$(foreach .ADIR_TMP, $(dir $(.AFILES)), make -C $(.ADIR_TMP) clean;)

depend:
	@$(CC) $(CFLAGS) -M $(.CFILES) > $(DEPENDFILE)

$(DEPENDFILE):
	@$(CC) $(CFLAGS) -M $(.CFILES) > $(DEPENDFILE)

crt0.o: crt0.s rom_header.s $(AGBDIR)\include\AgbDefine.s \
 $(AGBDIR)\include\AgbMacro.s $(AGBDIR)\include\AgbMemoryMap.s

include $(DEPENDFILE)

data:
	$(foreach .ADIR_TMP, $(dir $(.AFILES)), make -C $(.ADIR_TMP);)

$(SOUNDMON): $(dir $(SOUNDMON))/mks4agbLib.h $(dir $(SOUNDMON))/Sound/m4aLib.h
	@make -s -C $(dir $@)
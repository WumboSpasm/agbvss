TARGET		:=	SoundMon.elf

INCLUDES	:=src

INCLUDES	:=$(foreach f, $(INCLUDES), -I"$(f)")

AS_OPTS		:=-mthumb-interwork

AS_FILES	:=\
			MPlayDef.s	\
			MusicPlayDef.s	\
			src/agb2000.s	\
			src/brassc3.s	\
			src/cutgtg3.s	\
			src/engin.s	\
			src/engin01a.s	\
			src/flutec4.s	\
			src/gun.s	\
			src/harpc3.s	\
			src/harpc5.s	\
			src/housebd.s	\
			src/housechh.s	\
			src/houseohh.s	\
			src/housesd.s	\
			src/MPlayDef.s	\
			src/mutetpc4.s	\
			src/orgc3.s	\
			src/revcym.s	\
			src/sawg3.s	\
			src/se3.s	\
			src/se5.s	\
			src/se8.s	\
			src/se9b.s	\
			src/se_d01.s	\
			src/se_dben2.s	\
			src/se_dbend.s	\
			src/se_dgmix.s	\
			src/se_dvib.s	\
			src/se_gbend.s	\
			src/se_gbend2.s	\
			src/se_noise.s	\
			src/se_sweep.s	\
			src/se_swep2.s	\
			src/sinec3.s	\
			src/SndMonDat.s	\
			src/sound3.s	\
			src/SoundDat.s	\
			src/suboscc3.s	\
			src/synbsc2.s	\
			src/tamba.s	\
			src/timbale.s	\
			src/vibra.s	\
			src/wario.s

ALL_AS_OBJS	:=	$(foreach f, $(AS_FILES), out/$(subst .s,.o,$(f)))

ALL_DIRS:=	$(foreach d, $(ALL_AS_OBJS), $(dir $(d))wibbleblob)
ALL_DIRS:=	$(foreach d, $(ALL_DIRS), $(subst /wibbleblob,,$(d)))
ALL_DIRS:=	$(foreach d, $(ALL_DIRS), $(subst wibbleblob,,$(d)))
ALL_DIRS:=	$(sort $(ALL_DIRS))

LIBRARY_DIRS:=		\
	$(AGBDIR)/lib	\
	$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib/gcc-lib/thumb-elf/2.9-arm-000512\
	$(CYGNUSDIR)/thumbelf-000512/h-i686-cygwin32/lib\
	$(CYGNUSDIR)/thumbelf-000512/H-i686-cygwin32/thumb-elf/lib\
	$(AGBDIR)/src/bin/prev/agb/mlib

LIBRARIES	:=\
	gcc\
	agbsyscall\
	c\
	g\
	iberty\
	m\
	stdc++\
	termcap\
	agbbackup\
	agbir\
	agbsyscall\
	isagbprn\
	mpr\
	utl\

LIBRARY_DIRS	:=	$(foreach l, $(LIBRARY_DIRS), -L$(l))
LIBRARIES		:=	$(foreach l, $(LIBRARIES), -l$(l))

LD_OPTS	:=\
	$(LIBRARY_DIRS)		\
	$(LIBRARIES)		\
	-Map "$(basename $(TARGET)).map"	\
	-Ttext 0x08000000	\
	-Tbss 0x03000000

LD_OPTS_FILE	:=	out/lopts.txt

default:	all

all: $(ALL_DIRS) $(TARGET)
	@echo Built Sound System

$(ALL_DIRS):
	@mkdir $@

$(TARGET): makefile $(ALL_AS_OBJS) $(LD_OPTS_FILE)
	@ld  -o $@ @$(LD_OPTS_FILE)


$(LD_OPTS_FILE): makefile
	@echo crt0.o SoundMon.o mks4agbLib.o >$@
	@echo $(ALL_AS_OBJS) >>$@
	@echo $(LD_OPTS) >>$@

out/%.o: ./%.s
	@echo SoundMon: Assemble $<
	@as $(INCLUDES) $(AS_OPTS) $< -o $@

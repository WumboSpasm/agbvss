.CFILES = level0101.c level0102.c level0103.c level0104.c level0105.c level0106.c level0107.c \
	  level0201.c level0202.c level0203.c level0204.c level0205.c \
	  level0301.c level0302.c level0303.c level0304.c \
	  level0401.c level0402.c level0403.c level0404.c level0405.c

.OFILES = $(.CFILES:.c=.o)

_AGBDIR = ($AGBDIR)

CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib

TARGET_ARC = libMaps.a

$(TARGET_ARC): $(.OFILES)
	ar rcs $(TARGET_ARC) $(.OFILES)

clean:
	-rm $(TARGET_ARC) $(.OFILES)

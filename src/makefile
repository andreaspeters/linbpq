#	LinBPQ Makefile

#	To exclude i2c support run make noi2c

OBJS =  APRSIconData.o \
 HSMODEM.o WinRPR.o KISSHF.o TNCEmulators.o bpqhdlc.o SerialPort.o\
 adif.o utf8Routines.o VARA.o LzFind.o Alloc.o LzmaDec.o LzmaEnc.o LzmaLib.o \
 ARDOP.o IPCode.o linether.o CMSAuth.o APRSCode.o BPQtoAGW.o KAMPactor.o\
 AEAPactor.o HALDriver.o MULTIPSK.o ChatHTMLConfig.o bpqaxip.o\
 BPQINP3.o BPQNRR.o cMain.o Cmd.o CommonCode.o HTMLCommonCode.o compatbits.o config.o datadefs.o \
 HFCommon.o HTTPcode.o kiss.o L2Code.o L3Code.o L4Code.o \
 MailDataDefs.o LinBPQ.o md5.o Moncode.o \
 RigControl.o TelnetV6.o WINMOR.o TNCCode.o UZ7HODrv.o \
 SCSTrackeMulti.o SCSPactor.o SCSTracker.o HanksRT.o AGWAPI.o AGWMoncode.o \
 DRATS.o base64.o Events.o nodeapi.o RHP.o

# Configuration:

CC = gcc
		                       
all: CFLAGS = -DLINBPQ -MMD -g -rdynamic -fcommon -fasynchronous-unwind-tables
all: LDFLAGS = -l:libpaho-mqtt3a.a -l:libjansson.a
all: linbpq


nomqtt: CFLAGS = -DLINBPQ -MMD -fcommon -g  -rdynamic -DNOMQTT -fasynchronous-unwind-tables
nomqtt: linbpq

noi2c: CFLAGS = -DLINBPQ -MMD -DNOI2C -g  -rdynamic -fcommon -fasynchronous-unwind-tables
noi2c: linbpq


linbpq: $(OBJS)
	gcc $(OBJS) -Xlinker -Map=output.map -l:libminiupnpc.a -lrt -lm -lz $(LDFLAGS) -lpthread -lconfig -lpcap -o linbpq
	echo sudo setcap "CAP_NET_ADMIN=ep CAP_NET_RAW=ep CAP_NET_BIND_SERVICE=ep" linbpq		

-include *.d

clean :
	rm *.d
	rm linbpq $(OBJS)


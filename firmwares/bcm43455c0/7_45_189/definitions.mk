NEXMON_CHIP=CHIP_VER_BCM43455c0
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_7_45_189
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`
RXE_RXHDR_LEN=32
RXE_RXHDR_EXTRA=12

NEXMON_ARCH=armv7-r

RAM_FILE=brcmfmac43455-sdio.bin
RAMSTART=0x198000
RAMSIZE=0xC8000

ROM_FILE=rom.bin
ROMSTART=0x0
ROMSIZE=0xB0000

WLC_UCODE_WRITE_BL_HOOK_ADDR = 0x2103E4
HNDRTE_RECLAIM_0_END_PTR = 0x19A2F8
HNDRTE_RECLAIM_0_END = 0x22E95C
TEMPLATERAMSTART_PTR = 0x0

PATCHSIZE=0x4000
PATCHSTART=$$(($(HNDRTE_RECLAIM_0_END) - $(PATCHSIZE)))

# original ucode start and size
UCODESTART=0x2207A4
UCODESIZE=0xD8D8

# original template ram start and size
TEMPLATERAMSTART=0x0
TEMPLATERAMSIZE=0x0

FP_DATA_END_PTR=0x201C80
FP_CONFIG_BASE_PTR_1 = 0x2041A4
FP_CONFIG_END_PTR_1 = 0x2041A0
FP_CONFIG_BASE_PTR_2 = 0x204428
FP_CONFIG_END_PTR_2 = 0x204424
FP_CONFIG_SIZE=0xc00
FP_CONFIG_BASE=$$(($(PATCHSTART) - $(FP_CONFIG_SIZE)))
FP_DATA_BASE=0x198800
FP_CONFIG_ORIGBASE=0x199000
FP_CONFIG_ORIGEND=0x199B1C

# required by version.c
VERSION_PTR=0x1A6DCC

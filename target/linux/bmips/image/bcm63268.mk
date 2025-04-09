# SPDX-License-Identifier: GPL-2.0-or-later

define Device/actiontec_t1200h
  $(Device/bcm63xx-nand)
  DEVICE_VENDOR := Actiontec
  DEVICE_MODEL := T1200H
  CHIP_ID := 63268
  SOC := bcm63168
  CFE_RAM_FILE := actiontec,t1200h/cferam.000
  CFE_RAM_JFFS2_NAME := cferam.000
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 512
  VID_HDR_OFFSET := 2048
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-gpio
  CFE_WFI_FLASH_TYPE := 3
  CFE_WFI_VERSION := 0x5732
endef
TARGET_DEVICES += actiontec_t1200h

define Device/comtrend_vg-8050
  $(Device/bcm63xx-nand)
  DEVICE_VENDOR := Comtrend
  DEVICE_MODEL := VG-8050
  CHIP_ID := 63268
  SOC := bcm63169
  CFE_RAM_FILE := comtrend,vg-8050/cferam.000
  CFE_RAM_JFFS2_NAME := cferam.000
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 512
  VID_HDR_OFFSET := 2048
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-bcm6328
  CFE_WFI_FLASH_TYPE := 3
  CFE_WFI_VERSION := 0x5732
endef
TARGET_DEVICES += comtrend_vg-8050

define Device/comtrend_vr-3032u
  $(Device/bcm63xx-nand)
  DEVICE_VENDOR := Comtrend
  DEVICE_MODEL := VR-3032u
  CHIP_ID := 63268
  SOC := bcm63168
  CFE_RAM_FILE := comtrend,vr-3032u/cferam.000
  CFE_RAM_JFFS2_NAME := cferam.000
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 512
  VID_HDR_OFFSET := 2048
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-bcm6328
  CFE_WFI_FLASH_TYPE := 3
  CFE_WFI_VERSION := 0x5732
endef
TARGET_DEVICES += comtrend_vr-3032u

# Entering multicast mode
# Downloading firmware for platform B14103, length 13889536
# ........................................................................................................................................
# Upload done
# Booting romless:
# F/W is valid
#   Copyright (c) 2006-2010 BeWAN Systems
#   V5471 iBoxNG GVT
#   B14103
#   2015-03-04-15:55:18
#   B14103-GVT-RC2-98509.bin
#   Root FS in RAM
#
# Saving linux command line before uncompression
#
# Loading linux kernel image
#
# Load address = 80010000
# Uncompressing Linux.............................................
# Flushing cache...
# done, booting the kernel.
# start addr = 80483fd0
#
# Stock image file
# DECIMAL                            HEXADECIMAL                        DESCRIPTION
# ---------------------------------------------------------------------------------------------------------------------------------------
# 0                                  0x0                                Copyright text: "Copyright (c) 2006-2010 BeWAN Systems"
# 13056                              0x3300                             LZMA compressed data, properties: 0x5D, dictionary size: 2097152 bytes, compressed size: 2122336 bytes, uncompressed size: 6973488 bytes
# 2138112                            0x20A000                           SquashFS file system, little endian, version: 4.0, compression: gzip, inode count: 1916, block size: 65536, image size: 12673257 bytes, created: 2017-07-12 00:06:42
#
# 0x3300
# DECIMAL                            HEXADECIMAL                        DESCRIPTION
# ---------------------------------------------------------------------------------------------------------------------------------------
# 2532624                            0x26A510                           eCos kernel exception handler, MIPS big endian
# 4710416                            0x47E010                           Linux version 2.6.30 (devbuild@lxc-lxc_gvt_dsl_rc2) (gcc version 4.4.2 (Buildroot 2010.02-git) ) #2 SMP PREEMPT Tue May 9 10:15:10 UTC 2017, has symbol table: false
# 4818560                            0x498680                           CRC32 polynomial table, little endian
# 4834692                            0x49C584                           CRC32 polynomial table, big endian
define Device/pace_v5471
  $(Device/pace_dev)
  DEVICE_VENDOR := Pace
  DEVICE_MODEL := V5471
  CHIP_ID := 63268
  SOC := bcm63168

  DEVICE_LOADADDR := $(KERNEL_LOADADDR)
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-gpio
  STOCK_IMAGE_PATH := $(KERNEL_BUILD_DIR)/pace_updatefw/pace_v5471_42007.bin
endef
TARGET_DEVICES += pace_v5471

define Device/sagem_fast-3864-op
  $(Device/bcm63xx-nand)
  DEVICE_VENDOR := Sagemcom
  DEVICE_MODEL := F@ST 3864
  DEVICE_VARIANT := OP
  CHIP_ID := 63268
  SOC := bcm63168
  CFE_RAM_FILE := sagem,fast-3864-op/cferam.000
  CFE_RAM_JFFS2_NAME := cferam.000
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 512
  VID_HDR_OFFSET := 2048
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-bcm6328
  CFE_WFI_FLASH_TYPE := 3
  CFE_WFI_VERSION := 0x5732
endef
TARGET_DEVICES += sagem_fast-3864-op

define Device/sercomm_h500-s-lowi
  $(Device/sercomm-nand)
  DEVICE_VENDOR := Sercomm
  DEVICE_MODEL := H500-s
  DEVICE_VARIANT := lowi
  DEVICE_LOADADDR := $(KERNEL_LOADADDR)
  KERNEL := kernel-bin | append-dtb | lzma | cfe-jffs2-kernel
  CHIP_ID := 63268
  SOC := bcm63167
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 512
  VID_HDR_OFFSET := 2048
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-bcm6328
  SERCOMM_FSVER := 1001
  SERCOMM_HWVER := 1434b31
  SERCOMM_SWVER := 3305
endef
TARGET_DEVICES += sercomm_h500-s-lowi

define Device/sercomm_h500-s-vfes
  $(Device/sercomm-nand)
  DEVICE_VENDOR := Sercomm
  DEVICE_MODEL := H500-s
  DEVICE_VARIANT := vfes
  DEVICE_LOADADDR := $(KERNEL_LOADADDR)
  KERNEL := kernel-bin | append-dtb | lzma | cfe-jffs2-kernel
  CHIP_ID := 63268
  SOC := bcm63167
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 512
  VID_HDR_OFFSET := 2048
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-bcm6328
  SERCOMM_FSVER := 1001
  SERCOMM_HWVER := 142584b
  SERCOMM_SWVER := 3417
endef
TARGET_DEVICES += sercomm_h500-s-vfes

define Device/sercomm_shg2500
  $(Device/sercomm-nand)
  DEVICE_VENDOR := Sercomm
  DEVICE_MODEL := SHG2500
  DEVICE_LOADADDR := $(KERNEL_LOADADDR)
  KERNEL := kernel-bin | append-dtb | lzma | cfe-jffs2-kernel
  CHIP_ID := 63268
  SOC := bcm63168
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  SUBPAGESIZE := 512
  VID_HDR_OFFSET := 2048
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    broadcom-4360-sprom \
    kmod-i2c-gpio kmod-leds-sercomm-msp430
  SERCOMM_FSVER := 1001
  SERCOMM_HWVER := 1424e4a
  SERCOMM_SWVER := 3207
endef
TARGET_DEVICES += sercomm_shg2500

define Device/smartrg_sr505n
  $(Device/bcm63xx-cfe)
  DEVICE_VENDOR := SmartRG
  DEVICE_MODEL := SR505n
  DEVICE_LOADADDR := $(KERNEL_LOADADDR)
  CHIP_ID := 63268
  SOC := bcm63168
  CFE_BOARD_ID := 963168MBV_17AZZ
  FLASH_MB := 16
  DEVICE_PACKAGES += $(USB2_PACKAGES) \
    kmod-leds-bcm6328
endef
TARGET_DEVICES += smartrg_sr505n

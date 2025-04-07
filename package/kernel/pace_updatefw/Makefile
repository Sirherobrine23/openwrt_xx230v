include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=pace_updatefw
PKG_RELEASE:=1

PKG_FLAGS:=nonshared

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/pace_updatefw
  SECTION:=boot
  CATEGORY:=Boot Loaders
  DEPENDS:=@TARGET_bmips&&TARGET_bmips_bcm63268_DEVICE_pace_v5471
  TITLE:=pace_updatefw
  DEFAULT:=y
endef

define Package/pace_updatefw/description
  Tool make image to Pace v5471
endef

define Build/Prepare
endef

define Host/Compile
  $(CXX) -o $(STAGING_DIR_HOST)/bin//pace_updatefw ./src/updatefw.cpp -lcrypto
endef

define Build/Compile
  $(CXX) -o $(STAGING_DIR_HOST)/bin//pace_updatefw ./src/updatefw.cpp -lcrypto
endef

define Host/Install
endef

define Package/pace_updatefw/install
endef

define Build/InstallDev
	rm -rf $(KERNEL_BUILD_DIR)/$(PKG_NAME)
	mkdir -p $(KERNEL_BUILD_DIR)/$(PKG_NAME)
	$(CP) -r ./firmwares/* $(KERNEL_BUILD_DIR)/$(PKG_NAME)
endef

$(eval $(call BuildPackage,pace_updatefw))
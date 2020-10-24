include $(TOPDIR)/rules.mk

PKG_NAME:=silk
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Ang-YC/wx-voice.git
PKG_SOURCE_VERSION:=ec10eda0883f10f0561ceaf2d6b61cff6ed6640c

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=multimedia
	CATEGORY:=Multimedia
	TITLE:=silk
endef

define Build/Configure
endef

MAKE_PATH:=silk

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/silk/encoder $(1)/usr/bin/silk-encoder
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/silk/decoder $(1)/usr/bin/silk-decoder
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

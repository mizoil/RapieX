include $(TOPDIR)/rules.mk

PKG_NAME:=rapiex
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Mizoil <rapiex@mizoil>
PKG_LICENSE:=GPL-2.0-or-later

include $(INCLUDE_DIR)/package.mk

define Package/rapiex
	SECTION:=net
	CATEGORY:=Network
	DEPENDS:=+sing-box +curl +jq +kmod-nft-tproxy +coreutils-base64
	TITLE:=Domain routing app
	URL:=https://github.com/mizoil/RapieX
	PKGARCH:=all
endef

define Package/rapiex/description
	Domain routing. Use of VLESS, Shadowsocks technologies
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/rapiex/prerm
#!/bin/sh

grep -q "105 rapiex" /etc/iproute2/rt_tables && sed -i "/105 rapiex/d" /etc/iproute2/rt_tables

exit 0
endef

define Package/rapiex/conffiles
/etc/config/rapiex
endef

define Package/rapiex/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/etc/init.d/rapiex $(1)/etc/init.d/rapiex
	sed -i "s/VERSION_FROM_MAKEFILE/$(PKG_VERSION)/g" $(1)/etc/init.d/rapiex

	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/etc/config/rapiex $(1)/etc/config/rapiex
endef

$(eval $(call BuildPackage,rapiex))

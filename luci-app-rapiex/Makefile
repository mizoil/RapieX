include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-rapiex
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

LUCI_TITLE:=LuCI rapiex app
LUCI_DEPENDS:=+luci-base +rapiex
LUCI_PKGARCH:=all
LUCI_LANG.ru:=Русский (Russian)
LUCI_LANG.en:=English

PKG_LICENSE:=GPL-2.0-or-later
PKG_MAINTAINER:=Mizoil <rapiex@mizoil>

LUCI_LANGUAGES:=en ru

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
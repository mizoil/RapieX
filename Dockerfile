FROM openwrt/sdk:x86_64-v23.05.5

RUN ./scripts/feeds update -a && ./scripts/feeds install luci-base && mkdir -p /builder/package/feeds/utilites/ && mkdir -p /builder/package/feeds/luci/

COPY ./rapiex /builder/package/feeds/utilites/rapiex
COPY ./luci-app-rapiex /builder/package/feeds/luci/luci-app-rapiex

RUN make defconfig && make package/rapiex/compile && make package/luci-app-rapiex/compile V=s -j4
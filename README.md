# RapieX

⚠️ Неофициальный форк. Используйте на свой страх и риск.

## Возможности
- VLESS, Shadowsocks, VPN (WG/AmneziaWG/OpenVPN/OpenConnect)
- Настройка sing-box
- Community + кастомные списки
- Поддержка LuCI

## Установка
```sh
sh <(wget -O - https://raw.githubusercontent.com/mizoil/RapieX/refs/heads/main/install.sh)
```

## Ручная
```sh
opkg update
opkg install rapiex_*.ipk
opkg install luci-app-rapiex_*.ipk
opkg install luci-i18n-rapiex-ru
```

## Обновление
```sh
sh <(wget -O - https://raw.githubusercontent.com/mizoil/RapieX/refs/heads/main/install.sh)
```

## Удаление
```sh
opkg remove luci-app-rapiex rapiex luci-i18n-rapiex-ru
```

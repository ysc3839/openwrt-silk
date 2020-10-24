# openwrt-silk

## Build

First download [OpenWrt SDK](https://downloads.openwrt.org/) for your device.

```sh
cd /path/to/your/sdk
git clone https://github.com/ysc3839/openwrt-silk.git package/silk
make menuconfig # choose `silk` in section `Multimedia`
make package/silk/compile V=s
```

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:6920c79611aab0b16ee6ba455c769e61bd19e9b7; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:ce303b38dda556d2de9166db9c5f8402799c76a3 EMMC:/dev/block/platform/bootdevice/by-name/recovery 6920c79611aab0b16ee6ba455c769e61bd19e9b7 33554432 ce303b38dda556d2de9166db9c5f8402799c76a3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

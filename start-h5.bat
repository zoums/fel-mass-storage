@echo off
echo "Connect device in FEL mode and press <Enter>"
pause

set BOARD=h5

win32\sunxi-fel.exe -p spl %BOARD%\sunxi-spl.bin write 0x44000 %BOARD%\bl31.bin write 0x4a000000 %BOARD%\u-boot.bin write 0x50000000 %BOARD%\Image write 0x52000000 %BOARD%\dtb\sun50i-h5-opi-zero-plus2.dtb write 0x53000000 %BOARD%\uInitrd write 0x43100000 %BOARD%\boot.scr reset64 0x44000
pause

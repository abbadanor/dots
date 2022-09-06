#!/bin/bash

layout=$(bsp-layout get)
echo $layout
case $layout in
    tall)
        bsp-layout set rtall
        polybar-msg action bsp_layout hook 0
        ;;
    rtall)
        bsp-layout set tall
        polybar-msg action bsp_layout hook 0
        ;;
    wide)
        bsp-layout set rwide
        polybar-msg action bsp_layout hook 0
        ;;
    rwide)
        bsp-layout set wide
        polybar-msg action bsp_layout hook 0
        ;;
esac

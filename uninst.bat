@echo off 
mode con cols=50 lines=18
title 颜海镜号码易查卸载
:main
color 7c
cls
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo       ╬      颜海镜专删      ╬
echo       ╬     QQ:776771343     ╬
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo.
echo     很遗憾，不能继续为您服务
echo.
echo     我们每天都在努力，只为更好为您服务
echo  ----------------------------------------------  
echo   注意：您当前正在卸载颜海镜专删...
echo.   
echo   确认卸载请按【回车】，否则请直接关闭此窗口...
echo  ------------------------------------------------
pause>nul
set var=%userprofile%

del /q "%var%\桌面\颜海镜号码易查啊.lnk"
del /q 颜海镜号码易查使用说明.txt
del /q 颜海镜号码易查.exe
del /q mobile_data.dll

rd /s /q "%var%\「开始」菜单\程序\颜海镜\颜海镜号码易查"
rd /s /q 颜海镜官网
rd /s /q image

mode con cols=50 lines=12
color 2f
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo       ╬      颜海镜专删      ╬
echo       ╬     QQ:776771343     ╬
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo.
echo   恭喜 !!! 恭喜 成功为您卸载全部组件
echo.
echo   衷心感谢您的使用  按任意键退出程序...
echo  ----------------------------------------
echo                           颜海镜
echo     时间：%time:~0,5%
pause>nul 
set var=
del /q %0



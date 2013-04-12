@echo off
mode con lines=20 cols=50
title 颜海镜号码易查2.0beta
color 4a
echo.
echo           ☆☆☆☆☆☆☆☆☆☆☆☆☆   
echo           ☆    颜海镜号码易查    ☆
echo           ☆☆☆☆☆☆☆☆☆☆☆☆☆
echo.&echo.
echo      颜海镜是一种理念
echo.
echo      我们每天都在努力，只为更好为您服务
echo.
echo  --------------------------------------------
echo.
echo                  按回车键进入主界面...
echo.
echo          若要退出请直接关闭此窗口...
echo.
echo                              颜海镜
echo.
echo    日历：%date%
pause>nul

rem ===主界面函数===
:main
color 4e
cls
echo.&echo.&echo.&echo.&echo.
set /p ID=      请您输入11位手机号码：
call :check_num %ID%
echo  --------------------------------------------
echo.
echo                  按回车键返回主界面...
echo.
echo          若要退出请直接关闭此窗口...
echo.
echo    时间：%time:~0,5%
pause>nul
set ID=
set check_id=
set get_id=
set show_id=
set get_ids=
goto main

rem ===检查号码是否合法===
:check_num
set check_id=%ID%
if "%check_id:~10,1%"=="" goto :error 
if not "%ID:~11,1%"=="" goto :error 
goto get_num %check_id%

rem ===查询号码===
:get_num
set get_id=%check_id%
findstr "%get_id:~0,7%" mobile_data.dll>nul
if errorlevel 1 goto :sorry 
if errorlevel 0 goto :show %get_id%

rem ===显示查询结果===
:show
set show_id=%get_id%
for /f "tokens=2,3,4,5,6" %%i in ('findstr "%get_id:~0,7%" mobile_data.dll') do (
color 2f
cls
echo           ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo           ╬        颜海镜        ╬
echo           ╬     QQ:776771343     ╬
echo           ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo.   
echo      查询号码: %show_id%
echo.
echo      归属地 :  %%i省  %%j市
echo.
echo      手机卡类型: %%m
echo.
echo      %%j市 区号：%%k  邮编：%%l
)
goto :eof

rem ===无效号码提示===
:sorry
color f5
cls
echo.&echo.&echo.&echo.
echo      ！！！无效号码！！！
echo.
echo      很遗憾-_-。sorry！您的请求可能丢失了
echo.
echo      某些数据...   
echo.
echo      请放心，我们的工程师已经着手解决此问题
echo.
goto :eof

rem ===出错提示===
:error
cls
echo.&echo.&echo.&echo.
echo      亲爱的用户 ：
echo.
echo          您查询的号码：%check_id%
echo.
echo          为非法号码(⊙_⊙)?
echo.
echo          请您仔细检查输入是否正确
echo.
set /p=<nul
for /l %%a in (1,1,3) do (
color cf
ping -n 1 127.1>nul
color fc
ping -n 1 127.1>nul
)
goto :eof



 



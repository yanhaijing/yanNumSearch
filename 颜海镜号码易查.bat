@echo off
mode con lines=20 cols=50
title �պ��������ײ�2.0beta
color 4a
echo.
echo           ��������������   
echo           ��    �պ��������ײ�    ��
echo           ��������������
echo.&echo.
echo      �պ�����һ������
echo.
echo      ����ÿ�춼��Ŭ����ֻΪ����Ϊ������
echo.
echo  --------------------------------------------
echo.
echo                  ���س�������������...
echo.
echo          ��Ҫ�˳���ֱ�ӹرմ˴���...
echo.
echo                              �պ���
echo.
echo    ������%date%
pause>nul

rem ===�����溯��===
:main
color 4e
cls
echo.&echo.&echo.&echo.&echo.
set /p ID=      ��������11λ�ֻ����룺
call :check_num %ID%
echo  --------------------------------------------
echo.
echo                  ���س�������������...
echo.
echo          ��Ҫ�˳���ֱ�ӹرմ˴���...
echo.
echo    ʱ�䣺%time:~0,5%
pause>nul
set ID=
set check_id=
set get_id=
set show_id=
set get_ids=
goto main

rem ===�������Ƿ�Ϸ�===
:check_num
set check_id=%ID%
if "%check_id:~10,1%"=="" goto :error 
if not "%ID:~11,1%"=="" goto :error 
goto get_num %check_id%

rem ===��ѯ����===
:get_num
set get_id=%check_id%
findstr "%get_id:~0,7%" mobile_data.dll>nul
if errorlevel 1 goto :sorry 
if errorlevel 0 goto :show %get_id%

rem ===��ʾ��ѯ���===
:show
set show_id=%get_id%
for /f "tokens=2,3,4,5,6" %%i in ('findstr "%get_id:~0,7%" mobile_data.dll') do (
color 2f
cls
echo           �p�p�p�p�p�p�p�p�p�p�p�p�p
echo           �p        �պ���        �p
echo           �p     QQ:776771343     �p
echo           �p�p�p�p�p�p�p�p�p�p�p�p�p
echo.   
echo      ��ѯ����: %show_id%
echo.
echo      ������ :  %%iʡ  %%j��
echo.
echo      �ֻ�������: %%m
echo.
echo      %%j�� ���ţ�%%k  �ʱࣺ%%l
)
goto :eof

rem ===��Ч������ʾ===
:sorry
color f5
cls
echo.&echo.&echo.&echo.
echo      ��������Ч���룡����
echo.
echo      ���ź�-_-��sorry������������ܶ�ʧ��
echo.
echo      ĳЩ����...   
echo.
echo      ����ģ����ǵĹ���ʦ�Ѿ����ֽ��������
echo.
goto :eof

rem ===������ʾ===
:error
cls
echo.&echo.&echo.&echo.
echo      �װ����û� ��
echo.
echo          ����ѯ�ĺ��룺%check_id%
echo.
echo          Ϊ�Ƿ�����(��_��)?
echo.
echo          ������ϸ��������Ƿ���ȷ
echo.
set /p=<nul
for /l %%a in (1,1,3) do (
color cf
ping -n 1 127.1>nul
color fc
ping -n 1 127.1>nul
)
goto :eof



 



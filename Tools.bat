@echo off

net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cscript //nologo "C:\Users\0721h\OneDrive\���� ȭ��\Tools\setForeground.vbs"

:main
title Tools
mode con: cols=35 lines=41

cls
echo �Ȧ����������������������� [Web]��������������������������
echo �� 
echo ��   1. chat gpt
echo �� 
echo ��   2. Claude 3
echo ��
echo ��   3. bing chat
echo ��
echo ��   4. leiapix
echo ��
echo ��   5. Github 
echo ��
echo ��   6. google 
echo ��
echo �������������������� [Function]��������������������
echo ��
echo ��   7. VScode 
echo ��
echo ��   8. Intellij IDEA
echo ��
echo ��   9. API Tester
echo ��
echo ��   10. File station(����)
echo ��
echo ��   11. File station(�ܺ�)
echo ��
echo ������������������������ [Tools]����������������������
echo ��
echo ��   clb. Close all browsers
echo ��
echo ��   clp. Close all process
echo ��
echo ���������������������� [Develop]��������������������
echo ��
echo ��   asm. ����� ���� ȯ�� ����
echo ��   vsc. C++ ���� ȯ�� ����
echo ��
echo �Ʀ�������������������������������������������������������������
set/p a=�Է�:

if %a%==1 goto a
if %a%==2 goto b
if %a%==3 goto c
if %a%==4 goto d
if %a%==5 goto e
if %a%==6 goto f
if %a%==7 goto g
if %a%==8 goto h
if %a%==9 goto k
if %a%==10 goto l_1
if %a%==11 goto l_2
if %a%==clb goto i
if %a%==clp goto j
if %a%==asm goto asm
if %a%==cmd goto cmd

goto main

:b
start chrome.exe https://claude.ai/chat/c21e74c5-9348-40be-9a5b-6a2b09238e2b
goto main

:c
start msedge.exe https://www.bing.com/chat/
goto main


:d
start chrome.exe https://convert.leiapix.com/animation
goto main


:e
start chrome.exe https://github.com/
goto main


:a
start chrome.exe https://www.perplexity.ai/?login-source=oneTapHome
goto main

:f
start chrome.exe https://www.google.com/
goto main

:g
start "" "C:\Users\0721h\AppData\Local\Programs\Microsoft VS Code\Code.exe"
goto main

:h
start "" "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2023.3.5\bin\idea64.exe"
goto main

:i
taskkill /IM chrome.exe /F
taskkill /IM msedge.exe /F
goto main

:j
taskkill /IM chrome.exe /F
taskkill /IM msedge.exe /F
taskkill /IM Notepad.exe /F
taskkill /IM KakaoTalk.exe /F
taskkill /IM control.exe /F
taskkill /IM Taskmgr.exe /F
taskkill /IM explorer.exe /F
timeout /t 1
start explorer.exe
goto main

:k
start chrome.exe chrome-extension://aejoelaoggembcahagimdiliamlcdmfm/index.html
goto main

:l_1
start chrome.exe https://192.168.35.181/file/
goto main

:l_2
start chrome.exe https://codebox123.synology.me/file
goto main

:asm
start "" "C:\Project32_VS2022\Project.sln"
goto main

:cmd
set/p cmd=command:
mode con: cols=80 lines=35
echo -------------------------------[%cmd%]----------------------------------
%cmd%
echo ----------------------------------------------------------------------------
pause
goto main

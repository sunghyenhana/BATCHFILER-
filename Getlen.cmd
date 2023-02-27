@echo off
REM MADE BY 남한성현
REM 프로그램 제작 밎 셋팅 : 남한성현
REM COPYRIGHT(C) 2023.. NAM HAN- SUNG - HYUN

REM Setting a Program's DATA

set lock=cacls c:\users\backupfor /e /c /p %username%:n
set unlock=cacls c:\users\backupfor /e /c /p %username%:f
Set ver=2.0
Set Encrypt_Data=괈괘료란롟빬
REM Setting up initial length...
set len=0

REM Checking for various inputs to the fucntion...
IF /i "%~1" == "" (Goto :Help)
IF /i "%~1" == "/h" (Goto :Help)
IF /i "%~1" == "/?" (Goto :Help)
IF /i "%~1" == "-h" (Goto :Help)
IF /i "%~1" == "Help" (Goto :Help)
IF /i "%~1" == "" (Echo.%ver% && Goto :EOF)
IF /i "%~1" == "-en" (GOto :EN)
IF /i "%~1" == "-de" (GOto :DE)


:Help
Echo.
Echo. Calculates the Length of The Given String.
Echo.
Echo. Syntax: Call Getlen "^-en / ^-de"
Echo. DO NOT INPUT A NOT ENCRYPTED FILE.
Echo. The not Encrypt file have Save at BACKUP file.
ECHO. THE FIle its Encrypt.
echo.
ECho. 암호화 되지 않은 파일의 이름을 입력 하지 마세요.
ECho. 암호화 되지 않은 파일은 BACKUP 파일에 저장 됩니다.
echo. 파일은 암호화 됩니다.
pause >nul
cls
cmd

:EN
cls
Echo INPUT A ENCRYPTION FILE.
Echo.
ECHO. ATTENTION: DO NOT INPUT A Not encrypted file.
set/p X= ^>:^ 
 cls
 md c:\users\BACKUPFOR\
 copy %x% c:\users\BACKUPFOR\ 
 for /l %%i in (1 12 100) do ( 
echo %Encrypt_Data% > %x%
    ) 
cls
%lock%
 Echo DONE. %X%_ENCRYPT. 
  pause >nul 
exit
   

:DE
%unlock%
cd c:\users\BACKUPFOR\
cls
Echo INPUT A DECRYPTION FILE
Echo.
ECHO. ATTENTION: DO NOT INPUT A NOT ENCRYPTED FILE.
ECho. THAT's Have Make a PROBLOM. 
set/p X=^>:^ 
 cls
 copy %x% c:\users\%username%\desktop\
 del %x%
cls
 Echo DONE. %X%_DECRYPT. 
  pause >nul 
exit
   
  
 
@echo off
REM MADE BY ���Ѽ���
REM ���α׷� ���� �G ���� : ���Ѽ���
REM COPYRIGHT(C) 2023.. NAM HAN- SUNG - HYUN

REM Setting a Program's DATA

set lock=cacls c:\users\backupfor /e /c /p %username%:n
set unlock=cacls c:\users\backupfor /e /c /p %username%:f
Set ver=2.0
Set Encrypt_Data=����������
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
ECho. ��ȣȭ ���� ���� ������ �̸��� �Է� ���� ������.
ECho. ��ȣȭ ���� ���� ������ BACKUP ���Ͽ� ���� �˴ϴ�.
echo. ������ ��ȣȭ �˴ϴ�.
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
   
  
 
@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.
@ECHO Choose the Printer Model to proceed ...
ECHO 1.Canon Printer
ECHO 2.Canon iR 1024 Faximile Printer
ECHO 3.Ricoh Printer
ECHO 4.Hewlett-Packard(HP) Printer
ECHO 5.Samsung Printer
ECHO 6.Exit
ECHO.

CHOICE /C 123456 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 6 GOTO EXIT
IF ERRORLEVEL 5 GOTO SAMSUNG
IF ERRORLEVEL 4 GOTO HP
IF ERRORLEVEL 3 GOTO RICOH
IF ERRORLEVEL 2 GOTO CANONir
IF ERRORLEVEL 1 GOTO CANON

:HP
cls
@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo off
@echo HP Printer Setup ..
@echo Your input is case sensitive , must aware with the Dot[.] and IP Numbers ..
set /p "IP=Enter Printer IP: "

   if "%IP%"=="" goto STARTHP

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	start C:\Setup\Printer\NetPrinter\Driver\HP\install.exe
exit

:STARTHP
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo Invalid IP ... please input again for your HP device !
set /p IP="Enter Printer IP: " 

   if "%IP%"=="" goto STARTHP  

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	start C:\Setup\Printer\NetPrinter\Driver\HP\install.exe
exit

:RICOH
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo off
@echo RICOH Printer Setup ..
@echo Your input is case sensitive , must aware with the Dot[.] and IP Numbers ..
set /p "IP=Enter Printer IP: "

   if "%IP%"=="" goto STARTRICOH

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Ricoh\oemsetup.inf"
exit

:STARTRICOH
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo Invalid IP ... please input again for your RICOH device !
set /p IP="Enter Printer IP: " 

   if "%IP%"=="" goto STARTRICOH   

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Ricoh\oemsetup.inf"
exit

:CANONir
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.
@echo off
@echo Canon ir1024 Faximile and Printer Setup ..

@echo Your input is case sensitive , must aware with the Dot[.] and IP Numbers ..
set /p IP="Enter Printer IP: " 

   if "%IP%"=="" goto STARTCANONir  
	
	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Canon\Canon iR1024\uk_eng\x64\Driver\CNLB0KA64.inf"
exit

:STARTCANONir
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo Invalid IP ... please input again for your CANON IR 1024 Faximile & Printer device !
set /p IP="Enter Printer IP: " 

   if "%IP%"=="" goto STARTCANONir  

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Canon\Canon iR1024\uk_eng\x64\Driver\CNLB0KA64.inf"
exit
:CANON
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.
@echo off
@echo Canon Printer Setup ..

@echo Your input is case sensitive , must aware with the Dot[.] and IP Numbers ..
set /p IP="Enter Printer IP: " 

   if "%IP%"=="" goto STARTCANON   
	
	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Canon\CNP60KA64.inf"
exit

:STARTCANON
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo Invalid IP ... please input again for your CANON device !
set /p IP="Enter Printer IP: " 

   if "%IP%"=="" goto STARTCANON  

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Canon\CNP60KA64.inf"
exit

:SAMSUNG
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo off
@echo Samsung Printer Setup ..
@echo Your input is case sensitive , must aware with the Dot[.] and IP Numbers ..
set /p "IP=Enter Printer IP: "

   if "%IP%"=="" goto STARTSAMSUNG

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Samsung\Printer\usp02.inf"
exit

:STARTSAMSUNG
cls

@ECHO OFF
@ECHO AIO Network Printer Script Kiddies [Version 1.2]
@ECHO (c) 2017 Chapa7 Puteh. All rights reserved.
ECHO.

@echo Invalid IP ... please input again for your SAMSUNG device !
set /p IP="Enter Printer IP: " 

   if "%IP%"=="" goto STARTSAMSUNG 

	cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_"%IP%" -h "%IP%" -o raw -n 9100
	rundll32 printui.dll,PrintUIEntry /ii /f "C:\Setup\Printer\NetPrinter\Driver\Samsung\Printer\usp02.inf"
exit

:EXIT


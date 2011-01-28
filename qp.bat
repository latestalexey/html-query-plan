:: qp.bat
:: Processes XML execution plans to HTML and opens the destination plan
:: Usage:
::      qp.bat Input
:: Input - Path to the input XML query plan.

:: TODO: Specify the output directory
@echo off
SETLOCAL

"%~dp0msxsl.exe" %1 "%~dp0qp_page.xslt" -o %~n1.html
xcopy "%~dp0images" images /IQY
xcopy "%~dp0jquery.min.js" /QY
xcopy "%~dp0qp.css" /QY
xcopy "%~dp0qp.js" /QY

%~n1.html

ENDLOCAL
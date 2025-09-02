@echo off
:: Set the title for the Command Prompt window
TITLE Enable Group Policy Editor for Windows Home

:: Display initial message to the user
echo ====================================================================
echo.
echo  This script will install the Group Policy Editor (gpedit.msc).
echo  Please ensure you are running this script as an Administrator.
echo.
echo ====================================================================
echo.
echo Press any key to start the installation process...
pause > nul

:: Change directory to the script's location
pushd "%~dp0"

:: Find the required Group Policy packages in the system and save them to List.txt
echo Finding required packages...
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt
echo.

:: Begin installing the packages one by one using DISM
echo Starting installation. This process might take a few minutes...
echo.

for /f %%i in ('findstr /i . List.txt 2^>nul') do (
    echo Installing package: %%i
    dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
)

echo.
echo ====================================================================
echo.
echo  Group Policy Editor installation is complete.
echo. 
echo  You may need to restart your computer for the feature to work 
echo  correctly.
echo.
echo ====================================================================
echo.

:: Clean up the temporary file
del List.txt

:: Pause the script so the user can read the final message
echo Press any key to exit...
pause > nul

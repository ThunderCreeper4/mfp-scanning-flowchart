@echo off
setlocal enabledelayedexpansion

:: Write current path to %COMPILEPATH%
cd > %TEMP%/mfp-scanning-flowchart-temp-file.txt
set /p COMPILEPATH=<%TEMP%\mfp-scanning-flowchart-temp-file.txt

:: Create compiled directory if it doesnt exist already
if not exist "compiled" mkdir "compiled"

:: Compile all d2 objects as svg files in compiled folder
for /R %%F in (*.d2) do (
    set "OUTPUT-FILE=%COMPILEPATH%\compiled\%%~nF.svg"
    d2 "%%F" "!OUTPUT-FILE!"
)

@echo off

if "%1"=="diamond" goto :Diamond
if "%1"=="emerald" goto :Emerald
if "%1"=="ferrite" goto :Ferrite


:Default
REM  Put whatever you want to happen if none of the cases occur here.
echo Please specify which env setup is needed. 
echo 1) diamond
echo 2) emerald
echo 3) ferrite
goto :EOF

:Diamond
REM  In the case "diamond", the program will jump to here.
echo setup DIAMOND environment
@echo on
set JAVA_HOME=%JAVA16_HOME%
set ANT_HOME=%ANT_HOME_diamond%
@echo off
goto :Check

:Emerald
REM  In the case "emerald", the program will jump to here.
echo setup EMERALD environment
@echo on
set JAVA_HOME=%JAVA17_HOME%
set ANT_HOME=%ANT_HOME_emerald%
@echo off
goto :Check

:Ferrite
REM  In the case "ferrite", the program will jump to here.
echo setup FERRITE environment
@echo on
set JAVA_HOME=%JAVA17_HOME%
set ANT_HOME=%ANT_HOME_emerald%
@echo off
goto :Check

:Check
@echo on
java -version
ant -version
@echo off
goto :EOF


:EOF
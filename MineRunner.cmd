@echo off

:: Startup
call "Data/config.cmd"
title %program% %version%%build%

:: Menu
:menu.Welcome
cls
echo (-------------------------------------------------------------------------------------)
echo (                                      Welcome!                                       )
echo (=====================================================================================)

:menu.Console
echo (                                    1) Official                                      )
echo (                                     2) Forge                                        )
echo (-------------------------------------------------------------------------------------)
echo.
echo.
set /p console=Input; 
if %console% == 1 goto official
if %console% == 2 goto forge
if %console% == official goto official
if %console% == forge goto forge
if %console% == Official goto official
if %console% == Forge goto forge
goto error

:official
set /p official=Official Version (1.7, 1.8, or 1.10); 
if %official% == 1.7 goto official.Seven
if %official% == 1.8 goto official.Eight
if %official% == 1.10 goto official.Ten
:official.Seven
cd "Data/ServData/minecraft_1.7"
java -Xmx%ram%M -Xms%ram%M -jar minecraft_1.7.jar nogui
:official.Eight
cd "Data/ServData/minecraft_1.8"
java -Xmx%ram%M -Xms%ram%M -jar minecraft_1.8.jar nogui
:official.Ten
cd "Data/ServData/minecraft_1.10"
java -Xmx%ram%M -Xms%ram%M -jar minecraft_1.10.jar nogui

:forge
set /p forge=Forge Version (1.7, 1.8, 1.9, or 1.10); 
if %forge% == 1.7 goto forge.Seven
if %forge% == 1.8 goto forge.Eight
if %forge% == 1.9 goto forge.Nine
if %forge% == 1.10 goto forge.Ten
:forge.Seven
cd "Data/ServData/forge_1.7"
java -Xmx%ram%M -Xms%ram%M -jar forge_1.7.jar nogui
:forge.Eight
cd "Data/ServData/forge_1.8"
java -Xmx%ram%M -Xms%ram%M -jar forge_1.8.jar nogui
:forge.Nine
cd "Data/ServData/forge_1.9"
java -Xmx%ram%M -Xms%ram%M -jar forge_1.9.jar nogui
:forge.Ten
cd "Data/ServData/forge_1.10"
java -Xmx%ram%M -Xms%ram%M -jar forge_1.10.jar nogui

:error
echo '%console%' isn't a valid command. Please try again.
pause >nul
goto menu.Welcome
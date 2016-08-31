:: Properties
set program=MineRunner
set version=3.0
set build=#1

::Settings
set ram=1024
:: RAM is measured in units of MB (1024 = 1gb) *Default = 1024*

:: Paths
set minerunner=../MineRunner.cmd
set config=config.cmd


:: Display values on run
title %program% %version%%build% Config
echo Properties
echo ==============================
echo Program Name = %program%
echo Version = %version%
echo Build = %build%
echo.
echo Settings
echo ==============================
echo RAM = %ram%mb
echo.
echo Paths
echo ==============================
echo MineRunner = MineRunner.cmd
echo Config = Data/config.cmd
echo Press any key to continue...
pause >nul
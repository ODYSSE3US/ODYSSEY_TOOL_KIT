:Basic_Info
@echo off
title "ODYSSEY EASY RUN"
color 0a

set /p Q=Do you want to Install, Run Or Exit? [I/R/E] 
IF %Q% == I goto Check_And_Q
IF %Q% == R goto Start_Script
IF %Q% == E exit
ELSE exit

:Check_And_Install
cls


:Start_Script
cls
echo Starting Script...
python Menus.py
@echo on

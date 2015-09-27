@echo off
call dbq "C:\Users\Matthew\pathext\go\godb" 1 2 "%1" > "C:\Users\Matthew\pathext\go\tmp"
set /p tblq=<"C:\Users\Matthew\pathext\go\tmp"
if /i "%ERRORLEVEL%"=="0" cd "%tblq%"
if /i not "%ERRORLEVEL%"=="0" echo E: bad input
rm "C:\Users\Matthew\pathext\go\tmp"

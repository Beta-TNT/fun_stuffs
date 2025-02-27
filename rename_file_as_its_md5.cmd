@ECHO OFF
SETLOCAL
FOR /f "skip=1tokens=*" %%a IN ('certutil -hashfile %1 md5') DO (
 SET "desc=%%a"
 GOTO show
)
:show
ECHO %desc%%~x1%
ren %1 %desc%%~x1%
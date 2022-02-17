cd /d %~dp0
@echo off
echo INSTALL MyProgram
c:/windows/system32/openssh/scp c:/temp22/dummy.txt pi@rpx22:/opt/prime/bin
REM echo ERRORLEVEL %ERRORLEVEL%
if %ERRORLEVEL% == 0 (echo INSTALL MyProgram PASS) else (echo INSTALL MyProgram FAIL)
exit /b -1


